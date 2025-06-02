-- Voluminous Sample Data for Mecamobilev3 (Corrected with Integer User IDs) --

-- Inserting Users --
INSERT INTO users (user_id, name, email, phone, speciality, avatar_url) VALUES
  (1, 'Sophie Durand', 'sophie.durand1@mecamobile.fr', '+33640633424', 'Électronique embarquée', 'https://example.com/avatars/avatar_1.png'),
  (2, 'Alain Lefebvre', 'alain.lefebvre2@mecamobile.fr', '+33773610258', 'Systèmes de freinage', 'https://example.com/avatars/avatar_2.png'),
  (3, 'Pierre Bertrand', 'pierre.bertrand3@mecamobile.fr', '+33745609836', 'Carrosserie', 'https://example.com/avatars/avatar_3.png');
  
  
-- Inserting Courses --
INSERT INTO courses (course_id, title, description, duration, level, image_path) VALUES
  (1, 'Climatisation', 
   'Principes, composants, recharge, détection de fuites.', 
   '25h', 'Intermédiaire', 
   'src/assets/courses/climatisation.jpg'),
   
  (2, 'Moteurs Thermiques', 
   'Principes de base, composants et fonctionnement des moteurs essence et diesel.', 
   '25h', 'Avancé', 
   'src/assets/courses/moteurs_thermiques.jpg'),
   
  (3, 'Véhicules Hybrides et Électriques', 
   'Technologies, batteries, moteurs électriques, maintenance spécifique.', 
   '15h', 'Avancé', 
   'src/assets/courses/vehicules_hybrides.jpg'),
   
  (4, 'Moteurs Thermiques', 
   'Principes de base, composants et fonctionnement des moteurs essence et diesel.', 
   '20h', 'Avancé', 
   'src/assets/courses/moteurs_thermiques_2.jpg'),
   
  (5, 'Électronique Embarquée', 
   'Capteurs, actuateurs, calculateurs (ECU), bus CAN.', 
   '10h', 'Débutant', 
   'src/assets/courses/electronique_embarquee.jpg'),
   
  (6, 'Carrosserie et Peinture', 
   'Réparation des tôles, préparation des surfaces, techniques de peinture.', 
   '20h', 'Avancé', 
   'src/assets/courses/carrosserie_peinture.jpg'),
   
  (7, 'Climatisation', 
   'Principes, composants, recharge, détection de fuites.', 
   '10h', 'Débutant', 
   'src/assets/courses/climatisation_2.jpg'),
   
  (8, 'Électronique Embarquée', 
   'Capteurs, actuateurs, calculateurs (ECU), bus CAN.', 
   '20h', 'Avancé', 
   'src/assets/courses/electronique_embarquee_2.jpg'),
   
  (9, 'Sécurité Passive et Active', 
   'Airbags, prétensionneurs, systèmes d"aide à la conduite (ADAS).', 
   '5h', 'Intermédiaire', 
   'src/assets/courses/securite_passive_active.jpg'),
   
  (10, 'Climatisation', 
   'Principes, composants, recharge, détection de fuites.', 
   '25h', 'Intermédiaire', 
   'src/assets/courses/climatisation_3.jpg'),
   
  (11, 'Carrosserie et Peinture', 
   'Réparation des tôles, préparation des surfaces, techniques de peinture.', 
   '25h', 'Intermédiaire', 
   'src/assets/courses/carrosserie_peinture_2.jpg'),
   
  (12, 'Systèmes de Transmission', 
   'Boîtes manuelles, automatiques, embrayages et différentiels.', 
   '10h', 'Intermédiaire', 
   'src/assets/courses/systemes_transmission.jpg');

-- Inserting Modules --
INSERT INTO modules (module_id, course_id, title, description, image_path) VALUES
  ('MOD001', 1, 'Optimisation de Climatisation - Partie 1', 
   'Ce module couvre les aspects essentiels de Climatisation, section 1. Principes, composants, recharge, détection de fuites...', 
   'src/assets/images/Optimisation_Climatisation_P1.jpg'),
   
  ('MOD002', 1, 'Réparer Climatisation - Partie 2', 
   'Ce module couvre les aspects essentiels de Climatisation, section 2. Principes, composants, recharge, détection de fuites...', 
   'src/assets/images/Reparer_Climatisation_P2.jpg'),
   
  ('MOD003', 1, 'Techniques avancées pour Climatisation - Partie 3', 
   'Ce module couvre les aspects essentiels de Climatisation, section 3. Principes, composants, recharge, détection de fuites...', 
   'src/assets/images/Techniques_Climatisation_P3.jpg');

  
  

-- Inserting Quizzes --
INSERT INTO quizzes (quiz_id, module_id, question_text, options, correct_answer) VALUES
  (1, 1, 'Question 1 sur Optimisation de Climatisation - Partie 1?', ARRAY['Option A pour 1', 'Option B pour 1', 'Option C pour 1', 'Option D pour 1'], 'Option C pour 1'),
  (2, 1, 'Question 2 sur Optimisation de Climatisation - Partie 1?', ARRAY['Option A pour 2', 'Option B pour 2', 'Option C pour 2', 'Option D pour 2'], 'Option C pour 2'),
  (3, 1, 'Question 3 sur Optimisation de Climatisation - Partie 1?', ARRAY['Option A pour 3', 'Option B pour 3', 'Option C pour 3', 'Option D pour 3'], 'Option A pour 3');
 
  
-- Inserting User Module Progress --
INSERT INTO user_module_progress (user_id, module_id, completed, completion_date) VALUES
  (71, 21, True, NOW()),
  (71, 5, True, NOW()),
  (71, 59, True, NOW());


-- Inserting Quiz Results --
INSERT INTO quiz_results (user_id, module_id, score, total_questions, attempted_at) VALUES
  (71, 21, 1, 6, NOW()),
  (71, 5, 0, 6, NOW()),
  (71, 76, 1, 6, NOW()),
  (71, 46, 6, 6, NOW()),
  (71, 9, 1, 6, NOW()),
  (71, 33, 5, 6, NOW());



