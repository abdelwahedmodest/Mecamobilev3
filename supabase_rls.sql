-- Enable Row Level Security on all tables
ALTER TABLE users ENABLE ROW LEVEL SECURITY;
ALTER TABLE courses ENABLE ROW LEVEL SECURITY;
ALTER TABLE modules ENABLE ROW LEVEL SECURITY;
ALTER TABLE badges ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_course_enrollment ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_badges ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_module_progress ENABLE ROW LEVEL SECURITY;

-- Enable RLS on quiz tables
ALTER TABLE quizzes ENABLE ROW LEVEL SECURITY;
ALTER TABLE quiz_results ENABLE ROW LEVEL SECURITY;

-- Users policies
CREATE POLICY "Users can view their own profile"
    ON users FOR SELECT
    USING (auth.uid()::text = user_id::text);

-- Courses policies
CREATE POLICY "Anyone can view courses"
    ON courses FOR SELECT
    USING (true);

-- Modules policies
CREATE POLICY "Anyone can view modules"
    ON modules FOR SELECT
    USING (true);

-- User course enrollment policies
CREATE POLICY "Users can view their own enrollments"
    ON user_course_enrollment FOR SELECT
    USING (auth.uid()::text = user_id::text);

CREATE POLICY "Users can enroll themselves"
    ON user_course_enrollment FOR INSERT
    WITH CHECK (auth.uid()::text = user_id::text);

-- User module progress policies
CREATE POLICY "Users can view their own progress"
    ON user_module_progress FOR SELECT
    USING (auth.uid()::text = user_id::text);

CREATE POLICY "Users can update their own progress"
    ON user_module_progress FOR UPDATE
    USING (auth.uid()::text = user_id::text);

-- Quiz policies
CREATE POLICY "Enable read access for all users" 
    ON quizzes FOR SELECT
    USING (true);

-- Quiz results policies
CREATE POLICY "Users can view their own results" 
    ON quiz_results FOR SELECT
    USING (auth.uid()::text = user_id::text);

CREATE POLICY "Users can insert their own results" 
    ON quiz_results FOR INSERT
    WITH CHECK (auth.uid()::text = user_id::text);
