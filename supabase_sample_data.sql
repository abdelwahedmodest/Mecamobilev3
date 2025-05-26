-- Création d'un exemple de données pour tester l'intégration

-- Insertion de quelques utilisateurs de test
INSERT INTO Users (user_id,name, email, phone, speciality, avatar_url)
VALUES 
(1,'Admin Mecamobile', 'admin@mecamobile.fr', '+33123456789', 'Administration', 'https://example.com/avatars/admin.png'),
(2,'Jean Dupont', 'prof@mecamobile.fr', '+33123456790', 'Mécanique automobile', 'https://example.com/avatars/prof.png'),
(3,'Marie Martin', 'etudiant1@mecamobile.fr', '+33123456791', 'Mécanique générale', 'https://example.com/avatars/etudiant1.png'),
(4,'Thomas Bernard', 'etudiant2@mecamobile.fr', '+33123456792', 'Électronique embarquée', 'https://example.com/avatars/etudiant2.png'),
(5,'John Doe', 'john@example.com', '+1234567890', 'Cardiology', 'https://example.com/avatars/etudiant31.png'),
(6,'Jane Smith', 'jane@example.com', '+0987654321', 'Pediatrics', 'https://example.com/avatars/etudiant25.png');

-- Insertion de quelques cours avec ID explicite
INSERT INTO Courses (course_id, title, description, duration, level, image_path)
VALUES 
(1, 'Introduction à la mécanique automobile', 'Ce cours couvre les bases de la mécanique automobile pour débutants', '10h', 'Débutant', 'https://example.com/courses/intro_mecanique.jpg'),
(2, 'Diagnostic électronique avancé', 'Apprenez à diagnostiquer les problèmes électroniques complexes', '15h', 'Avancé', 'https://example.com/courses/diagnostic_electronique.jpg'),
(3, 'Maintenance préventive', 'Techniques et bonnes pratiques pour la maintenance préventive des véhicules', '8h', 'Intermédiaire', 'https://example.com/courses/maintenance_preventive.jpg'),
(4, 'Introduction to Medicine', 'Basic medical concepts', '10 hours', 'Beginner', '/images/intro-med.jpg'),
(5, 'Advanced Cardiology', 'Deep dive into cardiac care', '20 hours', 'Advanced', '/images/cardio.jpg');


-- Insertion de quelques modules
INSERT INTO Modules (module_id, course_id, title, duration)
VALUES 
('MOD001', 1, 'Les outils de base', '2h'),
('MOD002', 1, 'Comprendre le moteur', '3h'),
('MOD003', 1, 'Systèmes de freinage', '2h'),
('MOD004', 1, 'Systèmes de transmission', '3h'),
('MOD005', 2, 'Capteurs et actuateurs', '4h'),
('MOD006', 2, 'Diagnostic OBD', '5h'),
('MOD007', 2, 'Réparation des circuits', '6h'),
('MOD008', 3, 'Planification de maintenance', '3h'),
('MOD009', 3, 'Inspection des fluides', '2h'),
('MOD010', 3, 'Remplacement des pièces dusure', '3h');


-- Insertion de quelques badges
INSERT INTO Badges (title, description, image_path)
VALUES 
('Novice en mécanique', 'Obtenu après avoir terminé le cours dintroduction', 'https://example.com/badges/novice.png'),
('Expert en diagnostic', 'Obtenu après avoir terminé le cours de diagnostic avancé', 'https://example.com/badges/expert_diagnostic.png'),
('Maître de la maintenance', 'Obtenu après avoir terminé le cours de maintenance préventive', 'https://example.com/badges/maintenance_master.png'),
('Premier pas', 'Obtenu après avoir terminé votre premier module', 'https://example.com/badges/first_step.png'),
('Assidu', 'Obtenu après avoir complété 5 modules', 'https://example.com/badges/assiduous.png'),
('First Steps', 'Completed first course', '/badges/first-steps.png'),
('Expert Learner', 'Completed 5 courses', '/badges/expert.png');

-- Insert sample UserCourseEnrollment
INSERT INTO UserCourseEnrollment (user_id, course_id, completion_status, progress) VALUES
(1, 1, 'En cours', 50),
(2, 2, 'En cours', 30);

-- Insert sample UserBadges
INSERT INTO UserBadges (user_id, badge_id) VALUES
(1, 1),
(2, 1);

-- Insert sample UserModuleProgress
INSERT INTO UserModuleProgress (user_id, module_id, completed) VALUES
(1, 'MOD001', true),
(1, 'MOD002', false),
(2, 'MOD003', true);

-- Insert sample quiz questions
INSERT INTO quizzes (module_id, question_text, options, correct_answer) 
VALUES 
    ('MOD001', 'What is the main purpose of a car engine?', 
    ARRAY['To play music', 'To convert fuel into mechanical energy', 'To hold passengers', 'To control temperature'],
    'To convert fuel into mechanical energy'),
    
    ('MOD001', 'Which of these is NOT a main component of an engine?',
    ARRAY['Piston', 'Crankshaft', 'Radio', 'Cylinder'],
    'Radio'),
    
    ('MOD002', 'What does the timing belt control?',
    ARRAY['Radio timing', 'Valve timing', 'Window timing', 'Door timing'],
    'Valve timing'),
    
    ('MOD002', 'How often should you check your engine oil?',
    ARRAY['Never', 'Once a year', 'Monthly', 'Every few weeks'],
    'Every few weeks');

-- Insert sample quiz results
INSERT INTO quiz_results (user_id, module_id, score, total_questions)
VALUES 
    (1, 'MOD001', 8, 10),
    (2, 'MOD001', 7, 10),
    (1, 'MOD002', 9, 10);
