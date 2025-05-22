-- Table Users
CREATE TABLE Users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    speciality VARCHAR(100),
    avatar_url TEXT
);

-- Table Courses
CREATE TABLE Courses (
    course_id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    description TEXT,
    duration VARCHAR(20),
    level VARCHAR(50),
    image_path TEXT
);

-- Table Modules
CREATE TABLE Modules (
    module_id VARCHAR(20) PRIMARY KEY,
    course_id INTEGER REFERENCES Courses(course_id),
    title VARCHAR(200) NOT NULL,
    duration VARCHAR(20)
);

-- Table Badges
CREATE TABLE Badges (
    badge_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    image_path TEXT
);

-- Table UserCourseEnrollment (relation utilisateur-cours)
CREATE TABLE UserCourseEnrollment (
    enrollment_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES Users(user_id),
    course_id INTEGER REFERENCES Courses(course_id),
    enrollment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    completion_status VARCHAR(20) DEFAULT 'En cours',
    progress INTEGER DEFAULT 0
);

-- Table UserBadges (relation utilisateur-badge)
CREATE TABLE UserBadges (
    user_badge_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES Users(user_id),
    badge_id INTEGER REFERENCES Badges(badge_id),
    date_obtained TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table UserModuleProgress (pour suivre la progression des modules)
CREATE TABLE UserModuleProgress (
    progress_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES Users(user_id),
    module_id VARCHAR(20) REFERENCES Modules(module_id),
    completed BOOLEAN DEFAULT FALSE,
    completion_date TIMESTAMP
);
