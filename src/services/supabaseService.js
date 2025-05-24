import supabase from './supabaseClient';

class SupabaseService {
  // ... (existing methods for auth, users, courses, modules, enrollments, badges, progress) ...

  // Authentification
  async signUp(email, password, userData) {
    try {
      const { data: authData, error: authError } = await supabase.auth.signUp({
        email,
        password,
      });
      if (authError) throw authError;
      const { data: userProfile, error: userError } = await supabase
        .from('Users')
        .insert([
          {
            user_id: authData.user.id,
            name: userData.name,
            email: email,
            phone: userData.phone || null,
            speciality: userData.speciality || null,
            avatar_url: userData.avatar_url || null,
          },
        ])
        .select()
        .single();
      if (userError) throw userError;
      return { user: authData.user, profile: userProfile };
    } catch (error) {
      console.error('Erreur d\'inscription:', error.message);
      throw error;
    }
  }

  async signIn(email, password) {
    try {
      const { data, error } = await supabase.auth.signInWithPassword({
        email,
        password,
      });
      if (error) throw error;
      const { data: profile, error: profileError } = await supabase
        .from('Users')
        .select('*')
        .eq('user_id', data.user.id)
        .single();
      if (profileError && profileError.code !== 'PGRST116') throw profileError;
      return { user: data.user, profile };
    } catch (error) {
      console.error('Erreur de connexion:', error.message);
      throw error;
    }
  }

  async signOut() {
    try {
      const { error } = await supabase.auth.signOut();
      if (error) throw error;
      return true;
    } catch (error) {
      console.error('Erreur de déconnexion:', error.message);
      throw error;
    }
  }

  async resetPassword(email) {
    try {
      const { error } = await supabase.auth.resetPasswordForEmail(email);
      if (error) throw error;
      return true;
    } catch (error) {
      console.error('Erreur de réinitialisation du mot de passe:', error.message);
      throw error;
    }
  }

  async getCurrentUser() {
    try {
      const { data: { user }, error } = await supabase.auth.getUser();
      if (error) throw error;
      if (!user) return null;
      const { data: profile, error: profileError } = await supabase
        .from('Users')
        .select('*')
        .eq('user_id', user.id)
        .single();
      if (profileError && profileError.code !== 'PGRST116') throw profileError;
      return { user, profile };
    } catch (error) {
      console.error('Erreur de récupération de l\'utilisateur:', error.message);
      return null;
    }
  }

  // Gestion des utilisateurs
  async updateUserProfile(userId, profileData) {
    try {
      const { data, error } = await supabase
        .from('Users')
        .update(profileData)
        .eq('user_id', userId)
        .select()
        .single();
      if (error) throw error;
      return data;
    } catch (error) {
      console.error('Erreur de mise à jour du profil:', error.message);
      throw error;
    }
  }

  async getUserById(userId) {
    try {
      const { data, error } = await supabase
        .from('Users')
        .select('*')
        .eq('user_id', userId)
        .single();
      if (error && error.code !== 'PGRST116') throw error;
      return data;
    } catch (error) {
      console.error('Erreur de récupération de l\'utilisateur:', error.message);
      throw error;
    }
  }

  // Gestion des cours
  async getAllCourses() {
    try {
      const { data, error } = await supabase
        .from('Courses')
        .select('*');
      if (error) throw error;
      return data;
    } catch (error) {
      console.error('Erreur de récupération des cours:', error.message);
      throw error;
    }
  }

  async getCourseById(courseId) {
    try {
      const { data, error } = await supabase
        .from('Courses')
        .select('*, Modules(*)')
        .eq('course_id', courseId)
        .single();
      if (error && error.code !== 'PGRST116') throw error;
      return data;
    } catch (error) {
      console.error('Erreur de récupération du cours:', error.message);
      throw error;
    }
  }

  // Gestion des modules
  async getModulesByCourseId(courseId) {
    try {
      const { data, error } = await supabase
        .from('Modules')
        .select('*')
        .eq('course_id', courseId);
      if (error) throw error;
      return data;
    } catch (error) {
      console.error('Erreur de récupération des modules:', error.message);
      throw error;
    }
  }

  async getModuleById(moduleId) {
    try {
      const { data, error } = await supabase
        .from('Modules')
        .select('*')
        .eq('module_id', moduleId)
        .single();
      if (error && error.code !== 'PGRST116') throw error;
      return data;
    } catch (error) {
      console.error('Erreur de récupération du module:', error.message);
      throw error;
    }
  }

  // ***** NOUVELLE FONCTION POUR LES QUIZ *****
  async getQuizByModuleId(moduleId) {
    try {
      // Assuming a 'Quizzes' table linked to 'Modules' by 'module_id'
      // And each quiz item has 'question', 'options' (array), 'correct_answer'
      const { data, error } = await supabase
        .from('Quizzes') // Adjust table name if different
        .select('*')
        .eq('module_id', moduleId);

      if (error) throw error;
      // Ensure options is an array, Supabase might return JSON string
      return data.map(q => ({
        ...q,
        options: typeof q.options === 'string' ? JSON.parse(q.options) : q.options || []
      }));
    } catch (error) {
      console.error('Erreur de récupération du quiz:', error.message);
      throw error;
    }
  }
  // ***** FIN NOUVELLE FONCTION POUR LES QUIZ *****

