-- Création d'un exemple de données pour tester l'intégration

-- Insertion de quelques utilisateurs de test
INSERT INTO Users (name, email, phone, speciality, avatar_url)
VALUES 
('Admin Mecamobile', 'admin@mecamobile.fr', '+33123456789', 'Administration', 'https://example.com/avatars/admin.png'),
('Jean Dupont', 'prof@mecamobile.fr', '+33123456790', 'Mécanique automobile', 'https://example.com/avatars/prof.png'),
('Marie Martin', 'etudiant1@mecamobile.fr', '+33123456791', 'Mécanique générale', 'https://example.com/avatars/etudiant1.png'),
('Thomas Bernard', 'etudiant2@mecamobile.fr', '+33123456792', 'Électronique embarquée', 'https://example.com/avatars/etudiant2.png');

-- Insertion de quelques cours
INSERT INTO Courses (title, description, duration, level, image_path)
VALUES 
('Introduction à la mécanique automobile', 'Ce cours couvre les bases de la mécanique automobile pour débutants', '10h', 'Débutant', 'https://example.com/courses/intro_mecanique.jpg'),
('Diagnostic électronique avancé', 'Apprenez à diagnostiquer les problèmes électroniques complexes', '15h', 'Avancé', 'https://example.com/courses/diagnostic_electronique.jpg'),
('Maintenance préventive', 'Techniques et bonnes pratiques pour la maintenance préventive des véhicules', '8h', 'Intermédiaire', 'https://example.com/courses/maintenance_preventive.jpg');

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
('MOD010', 3, 'Remplacement des pièces d\'usure', '3h');

-- Insertion de quelques badges
INSERT INTO Badges (title, description, image_path)
VALUES 
('Novice en mécanique', 'Obtenu après avoir terminé le cours d\'introduction', 'https://example.com/badges/novice.png'),
('Expert en diagnostic', 'Obtenu après avoir terminé le cours de diagnostic avancé', 'https://example.com/badges/expert_diagnostic.png'),
('Maître de la maintenance', 'Obtenu après avoir terminé le cours de maintenance préventive', 'https://example.com/badges/maintenance_master.png'),
('Premier pas', 'Obtenu après avoir terminé votre premier module', 'https://example.com/badges/first_step.png'),
('Assidu', 'Obtenu après avoir complété 5 modules', 'https://example.com/badges/assiduous.png');
