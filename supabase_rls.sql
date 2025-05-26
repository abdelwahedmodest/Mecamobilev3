-- Enable Row Level Security on all tables
ALTER TABLE Users ENABLE ROW LEVEL SECURITY;
ALTER TABLE Courses ENABLE ROW LEVEL SECURITY;
ALTER TABLE Modules ENABLE ROW LEVEL SECURITY;
ALTER TABLE Badges ENABLE ROW LEVEL SECURITY;
ALTER TABLE UserCourseEnrollment ENABLE ROW LEVEL SECURITY;
ALTER TABLE UserBadges ENABLE ROW LEVEL SECURITY;
ALTER TABLE UserModuleProgress ENABLE ROW LEVEL SECURITY;

-- Enable RLS on quiz tables
ALTER TABLE quizzes ENABLE ROW LEVEL SECURITY;
ALTER TABLE quiz_results ENABLE ROW LEVEL SECURITY;

-- Users policies
CREATE POLICY "Users can view their own profile"
    ON Users FOR SELECT
    USING (auth.uid()::text = user_id::text);

-- Courses policies
CREATE POLICY "Anyone can view courses"
    ON Courses FOR SELECT
    USING (true);

-- Modules policies
CREATE POLICY "Anyone can view modules"
    ON Modules FOR SELECT
    USING (true);

-- UserCourseEnrollment policies
CREATE POLICY "Users can view their own enrollments"
    ON UserCourseEnrollment FOR SELECT
    USING (auth.uid()::text = user_id::text);

CREATE POLICY "Users can enroll themselves"
    ON UserCourseEnrollment FOR INSERT
    WITH CHECK (auth.uid()::text = user_id::text);

-- UserModuleProgress policies
CREATE POLICY "Users can view their own progress"
    ON UserModuleProgress FOR SELECT
    USING (auth.uid()::text = user_id::text);

CREATE POLICY "Users can update their own progress"
    ON UserModuleProgress FOR UPDATE
    USING (auth.uid()::text = user_id::text);

-- Quiz policies
CREATE POLICY "Enable read access for all users" ON quizzes
    FOR SELECT USING (true);

-- Quiz results policies
CREATE POLICY "Users can view their own results" ON quiz_results
    FOR SELECT USING (auth.uid()::text = user_id::text);

CREATE POLICY "Users can insert their own results" ON quiz_results
    FOR INSERT WITH CHECK (auth.uid()::text = user_id::text);