  // ***** NOUVELLE FONCTION POUR SAUVEGARDER LES RESULTATS DU QUIZ *****
  async saveQuizResult(userId, moduleId, score, totalQuestions) {
    try {
      // Assuming a 'UserQuizResults' table
      const { data, error } = await supabase
        .from('UserQuizResults') // Adjust table name if different
        .insert([
          {
            user_id: userId,
            module_id: moduleId,
            score: score,
            total_questions: totalQuestions,
            attempted_at: new Date().toISOString(),
          },
        ])
        .select()
        .single();

      if (error) throw error;
      return data;
    } catch (error) {
      console.error('Erreur de sauvegarde du résultat du quiz:', error.message);
      throw error;
    }
  }
  // ***** FIN NOUVELLE FONCTION POUR SAUVEGARDER LES RESULTATS DU QUIZ *****


  // Gestion des inscriptions aux cours
  async enrollUserInCourse(userId, courseId) {
    try {
      const { data, error } = await supabase
        .from('UserCourseEnrollment')
        .insert([
          {
            user_id: userId,
            course_id: courseId,
          },
        ])
        .select()
        .single();
      if (error) throw error;
      return data;
    } catch (error) {
      console.error('Erreur d\'inscription au cours:', error.message);
      throw error;
    }
  }

  async getUserEnrollments(userId) {
    try {
      const { data, error } = await supabase
        .from('UserCourseEnrollment')
        .select('*, Courses(*)')
        .eq('user_id', userId);
      if (error) throw error;
      return data;
    } catch (error) {
      console.error('Erreur de récupération des inscriptions:', error.message);
      throw error;
    }
  }

  async updateCourseProgress(enrollmentId, progress, status) {
    try {
      const { data, error } = await supabase
        .from('UserCourseEnrollment')
        .update({
          progress: progress,
          completion_status: status,
        })
        .eq('enrollment_id', enrollmentId)
        .select()
        .single();
      if (error) throw error;
      return data;
    } catch (error) {
      console.error('Erreur de mise à jour de la progression:', error.message);
      throw error;
    }
  }

  // Gestion des badges
  async getAllBadges() {
    try {
      const { data, error } = await supabase
        .from('Badges')
        .select('*');
      if (error) throw error;
      return data;
    } catch (error) {
      console.error('Erreur de récupération des badges:', error.message);
      throw error;
    }
  }

  async getUserBadges(userId) {
    try {
      const { data, error } = await supabase
        .from('UserBadges')
        .select('*, Badges(*)')
        .eq('user_id', userId);
      if (error) throw error;
      return data;
    } catch (error) {
      console.error('Erreur de récupération des badges utilisateur:', error.message);
      throw error;
    }
  }

  async awardBadgeToUser(userId, badgeId) {
    try {
      const { data, error } = await supabase
        .from('UserBadges')
        .insert([
          {
            user_id: userId,
            badge_id: badgeId,
          },
        ])
        .select()
        .single();
      if (error) throw error;
      return data;
    } catch (error) {
      console.error('Erreur d\'attribution de badge:', error.message);
      throw error;
    }
  }

  // Gestion de la progression des modules
  async updateModuleProgress(userId, moduleId, completed) {
    try {
      const { data: existingData, error: selectError } = await supabase
        .from('UserModuleProgress')
        .select('progress_id')
        .eq('user_id', userId)
        .eq('module_id', moduleId)
        .maybeSingle();
      if (selectError) throw selectError;
      let result;
      const progressData = {
        user_id: userId,
        module_id: moduleId,
        completed: completed,
        completion_date: completed ? new Date().toISOString() : null,
      };
      if (existingData) {
        const { data, error: updateError } = await supabase
          .from('UserModuleProgress')
          .update(progressData)
          .eq('progress_id', existingData.progress_id)
          .select()
          .single();
        if (updateError) throw updateError;
        result = data;
      } else {
        const { data, error: insertError } = await supabase
          .from('UserModuleProgress')
          .insert([progressData])
          .select()
          .single();
        if (insertError) throw insertError;
        result = data;
      }
      return result;
    } catch (error) {
      console.error('Erreur de mise à jour de la progression du module:', error.message);
      throw error;
    }
  }

  async getUserModuleProgress(userId, moduleId) {
    try {
      const { data, error } = await supabase
        .from('UserModuleProgress')
        .select('*')
        .eq('user_id', userId)
        .eq('module_id', moduleId)
        .maybeSingle();
      if (error && error.code !== 'PGRST116') throw error;
      return data;
    } catch (error) {
      console.error('Erreur de récupération de la progression du module:', error.message);
      throw error;
    }
  }

  async getUserProgressForCourse(userId, courseId) {
    try {
      const { data: modules, error: modulesError } = await supabase
        .from('Modules')
        .select('module_id')
        .eq('course_id', courseId);
      if (modulesError) throw modulesError;
      if (!modules || modules.length === 0) {
        return { totalModules: 0, completedModules: 0, progress: 0, details: [] };
      }
      const moduleIds = modules.map(module => module.module_id);
      const { data: progress, error: progressError } = await supabase
        .from('UserModuleProgress')
        .select('*')
        .eq('user_id', userId)
        .in('module_id', moduleIds);
      if (progressError) throw progressError;
      const completedCount = progress ? progress.filter(p => p.completed).length : 0;
      return {
        totalModules: modules.length,
        completedModules: completedCount,
        progress: modules.length > 0 ? (completedCount / modules.length) * 100 : 0,
        details: progress || []
      };
    } catch (error) {
      console.error('Erreur de récupération de la progression du cours:', error.message);
      throw error;
    }
  }
}

export default new SupabaseService();

