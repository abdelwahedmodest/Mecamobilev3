-- Règles RLS pour la table Users
ALTER TABLE Users ENABLE ROW LEVEL SECURITY;

-- Politique pour permettre aux utilisateurs authentifiés de voir leur propre profil
CREATE POLICY "Users can view their own profile" ON Users
    FOR SELECT
    USING (auth.uid()::text = user_id::text);

-- Politique pour permettre aux utilisateurs authentifiés de mettre à jour leur propre profil
CREATE POLICY "Users can update their own profile" ON Users
    FOR UPDATE
    USING (auth.uid()::text = user_id::text);

-- Règles RLS pour la table Courses
ALTER TABLE Courses ENABLE ROW LEVEL SECURITY;

-- Politique pour permettre à tous les utilisateurs authentifiés de voir les cours
CREATE POLICY "All authenticated users can view courses" ON Courses
    FOR SELECT
    USING (auth.role() = 'authenticated');

-- Règles RLS pour la table Modules
ALTER TABLE Modules ENABLE ROW LEVEL SECURITY;

-- Politique pour permettre à tous les utilisateurs authentifiés de voir les modules
CREATE POLICY "All authenticated users can view modules" ON Modules
    FOR SELECT
    USING (auth.role() = 'authenticated');

-- Règles RLS pour la table Badges
ALTER TABLE Badges ENABLE ROW LEVEL SECURITY;

-- Politique pour permettre à tous les utilisateurs authentifiés de voir les badges
CREATE POLICY "All authenticated users can view badges" ON Badges
    FOR SELECT
    USING (auth.role() = 'authenticated');

-- Règles RLS pour la table UserCourseEnrollment
ALTER TABLE UserCourseEnrollment ENABLE ROW LEVEL SECURITY;

-- Politique pour permettre aux utilisateurs de voir leurs propres inscriptions
CREATE POLICY "Users can view their own enrollments" ON UserCourseEnrollment
    FOR SELECT
    USING (auth.uid()::text = user_id::text);

-- Politique pour permettre aux utilisateurs de s'inscrire à des cours
CREATE POLICY "Users can enroll in courses" ON UserCourseEnrollment
    FOR INSERT
    WITH CHECK (auth.uid()::text = user_id::text);

-- Politique pour permettre aux utilisateurs de mettre à jour leur progression
CREATE POLICY "Users can update their own progress" ON UserCourseEnrollment
    FOR UPDATE
    USING (auth.uid()::text = user_id::text);

-- Règles RLS pour la table UserBadges
ALTER TABLE UserBadges ENABLE ROW LEVEL SECURITY;

-- Politique pour permettre aux utilisateurs de voir leurs propres badges
CREATE POLICY "Users can view their own badges" ON UserBadges
    FOR SELECT
    USING (auth.uid()::text = user_id::text);

-- Règles RLS pour la table UserModuleProgress
ALTER TABLE UserModuleProgress ENABLE ROW LEVEL SECURITY;

-- Politique pour permettre aux utilisateurs de voir leur propre progression
CREATE POLICY "Users can view their own module progress" ON UserModuleProgress
    FOR SELECT
    USING (auth.uid()::text = user_id::text);

-- Politique pour permettre aux utilisateurs de mettre à jour leur progression
CREATE POLICY "Users can update their own module progress" ON UserModuleProgress
    FOR UPDATE
    USING (auth.uid()::text = user_id::text);

-- Politique pour permettre aux utilisateurs d'ajouter leur progression
CREATE POLICY "Users can insert their own module progress" ON UserModuleProgress
    FOR INSERT
    WITH CHECK (auth.uid()::text = user_id::text);
