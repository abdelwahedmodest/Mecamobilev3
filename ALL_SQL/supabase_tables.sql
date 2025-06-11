-- Table users
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    speciality VARCHAR(100),
    avatar_url TEXT
);

-- Table courses
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    description TEXT,
    duration VARCHAR(20),
    level VARCHAR(50),
    image_path TEXT
);

-- Table modules
CREATE TABLE modules (
    module_id VARCHAR(20) PRIMARY KEY,
    course_id INTEGER REFERENCES courses(course_id),
    title VARCHAR(200) NOT NULL,
    description TEXT,
    content TEXT,
    video_url TEXT,  -- Add this field for YouTube video URLs
    image_path TEXT,
    duration VARCHAR(20),
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Table badges
CREATE TABLE badges (
    badge_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    image_path TEXT
);

-- Table user_course_enrollment
CREATE TABLE user_course_enrollment (
    enrollment_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(user_id),
    course_id INTEGER REFERENCES courses(course_id),
    enrollment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    completion_status VARCHAR(20) DEFAULT 'En cours',
    progress INTEGER DEFAULT 0
);

-- Table user_badges
CREATE TABLE user_badges (
    user_badge_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(user_id),
    badge_id INTEGER REFERENCES badges(badge_id),
    date_obtained TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table user_module_progress
CREATE TABLE user_module_progress (
    progress_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(user_id),
    module_id VARCHAR(20) REFERENCES modules(module_id),
    completed BOOLEAN DEFAULT FALSE,
    completion_date TIMESTAMP
);

-- Table quizzes
CREATE TABLE quizzes (
    quiz_id SERIAL PRIMARY KEY,
    module_id VARCHAR(20) REFERENCES modules(module_id),
    question_text TEXT NOT NULL,
    options TEXT[] NOT NULL,
    correct_answer TEXT NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Table quiz_results
CREATE TABLE quiz_results (
    result_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(user_id),
    module_id VARCHAR(20) REFERENCES modules(module_id),
    score INTEGER NOT NULL,
    total_questions INTEGER NOT NULL,
    attempted_at TIMESTAMPTZ DEFAULT NOW()
);
