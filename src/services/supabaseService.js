import supabase from './supabaseClient';

class SupabaseService {
  // Authentification
  async signUp(email, password, userData) {
    try {
      // Inscription avec Supabase Auth
      const { data: authData, error: authError } = await supabase.auth.signUp({
        email,
        password,
      });

      if (authError) throw authError;

      // Création du profil utilisateur dans la table Users
      const { data: userData, error: userError } = await supabase
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
        .select();

      if (userError) throw userError;

      return { user: authData.user, profile: userData[0] };
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

      // Récupérer les informations du profil utilisateur
      const { data: profile, error: profileError } = await supabase
        .from('Users')
        .select('*')
        .eq('user_id', data.user.id)
        .single();

      if (profileError) throw profileError;

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

      // Récupérer les informations du profil utilisateur
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
  async updateUserProfile(userId, userData) {
    try {
      const { data, error } = await supabase
        .from('Users')
        .update(userData)
        .eq('user_id', userId)
        .select();

      if (error) throw error;
      return data[0];
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

      if (error) throw error;
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

      if (error) throw error;
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
        .select();

      if (error) throw error;
      return data[0];
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
        .select();

      if (error) throw error;
      return data[0];
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
        .select();

      if (error) throw error;
      return data[0];
    } catch (error) {
      console.error('Erreur d\'attribution de badge:', error.message);
      throw error;
    }
  }

  // Gestion de la progression des modules
  async updateModuleProgress(userId, moduleId, completed) {
    try {
      // Vérifier si une entrée existe déjà
      const { data: existingData, error: existingError } = await supabase
        .from('UserModuleProgress')
        .select('*')
        .eq('user_id', userId)
        .eq('module_id', moduleId)
        .maybeSingle();

      if (existingError) throw existingError;

      let result;
      
      if (existingData) {
        // Mettre à jour l'entrée existante
        const { data, error } = await supabase
          .from('UserModuleProgress')
          .update({
            completed: completed,
            completion_date: completed ? new Date() : null,
          })
          .eq('progress_id', existingData.progress_id)
          .select();

        if (error) throw error;
        result = data[0];
      } else {
        // Créer une nouvelle entrée
        const { data, error } = await supabase
          .from('UserModuleProgress')
          .insert([
            {
              user_id: userId,
              module_id: moduleId,
              completed: completed,
              completion_date: completed ? new Date() : null,
            },
          ])
          .select();

        if (error) throw error;
        result = data[0];
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

      if (error) throw error;
      return data;
    } catch (error) {
      console.error('Erreur de récupération de la progression du module:', error.message);
      throw error;
    }
  }

  async getUserProgressForCourse(userId, courseId) {
    try {
      // Récupérer tous les modules du cours
      const { data: modules, error: modulesError } = await supabase
        .from('Modules')
        .select('module_id')
        .eq('course_id', courseId);

      if (modulesError) throw modulesError;

      // Récupérer la progression de l'utilisateur pour ces modules
      const moduleIds = modules.map(module => module.module_id);
      
      const { data: progress, error: progressError } = await supabase
        .from('UserModuleProgress')
        .select('*')
        .eq('user_id', userId)
        .in('module_id', moduleIds);

      if (progressError) throw progressError;

      return {
        totalModules: modules.length,
        completedModules: progress.filter(p => p.completed).length,
        progress: modules.length > 0 ? (progress.filter(p => p.completed).length / modules.length) * 100 : 0,
        details: progress
      };
    } catch (error) {
      console.error('Erreur de récupération de la progression du cours:', error.message);
      throw error;
    }
  }
}

export default new SupabaseService();
