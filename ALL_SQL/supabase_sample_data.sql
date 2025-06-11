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
   'src/assets/images/courses/climatisation.jpg'),
   
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
INSERT INTO modules (module_id, course_id, title, description, content, video_url, image_path) VALUES


('MOD001_CLIM1', 1, 'Comprendre Climatisation - Partie 4', 
'Module 4: Comprendre Climatisation - Partie 4  ### Systèmes de climatisation avancés et considérations environnementales  **Objectifs pédagogiques:**...', 
'Module 4: Comprendre Climatisation - Partie 4

### Systèmes de climatisation avancés et considérations environnementales

**Objectifs pédagogiques:**
- Comprendre le fonctionnement des systèmes bi-zones et multi-zones
- Connaître l''évolution des fluides frigorigènes et leur impact environnemental
- Maîtriser les spécificités des climatisations sur véhicules hybrides et électriques

### Climatisations à zones multiples

Les systèmes à zones multiples permettent de régler des températures différentes selon les zones de l''habitacle.

**Climatisation bi-zone:**
- Réglages de température indépendants pour le conducteur et le passager
- Double évaporateur ou volets de mélange séparés
- Capteurs de température distincts pour chaque zone
- Servomoteurs supplémentaires pour la distribution d''air

**Climatisation multi-zone (tri-zone et plus):**
- Extension du principe bi-zone aux places arrière
- Évaporateurs supplémentaires pour les places arrière
- Commandes dédiées pour les passagers arrière
- Complexité accrue du circuit aéraulique et électronique

**Particularités de diagnostic:**
- Vérification des servomoteurs et volets de chaque zone
- Contrôle des capteurs de température multiples
- Calibration spécifique des moteurs de volets

### Évolution des fluides frigorigènes

**Historique et impact environnemental:**
1. **R12 (CFC):** utilisé jusqu''aux années 1990, fort impact sur la couche d''ozone, interdit depuis
2. **R134a (HFC):** remplaçant du R12, sans impact sur la couche d''ozone mais fort potentiel de réchauffement global (PRG: 1430)
3. **R1234yf:** nouveau fluide à faible PRG (4), obligatoire sur les nouveaux véhicules depuis 2017
4. **R744 (CO2):** en développement pour certains constructeurs, PRG = 1, mais nécessite des pressions très élevées

**Implications pratiques:**
- Incompatibilité entre les différents fluides
- Outils et équipements spécifiques pour chaque type de fluide
- Réglementation stricte sur la récupération et le recyclage
- Formation et certification obligatoires pour les techniciens

### Climatisation sur véhicules hybrides et électriques

**Particularités des systèmes électrifiés:**
1. **Compresseurs électriques:**
   - Fonctionnement indépendant du moteur thermique
   - Alimentation par batterie haute tension
   - Refroidissement possible à l''arrêt

2. **Pompe à chaleur:**
   - Système réversible pouvant produire du chaud et du froid
   - Économie d''énergie en mode chauffage (moins de consommation batterie)
   - Utilisation de la chaleur de l''environnement extérieur

3. **Gestion thermique globale:**
   - Intégration avec le refroidissement de la batterie et de l''électronique
   - Optimisation énergétique globale du véhicule
   - Systèmes de préchauffage ou prérefroidissement programmables

**Spécificités de maintenance:**
- Nécessité de déconnecter le circuit haute tension avant intervention
- Utilisation d''huiles spécifiques (POE) compatibles avec l''isolation électrique
- Précautions particulières pour les interventions sur circuit haute tension

### Entretien préventif et optimisation

**Programme d''entretien régulier:**
1. **Tous les ans:**
   - Vérification du bon fonctionnement général
   - Nettoyage ou remplacement du filtre d''habitacle
   - Contrôle visuel des composants accessibles

2. **Tous les deux ans:**
   - Vérification de la charge de réfrigérant
   - Contrôle d''étanchéité
   - Désinfection du circuit d''air et de l''évaporateur

3. **Conseils d''utilisation optimale:**
   - Faire fonctionner la climatisation au moins 10 minutes par mois, même en hiver
   - Aérer l''habitacle avant de démarrer la climatisation par temps chaud
   - Éviter les écarts de température trop importants avec l''extérieur

### Points clés à retenir:

1. Les systèmes multi-zones augmentent le confort mais aussi la complexité du diagnostic
2. L''évolution des fluides frigorigènes est dictée par des considérations environnementales
3. Les véhicules hybrides et électriques introduisent de nouvelles technologies de climatisation
4. Un entretien préventif régulier prolonge la durée de vie du système et optimise son efficacité
5. La formation continue est essentielle pour maîtriser ces technologies en constante évolution', 
'https://www.youtube.com/watch?v=example1',
'src/assets/images/Comprendre_Climatisation_-_Partie_4.jpg'),
('MOD002_CLIM1', 1, 'Optimisation de Climatisation - Partie 1', 
'Module 1: Optimisation de Climatisation - Partie 1  ### Introduction et principes fondamentaux  **Objectifs pédagogiques:** - Comprendre le principe p...', 
'Module 1: Optimisation de Climatisation - Partie 1

### Introduction et principes fondamentaux

**Objectifs pédagogiques:**
- Comprendre le principe physique fondamental de la climatisation automobile
- Identifier les composants principaux du système
- Maîtriser les bases du circuit de réfrigération

### Principe de fonctionnement de la climatisation

La climatisation automobile n''est pas qu''un simple confort, c''est également un élément de sécurité active. Une température excessive dans l''habitacle (entre 40°C et 60°C en été) peut détériorer les performances, l''attention et le temps de réaction du conducteur.

**Le principe physique fondamental:**

Le système de climatisation fonctionne sur un principe thermodynamique simple: le passage d''un fluide réfrigérant de l''état liquide à l''état gazeux. Ce processus suit un cycle de compression-détente:

1. **Compression:** Le compresseur aspire le gaz réfrigérant à basse pression et le comprime, ce qui élève sa température (environ 80°C) et sa pression (15 bars).
2. **Condensation:** Le gaz chaud et comprimé passe dans le condenseur où il est refroidi par l''air extérieur, se transformant en liquide tout en restant sous pression.
3. **Détente:** Le liquide sous pression passe à travers le détendeur qui provoque une chute de pression (1-2 bars), créant ainsi du froid (jusqu''à -5°C).
4. **Évaporation:** Le liquide froid à basse pression s''évapore dans l''évaporateur, absorbant la chaleur de l''air qui passe à travers, refroidissant ainsi l''habitacle.

### Composants principaux du système

**1. Le compresseur:**
- Pièce centrale du système, entraîné par le moteur via une courroie accessoire
- Comprime le fluide frigorigène, le faisant passer de basse à haute pression
- Différents types: à pistons, à palettes, à spirale (scroll), à cylindrée variable

**2. Le condenseur:**
- Situé généralement devant le radiateur du moteur
- Structure similaire à un radiateur (tubes avec ailettes de refroidissement)
- Transforme le gaz chaud comprimé en liquide en évacuant sa chaleur vers l''extérieur

**3. Le détendeur:**
- Régule le débit de réfrigérant vers l''évaporateur
- Point de séparation entre haute et basse pression
- Transforme le liquide à haute pression en brouillard à basse pression et basse température

**4. L''évaporateur:**
- Situé dans le tableau de bord
- Le fluide froid absorbe la chaleur de l''air soufflé dans l''habitacle
- Permet également de déshumidifier l''air (condensation de l''humidité)

**5. Le filtre déshydrateur/collecteur:**
- Réservoir et récipient d''équilibre pour le fluide frigorigène
- Filtre les impuretés et absorbe l''humidité du circuit
- Protège les autres composants du système

**6. Le pressostat:**
- Surveille et contrôle la pression dans le circuit
- Permet de protéger le système contre les pressions trop élevées ou trop basses

### Types de systèmes de climatisation

**1. Climatisation manuelle:**
- Réglage manuel de la température, du ventilateur et de la répartition d''air
- Ajustements nécessaires si les conditions extérieures changent

**2. Climatisation à température contrôlée:**
- Maintient automatiquement la température intérieure constante
- Nécessite d''adapter manuellement la soufflerie et la distribution d''air

**3. Climatisation entièrement automatique:**
- Maintient la température réglée constante
- Adapte automatiquement le ventilateur et la répartition d''air selon les conditions

### Points clés à retenir:

1. La climatisation fonctionne en extrayant la chaleur de l''habitacle plutôt qu''en "produisant du froid"
2. Le système fonctionne en circuit fermé avec un fluide frigorigène qui change d''état (liquide/gazeux)
3. Les systèmes modernes sont de plus en plus sophistiqués et automatisés
4. Le compresseur est le composant qui consomme de l''énergie et impacte la consommation de carburant', 
'src/assets/images/Optimisation_de_Climatisation_-_Partie_1.jpg'),
('MOD003_CLIM1', 1, 'Réparer Climatisation - Partie 2', 
'Module 2: Réparer Climatisation - Partie 2  ### Diagnostic et réparation des fuites de climatisation  **Objectifs pédagogiques:** - Identifier les sym...', 
'Module 2: Réparer Climatisation - Partie 2

### Diagnostic et réparation des fuites de climatisation

**Objectifs pédagogiques:**
- Identifier les symptômes de fuite dans un système de climatisation
- Maîtriser les techniques de détection des fuites
- Apprendre à réparer les différents types de fuites

### Détection des fuites de climatisation

Les fuites sont l''un des problèmes les plus courants des systèmes de climatisation. Une perte de gaz réfrigérant de 60 à 130g par an est considérée comme normale, mais une fuite plus importante nécessite une intervention.

**Symptômes de fuite:**
- Diminution progressive de l''efficacité du refroidissement
- Air insuffisamment froid sortant des bouches d''aération
- Compresseur qui s''enclenche et se coupe rapidement
- Bruit anormal au niveau du compresseur

**Causes courantes des fuites:**
1. **Usure des joints:** détérioration naturelle avec le temps
2. **Composants défectueux:** tuyaux, raccords ou vannes endommagés
3. **Impact physique:** chocs ou collisions endommageant le circuit
4. **Corrosion:** exposition à l''humidité et conditions environnementales
5. **Mauvaise installation:** joints mal scellés lors d''interventions précédentes

### Techniques de détection des fuites

**1. Utilisation d''un kit de traçage avec liquide fluorescent:**

Matériel nécessaire:
- Kit traceur fluorescent (environ 50-100€)
- Lampe UV
- Gants et lunettes de protection

Procédure:
1. Laisser refroidir la voiture au moins 15 minutes
2. S''équiper de protection (gants, lunettes)
3. Localiser le système de climatisation sous le capot
4. Injecter le liquide traceur dans le circuit
5. Faire fonctionner la climatisation pendant 15-20 minutes
6. Inspecter le système avec la lampe UV pour repérer les traces fluorescentes qui indiquent les points de fuite

**2. Détection électronique:**
- Utilisation d''un détecteur électronique spécifique au gaz réfrigérant
- L''appareil émet un signal sonore ou lumineux à proximité d''une fuite
- Plus précis pour les petites fuites difficiles à visualiser

**3. Test de pression:**
- Utilisation d''une station de recharge avec manomètres
- Charge du système avec de l''azote et surveillance de la pression
- Une baisse progressive de pression indique une fuite

### Réparation des fuites de climatisation

**1. Remplacement des composants défectueux:**
- Joints toriques: toujours remplacer après ouverture du circuit
- Tuyaux et raccords: remplacement complet si endommagés
- Condenseur: souvent endommagé par des impacts de gravillons
- Évaporateur: nécessite généralement le démontage du tableau de bord

**2. Réparation des petites fuites:**
- Produits d''étanchéité spécifiques pour climatisation
- Attention: ces produits peuvent être inefficaces pour les fuites importantes et parfois endommager la station de recharge

**3. Procédure après réparation:**
- Tirage au vide du circuit pour éliminer air et humidité
- Recharge en gaz réfrigérant à la quantité exacte spécifiée par le constructeur
- Test d''étanchéité pour vérifier l''efficacité de la réparation
- Vérification du bon fonctionnement global du système

**Coûts approximatifs des réparations:**
- Remplacement d''un tuyau: 100€ à 350€ (pièces + main d''œuvre)
- Remplacement du condenseur: 200€ à 400€
- Remplacement de l''évaporateur: 500€ à 1000€ (en raison du temps de démontage)

### Points clés à retenir:

1. Une fuite de gaz réfrigérant est le problème le plus courant des systèmes de climatisation
2. La détection précise de la fuite est cruciale avant toute réparation
3. Les joints toriques doivent toujours être remplacés lors de l''ouverture du circuit
4. Après réparation, un tirage au vide et une recharge précise sont essentiels
5. Tous les travaux sur les circuits de climatisation nécessitent une certification professionnelle', 
'src/assets/images/Réparer_Climatisation_-_Partie_2.jpg'),
('MOD004_CLIM1', 1, 'Réparer Climatisation - Partie 5', 
'Module 5: Réparer Climatisation - Partie 5  ### Maintenance avancée et résolution de problèmes complexes  **Objectifs pédagogiques:** - Maîtriser les...', 
'Module 5: Réparer Climatisation - Partie 5

### Maintenance avancée et résolution de problèmes complexes

**Objectifs pédagogiques:**
- Maîtriser les techniques de réparation avancées
- Diagnostiquer et résoudre les problèmes complexes de climatisation
- Comprendre les interactions avec les autres systèmes du véhicule

### Maintenance approfondie des systèmes de climatisation

**Opérations de maintenance avancée:**

**1. Nettoyage en profondeur de l''évaporateur:**
- Démontage partiel du tableau de bord si nécessaire
- Utilisation de produits spécifiques pour éliminer les bactéries et moisissures
- Traitement préventif contre les mauvaises odeurs

**2. Remplacement du filtre déshydrateur:**
- Obligatoire après toute ouverture prolongée du circuit
- Fonction cruciale pour l''élimination de l''humidité et des impuretés
- Impact direct sur la longévité du compresseur et du détendeur

**3. Contrôle de qualité de l''huile:**
- Vérification de la couleur et de la transparence
- Contrôle du niveau après réparation majeure
- Remplacement en cas de contamination ou oxydation

**4. Nettoyage du condenseur:**
- Élimination des débris accumulés entre les ailettes
- Contrôle de l''état des ailettes et redressement si nécessaire
- Impact direct sur l''efficacité du refroidissement

### Problèmes complexes et leur résolution

**1. Vibrations et bruits anormaux:**

Causes possibles:
- Poulies d''entraînement usées ou désalignées
- Paliers de compresseur endommagés
- Fixations défaillantes
- Pression de gaz incorrecte

Solutions:
- Contrôle de l''alignement et tension de la courroie
- Vérification du jeu axial du compresseur
- Resserrage ou remplacement des fixations
- Correction de la charge de réfrigérant

**2. Refroidissement insuffisant malgré une charge correcte:**

Causes possibles:
- Condenseur partiellement obstrué
- Expansion excessive dans le détendeur
- Défaillance de la régulation électronique
- Problème dans le circuit d''air (volets défectueux)

Solutions:
- Nettoyage ou remplacement du condenseur
- Vérification ou remplacement du détendeur
- Diagnostic électronique approfondi
- Contrôle et recalibration des servomoteurs de volets

**3. Oscillations de température:**

Causes possibles:
- Capteur de température défectueux
- Problème dans l''électronique de régulation
- Défaillance d''un servomoteur de volet
- Charge de réfrigérant incorrecte

Solutions:
- Test et remplacement des capteurs défectueux
- Mise à jour du logiciel de régulation si disponible
- Vérification du fonctionnement des servomoteurs
- Contrôle précis de la charge de réfrigérant

### Interactions avec les autres systèmes du véhicule

**1. Gestion moteur et climatisation:**
- Impact sur le régime de ralenti (augmentation pour compenser la charge du compresseur)
- Coupure temporaire de la climatisation lors de fortes accélérations (délestage)
- Interaction avec le système Start & Stop (redémarrage automatique si besoin de climatisation)

**2. Système électrique:**
- Consommation électrique importante du ventilateur de condenseur
- Interaction avec la gestion de charge de l''alternateur
- Diagnostic des relais et fusibles spécifiques à la climatisation

**3. Système de refroidissement moteur:**
- Augmentation de la charge thermique globale
- Interaction avec le ventilateur de refroidissement (souvent partagé)
- Priorité au refroidissement moteur en cas de surchauffe

### Conseils pour une installation professionnelle

**1. Remplacement d''un compresseur:**
- Nettoyage complet du circuit avant installation (flush)
- Remplacement systématique du détendeur et du filtre déshydrateur
- Respect scrupuleux du type et de la quantité d''huile
- Tirage au vide prolongé (minimum 30 minutes)

**2. Conversion de système (R134a vers R1234yf):**
- Vérification de la compatibilité des composants
- Remplacement des joints et raccords spécifiques
- Utilisation d''huile compatible avec le nouveau fluide
- Étiquetage réglementaire du véhicule après conversion

**3. Sécurité et environnement:**
- Récupération obligatoire du gaz réfrigérant avant toute intervention
- Protection contre les risques de brûlures (froid/chaud) lors des manipulations
- Gestion appropriée des déchets (huiles, filtres, composants)
- Documentation des interventions et de la quantité de fluide utilisée

### Points clés à retenir:

1. La résolution des problèmes complexes nécessite une approche systématique et méthodique
2. Une bonne compréhension des interactions entre la climatisation et les autres systèmes est essentielle
3. Le respect des procédures de maintenance assure la durabilité et l''efficacité du système
4. La conformité aux réglementations environnementales est une obligation légale
5. Une formation continue et une veille technologique permettent de rester à jour avec l''évolution des systèmes

---

## Conseils généraux pour l''ensemble des modules:

1. **Sécurité avant tout:** porter les équipements de protection appropriés lors des interventions
2. **Documentation technique:** toujours se référer aux spécifications du constructeur
3. **Formation continue:** les systèmes évoluent rapidement, une mise à jour régulière des connaissances est essentielle
4. **Outils adaptés:** utiliser les outils spécifiques recommandés pour chaque intervention
5. **Respect de l''environnement:** manipuler les fluides frigorigènes conformément à la réglementation

Ces leçons détaillées couvrent l''ensemble des aspects essentiels pour chaque module de formation sur la climatisation automobile, des principes fondamentaux aux techniques de diagnostic et de réparation les plus avancées.', 
'src/assets/images/Réparer_Climatisation_-_Partie_5.jpg'),
('MOD005_CLIM1', 1, 'Réparer Climatisation – Partie 6', 
'Module 6 – Réparer Climatisation – Partie 6 Titre complet : Principes, Composants, Recharge et Détection de Fuite dans un Système de Climatisation   O...', 
'Module 6 – Réparer Climatisation – Partie 6
Titre complet : Principes, Composants, Recharge et Détection de Fuite dans un Système de Climatisation

 Objectif du module :
À la fin de ce module, vous saurez comment fonctionne un système de climatisation, vous reconnaîtrez ses principaux composants, et vous serez capable de le recharger correctement tout en détectant d’éventuelles fuites.

 Introduction :
La climatisation est devenue un élément incontournable dans les véhicules modernes. Elle assure le confort thermique des passagers, quelle que soit la saison. Pour bien réparer ou entretenir un système de climatisation, il est essentiel d’en comprendre le fonctionnement, de savoir reconnaître ses composants, de manipuler le gaz réfrigérant avec précaution, et de localiser les fuites éventuelles.

 1. Le principe de fonctionnement
Un système de climatisation repose sur un cycle thermodynamique fermé, dans lequel un fluide réfrigérant circule pour absorber la chaleur intérieure et la rejeter à l’extérieur.
Voici les 4 étapes du cycle :
Compression (compresseur) : Le gaz est comprimé, ce qui augmente sa température et sa pression.

Condensation (condenseur) : Le gaz chaud est refroidi et devient liquide.

Détente (détendeur) : Le liquide se détend, sa pression baisse fortement.

Évaporation (évaporateur) : Le liquide froid absorbe la chaleur de l’habitacle, et redevient gaz.


 2. Les composants principaux
Compresseur : Il est entraîné par la courroie du moteur et pompe le gaz.

Condenseur : Situé à l’avant du véhicule, il ressemble à un radiateur. Il refroidit le gaz comprimé.

Détendeur (ou orifice calibré) : Il régule la quantité de liquide envoyée dans l’évaporateur.

Évaporateur : Il est placé dans le tableau de bord. Il refroidit l’air entrant dans l’habitacle.

Ventilateur : Il souffle l’air à travers l’évaporateur.

Filtre déshydrateur : Il élimine l’humidité et les impuretés du circuit.

Pressostats : Des capteurs qui contrôlent les pressions pour éviter la casse.


 3. Recharge de la climatisation
Avant toute recharge, il faut :
Vérifier qu’il n’y a pas de fuite.

Utiliser des gants, lunettes et masques.

Travailler dans un espace ventilé.

Étapes de recharge :
Connecter les flexibles de la station de charge aux valves basse et haute pression.

Tirer au vide le circuit pendant 15-20 minutes pour éliminer l’air et l’humidité.

Injecter la quantité exacte de réfrigérant indiquée par le constructeur.

Vérifier le bon fonctionnement du système (température de sortie, bruit, etc.).

 Ne jamais surcharger ! Trop de gaz = surpression = risque de casse du compresseur.

️4. Détection de fuite
Une fuite rend la clim inopérante et peut endommager le compresseur. Voici 3 méthodes courantes pour détecter une fuite :
Détecteur électronique :

Passez le capteur près des raccords et durites.

Il émet un son ou une lumière si une fuite est détectée.

Fluorescéine + lampe UV :

On injecte un traceur dans le gaz.

Avec une lampe UV, on repère les zones qui brillent.

Savon à bulles :

Pulvériser de l’eau savonneuse sur les raccords.

Des bulles se forment là où le gaz s’échappe.
Conclusion :
La réparation d’un système de climatisation exige rigueur et sécurité. Il faut :
Bien comprendre le fonctionnement global.

Connaître les composants et leur rôle.

Utiliser les bons outils pour recharger avec précision.

Être capable de repérer rapidement une fuite.', 
'src/assets/images/Réparer_Climatisation_-_Partie_6.jpg'),
('MOD006_CLIM1', 1, 'Réparer Climatisation – Partie 8', 
'️ Module 8 – Réparer Climatisation – Partie 8 Titre complet : Interventions courantes : remplacement de pièces, tests de performance, entretien périod...', 
'️ Module 8 – Réparer Climatisation – Partie 8
Titre complet : Interventions courantes : remplacement de pièces, tests de performance, entretien périodique
 Objectif du module :
Savoir comment intervenir sur un système de climatisation : remplacement de pièces, vérification de performance, entretien régulier.
 1. Remplacement de composants défectueux :
- Compresseur : à remplacer s’il ne tourne plus ou fait du bruit
- Condenseur : souvent exposé à l’avant du véhicule, fragile aux impacts
- Évaporateur : difficile d’accès, nécessite souvent le démontage du tableau de bord
- Filtre déshydrateur : à remplacer à chaque ouverture du circuit
 2. Tests de performance :
• Température de sortie à la bouche d’aération (devrait être inférieure à 10°C)
• Vérification des pressions avec des manomètres
• Contrôle du niveau de bruit du compresseur
• Vérification du déclenchement du ventilateur de condenseur
 3. Entretien régulier recommandé :
- Changement du filtre habitacle tous les 15 000 km
- Nettoyage du circuit avec des bombes désinfectantes
- Vérification annuelle de la charge de gaz
- Observation des joints pour prévenir les fuites
Conclusion :
Un bon entretien évite la plupart des pannes. Lors d’une réparation, toujours vérifier le bon fonctionnement complet du circuit après intervention', 
'src/assets/images/Réparer_Climatisation_-_Partie_8.jpg'),
('MOD007_CLIM1', 1, 'Techniques avancées pour Climatisation - Partie 3', 
'Module 3: Techniques avancées pour Climatisation - Partie 3  ### Diagnostic avancé et optimisation des systèmes de climatisation  **Objectifs pédagogi...', 
'Module 3: Techniques avancées pour Climatisation - Partie 3

### Diagnostic avancé et optimisation des systèmes de climatisation

**Objectifs pédagogiques:**
- Maîtriser les techniques de diagnostic avancées pour les systèmes complexes
- Comprendre le fonctionnement des climatisations automatiques et bi-zones
- Optimiser les performances des systèmes de climatisation

### Diagnostic des climatisations régulées

Les climatisations modernes comportent de nombreux capteurs et actionneurs qui nécessitent des techniques de diagnostic spécifiques.

**Composants spécifiques des climatisations automatiques:**
1. **Capteur de température d''habitacle:** mesure la température intérieure
2. **Capteur d''ensoleillement:** détecte l''intensité des rayons solaires
3. **Capteur de température extérieure:** mesure la température ambiante
4. **Capteur de température d''évaporateur:** évite le gel de l''évaporateur
5. **Capteur de qualité d''air:** détecte les pollutions extérieures
6. **Servomoteurs:** contrôlent les volets de distribution d''air et de mélange

**Outils de diagnostic avancés:**
- Outil de diagnostic électronique avec accès aux paramètres de climatisation
- Multimètre pour tester les capteurs et actionneurs
- Thermomètre infrarouge pour mesurer les températures à différents points
- Manomètres pour mesurer les pressions du circuit

### Méthodologie de diagnostic avancé

**1. Analyse des données électroniques:**
- Lecture des paramètres réels avec l''outil de diagnostic
- Identification des codes défauts mémorisés
- Analyse des données dynamiques pendant le fonctionnement

**2. Test des capteurs:**
- Vérification des résistances des capteurs de température
- Test des tensions de référence et des signaux
- Contrôle du fonctionnement des servomoteurs et des volets

**3. Mesure des performances:**
- Mesure des températures aux bouches d''aération
- Écart entre température demandée et température réelle
- Mesure des pressions du circuit de réfrigérant en fonctionnement

### Compresseurs à cylindrée variable et électriques

**Compresseurs à cylindrée variable:**
- Adaptent leur débit en fonction des besoins réels
- Fonctionnement continu sans cycles marche/arrêt
- Consommation d''énergie optimisée
- Diagnostic: mesure du courant de commande et contrôle du signal PWM

**Compresseurs électriques (véhicules hybrides et électriques):**
- Fonctionnement indépendant du moteur thermique
- Alimentés par la batterie haute tension
- Utilisation d''huile POE (PolyOlEster) au lieu de l''huile PAG classique
- Diagnostic: vérification de l''isolation électrique et des circuits de commande

### Optimisation des performances

**1. Nettoyage et désinfection du circuit d''air:**
- Nettoyage ou remplacement du filtre d''habitacle
- Traitement antibactérien de l''évaporateur
- Élimination des mauvaises odeurs

**2. Optimisation du circuit de réfrigération:**
- Contrôle précis de la charge de réfrigérant
- Vérification des températures et pressions de fonctionnement
- Adaptation de la charge selon les conditions climatiques

**3. Calibration des systèmes électroniques:**
- Réinitialisation des servomoteurs et volets
- Calibration des capteurs de température
- Mise à jour des logiciels de gestion si disponible

### Points clés à retenir:

1. Les systèmes de climatisation modernes sont de plus en plus électronisés et complexes
2. Le diagnostic nécessite à la fois des connaissances en mécanique et en électronique
3. Les compresseurs à cylindrée variable et électriques requièrent des techniques spécifiques
4. L''optimisation des performances passe par un contrôle précis de tous les paramètres
5. Une formation continue est nécessaire pour rester à jour avec les évolutions technologiques', 
'src/assets/images/Techniques_avancées_pour_Climatisation_-_Partie_3.jpg'),
('MOD008_CLIM1', 1, '– Diagnostiquer Climatisation – Partie 7', 
'️ Module 7 – Diagnostiquer Climatisation – Partie 7 Titre complet : Diagnostic et Analyse des Dysfonctionnements dans un Système de Climatisation  Obj...', 
'️ Module 7 – Diagnostiquer Climatisation – Partie 7
Titre complet : Diagnostic et Analyse des Dysfonctionnements dans un Système de Climatisation
 Objectif du module :
Savoir reconnaître les symptômes d’un système de climatisation défectueux, identifier les pannes les plus courantes et utiliser les bons outils de diagnostic.
 Introduction :
Lorsque la climatisation d’un véhicule ne fonctionne pas comme prévu, il est essentiel de procéder à un diagnostic rigoureux. Cela évite les réparations inutiles et permet d’agir rapidement sur la vraie cause du problème.
 1. Symptômes fréquents d’un dysfonctionnement :
- Air insuffisamment froid ou pas froid du tout
- Bruits anormaux au démarrage de la clim
- Mauvaises odeurs
- Compresseur qui ne se déclenche pas
- Givre sur les conduites
 2. Étapes du diagnostic :
1. Vérification visuelle : fuites, état des durites, câbles électriques
2. Vérification des fusibles et relais du compresseur
3. Contrôle des pressions haute et basse avec des manomètres
4. Activation du compresseur pour tester son déclenchement
5. Analyse des codes défauts via une valise de diagnostic
 3. Utilisation des outils de diagnostic :
- Station de climatisation : lecture des pressions et température
- Thermomètre à infrarouge pour mesurer les sorties d’air
- Multimètre pour tester les signaux électriques
- Lampe UV et traceur pour rechercher les fuites
 4. Cas pratiques de pannes :
• Compresseur inactif → souvent dû à un pressostat défectueux ou manque de gaz
• Air chaud → dû à une vanne bloquée ou évaporateur bouché
• Air qui sent mauvais → évaporateur sale ou filtre habitacle saturé
Conclusion :
Un bon diagnostic repose sur l’observation, les outils adéquats et la compréhension des cycles de fonctionnement de la climatisation. Il est toujours préférable de procéder par élimination logique.', 
'src/assets/images/-_Diagnostiquer_Climatisation_-_Partie_7.jpg'),
('MOD001_MOTEUR1', 2, 'Module 1 _ Les bases des moteurs thermiques', 
'Formation approfondie pour techniciens automobiles spécialisés en moteurs thermiques Ce programme de 2000 heures combine théorie avancée et pratique i...', 
'Formation approfondie pour techniciens automobiles spécialisés en moteurs thermiques
Ce programme de 2000 heures combine théorie avancée et pratique intensive pour former des experts capables de maîtriser les systèmes complexes des moteurs à combustion interne. Structuré en huit modules progressifs, il intègre les dernières innovations technologiques tout en renforçant les fondamentaux mécaniques[1][2].
Module 1 : Les bases des moteurs thermiques - Fondamentaux structuraux (250 heures)
Architecture mécanique des moteurs alternatifs
L''étude commence par la décomposition anatomique des moteurs à piston. Le bloc-cylindres constitue l''élément porteur, usiné avec des tolérances de ±0.002 mm pour garantir l''alignement précis des chemins de piston[2]. Les vilebrequins forgés en acier 42CrMo4 subissent un traitement thermique de nitruration gazeuse pour atteindre une dureté superficielle de 60 HRC, cruciale pour résister aux contraintes de torsion[3].
L''analyse des systèmes bielle-manivelle révèle l''importance du rapport course/alésage. Un ratio de 1:1.2 optimise le couple à bas régime, tandis qu''un alésage surdimensionné (ratio 0.8:1) favorise la puissance spécifique en régime élevé. Les simulations dynamiques incluent l''étude des forces secondaires selon l''équation $ F = m\omega^2r(\cos\theta + \frac{\lambda}{4}\cos2\theta) $ où λ représente le rapport bielle/vilebrequin[2].
Thermodynamique appliquée aux cycles moteurs
Le module approfondit le cycle de Beau de Rochas théorique et ses écarts pratiques. Les pertes énergétiques sont quantifiées via le bilan indicé :

où $ r $ est le taux de compression, $ \beta $ le rapport de combustion, et $ \epsilon $ le taux de détente[2]. Les travaux pratiques utilisent des indicateurs électroniques P-V pour mesurer les écarts réels atteignant 15-20% par rapport au cycle idéal[3].', 
'src/assets/images/Module_1___Les_bases_des_moteurs_thermiques.jpg'),
('MOD002_MOTEUR1', 2, 'Module 2 _ Optimisation des moteurs thermiques', 
'Module 2 : Optimisation des moteurs thermiques - Stratégies de combustion (300 heures) Conception avancée des chambres de combustion L''optimisation gé...', 
'Module 2 : Optimisation des moteurs thermiques - Stratégies de combustion (300 heures)
Conception avancée des chambres de combustion
L''optimisation géométrique vise à maximiser le taux de compression effectif tout en minimisant les surfaces d''échange thermique. Les profils hémisphériques avec chemises céramiques plasma-sprayées (ZrO2 + 8% Y2O3) réduisent les déperditions de 12% par rapport aux configurations traditionnelles[3]. Les simulations CFD multicorps analysent les écoulements tourbillonnaires avec des nombres de Reynolds dépassant 5000 dans la phase d''admission.
Contrôle des phénomènes de cliquetis
L''étude des combustions anormales intègre des capteurs piézoélectriques haute fréquence (200 kHz) pour détecter les ondes de pression caractéristiques. Les stratégies d''injection d''eau émulsionnée (rapport eau/carburant 30%) permettent de réduire la température de charge de 150°C, repoussant la limite de cliquetis de 3,5 points d''indice d''octane[3]. Les modèles prédictifs utilisent des réseaux de neurones convolutifs entraînés sur des bases de données de 50 000 cycles moteur.', 
'src/assets/images/Module_2___Optimisation_des_moteurs_thermiques.jpg'),
('MOD003_MOTEUR1',2, 'Module 3 _ Optimisation des moteurs thermiques', 
'Module 3 : Optimisation des moteurs thermiques - Suralimentation et gestion énergétique (350 heures) Architectures hybrides de suralimentation Ce modu...', 
'Module 3 : Optimisation des moteurs thermiques - Suralimentation et gestion énergétique (350 heures)
Architectures hybrides de suralimentation
Ce module compare les configurations bi-turbo séquentiel, turbo compound et turbocompresseurs électrifiés. Un système hybride associant un turbo basse pression (rapport de détente 4:1) et un compresseur électrique (48V, 7 kW) réduit le temps de réponse à 80 ms pour des régimes transitoires entre 1000 et 4000 tr/min[3]. Les travaux pratiques incluent le mapping 3D des cartographies de boost en fonction du régime et de la charge.
Récupération d''énergie des gaz d''échappement
L''étude des turbines à régénération électrique (EGR) analyse leur efficacité via l''équation de rendement exergétique :

où $ T_0 $ représente la température ambiante de référence[3]. Les systèmes ORC (Organic Rankine Cycle) utilisant du R1233zd(E) atteignent des rendements de conversion de 8-12% sur les gaz à 450°C.', 
'src/assets/images/Module_3___Optimisation_des_moteurs_thermiques.jpg'),
('MOD004_MOTEUR1',2, 'Module 4 _ Techniques avancées pour moteurs thermiques', 
'Module 4 : Techniques avancées pour moteurs thermiques - Hybridation et durabilité (400 heures) Intégration des systèmes mild-hybrid 48V L''analyse dét...', 
'Module 4 : Techniques avancées pour moteurs thermiques - Hybridation et durabilité (400 heures)
Intégration des systèmes mild-hybrid 48V
L''analyse détaillée des architectures P2/P3 explore le couplage mécanique entre moteur thermique et machine électrique. Les stratégies de torque blending utilisent des contrôleurs MPC (Model Predictive Control) pour optimiser la répartition énergétique en temps réel. Les bancs d''essai instrumentés mesurent les gains de consommation atteignant 15% sur cycle WLTP grâce à la récupération d''énergie au freinage[3].
Durabilité et maintenance prédictive
Ce volet intègre des capteurs IoT de nouvelle génération pour le monitoring vibratoire (accéléromètres MEMS 3 axes) et l''analyse spectrale des huiles. Les algorithmes de détection d''usure précoce utilisent l''indice de sévérité de vibration selon la norme ISO 10816, combiné à des modèles de régression des particules métalliques (ICP-OES). Les protocoles de maintenance conditionnelle réduisent les temps d''immobilisation de 30% par rapport aux intervalles fixes[1].
(... Les autres modules développent similairement les aspects d''électronique embarquée, de post-traitement des émissions, et de conception paramétrique ...)
Conclusion : Vers une expertise polyvalente en propulsion thermique
Ce programme intensif crée des techniciens capables d''intervenir sur l''ensemble de la chaîne énergétique des véhicules modernes. L''accent mis sur les méthodes de diagnostic avancées et les technologies d''optimisation énergétique prépare les apprenants aux défis de la transition vers des motorisations plus efficientes et moins polluantes[1][3]. Les compétences acquises permettent une intégration rapide dans les services R&D des constructeurs comme dans les ateliers haute technicité', 
'src/assets/images/Module_4___Techniques_avancées_pour_moteurs_thermiques.jpg'),
('MOD005_MOTEUR1',2, 'Module 5 _ Introduction aux moteurs thermiques - Gestion électronique embarquée', 
'Module 5 : Introduction aux moteurs thermiques - Gestion électronique embarquée (300 heures) Architecture des calculateurs moteur Les systèmes de gest...', 
'Module 5 : Introduction aux moteurs thermiques - Gestion électronique embarquée (300 heures)
Architecture des calculateurs moteur
Les systèmes de gestion modernes intègrent des microcontrôleurs 32 bits fonctionnant à 200 MHz, capables de traiter 5000 signaux/seconde[1]. Les algorithmes de contrôle optimisent en temps réel l''avance à l''allumage via des cartographies tridimensionnelles stockées en mémoire EEPROM. Les travaux pratiques incluent le décodage des trames CAN bus à l''aide d''oscilloscopes numériques haute résolution (1 GS/s), permettant d''analyser les signaux de capteurs PMH (Point Mort Haut) avec une précision de ±0,1° vilebrequin[2].
Stratégies d''adaptation dynamique
Les systèmes OBD-II (On-Board Diagnostics) utilisent des modèles neuronaux autorégressifs pour corriger les dérives de combustion. Les bancs de test simulent des conditions extrêmes (-40°C à +150°C) pour valider les algorithmes d''adaptation lambda[3]. Les études de cas incluent le diagnostic des capteurs de pression de suralimentation (MAP) défectueux causant des erreurs P0106, avec analyse des courbes caractéristiques de dérive thermique[1].', 
'src/assets/images/Module_5___Introduction_aux_moteurs_thermiques_-_Gestion_électronique_embarquée.jpg'),
('MOD006_MOTEUR1',2, 'Module 6 _ Introduction aux moteurs thermiques - Post-traitement des émissions', 
'Module 6 : Introduction aux moteurs thermiques - Post-traitement des émissions (350 heures) Technologies de réduction des NOx Les systèmes SCR (Select...', 
'Module 6 : Introduction aux moteurs thermiques - Post-traitement des émissions (350 heures)
Technologies de réduction des NOx
Les systèmes SCR (Selective Catalytic Reduction) utilisent des injecteurs d''AdBlue® piezoélectriques capables de pulvériser 2,5 µm³ de solution à 400 Hz[2]. Les calculateurs gèrent le dosage selon l''équation :

où α représente le ratio stoechiométrique NH3/NOx[2]. Les TP incluent le réglage des capteurs NH3 à sonde laser (λ = 3,39 µm) avec étalonnage sur gaz de référence NIST.
Régénération des filtres à particules
Les stratégies de régénération passive utilisent des additifs cérium-based (FBC™) abaissant la température de combustion des suies à 450°C[2]. Pour les régénérations actives, les systèmes à injection de carburant en ligne (7 injections/cycle) élèvent les gaz d''échappement à 650°C pendant 15 minutes[4]. Les analyses thermographiques par caméra IR (8-14 µm) permettent de visualiser les gradients thermiques dans le DPF.', 
'src/assets/images/Module_6___Introduction_aux_moteurs_thermiques_-_Post-traitement_des_émissions.jpg'),
('MOD007_MOTEUR1',2, 'Module 7 _ Techniques avancées pour moteurs thermiques - Hybridation électrique', 
'Module 7 : Techniques avancées pour moteurs thermiques - Hybridation électrique (400 heures) Architectures de motorisations hybrides L''étude comparati...', 
'Module 7 : Techniques avancées pour moteurs thermiques - Hybridation électrique (400 heures)
Architectures de motorisations hybrides
L''étude comparative des configurations série/parallèle/à dérivation de puissance analyse les rendements énergétiques via des diagrammes de Sankey. Les systèmes PHEV (Plug-in Hybrid Electric Vehicle) intègrent des packs batterie Li-NMC 811 de 18 kWh avec refroidissement diélectrique direct[1]. Les travaux pratiques incluent le câblage de systèmes 800V avec isolation galvanique (10 kV/mm) et mesures de fuites capacitives.
Gestion thermique des batteries
Les modèles CFD simulent les écoulements de fluide caloporteur (50% eau/50% glycol) dans des cold plates à micro-canaux (200 µm)[1]. Les stratégies de préconditionnement utilisent des pompes à chaleur CO2 transcritiques avec COP de 2,8 à -20°C[2]. Les études de vieillissement accéléré (1000 cycles à 45°C) analysent la dégradation des anodes en graphite via spectroscopie EIS.', 
'src/assets/images/Module_7___Techniques_avancées_pour_moteurs_thermiques_-_Hybridation_électrique.jpg'),
('MOD008_MOTEUR1',2, 'Module 8 _ Techniques avancées pour moteurs thermiques - Diagnostic expert', 
'Module 8 : Techniques avancées pour moteurs thermiques - Diagnostic expert (500 heures) Méthodologie d''analyse systémique Le processus en 7 étapes int...', 
'Module 8 : Techniques avancées pour moteurs thermiques - Diagnostic expert (500 heures)
Méthodologie d''analyse systémique
Le processus en 7 étapes intègre la théorie des graphes pour modéliser les dépendances fonctionnelles entre 1500 paramètres moteur[1]. Les arbres de défaillances (FTA) quantifiés utilisent l''algèbre de Boole étendue aux probabilités bayésiennes. Les études de cas incluent le diagnostic de knock prédétonation via analyse temps-fréquence des signaux de pression (transformée en ondelettes Morlet).
Outils de télédiagnostic avancé
Les plateformes IoT utilisent le protocole MQTT over 5G pour le streaming de données à 1 Gbit/s[1]. Les algorithmes de machine learning (XGBoost) traitent des jeux de données de 10^6 véhicules pour détecter les anomalies corrélées. Les TP incluent la configuration de jumeaux numériques avec précision µs sur des simulateurs Hardware-in-the-Loop.', 
'src/assets/images/Module_8___Techniques_avancées_pour_moteurs_thermiques_-_Diagnostic_expert.jpg'),
('MOD001_HYBRIDE1', 3, 'Diagnostiquer Véhicules Hybrides et Électriques - Partie 1', 
'Module 1 : Diagnostiquer Véhicules Hybrides et Électriques - Partie 1 Objectifs pédagogiques Comprendre les principes de base du diagnostic des véhicu...', 
'Module 1 : Diagnostiquer Véhicules Hybrides et Électriques - Partie 1
Objectifs pédagogiques
Comprendre les principes de base du diagnostic des véhicules hybrides et électriques
Maîtriser l''utilisation des outils de diagnostic spécialisés
Identifier les systèmes électroniques et leurs interactions
Contenu de la formation
1.1 Introduction au diagnostic électrique
Le diagnostic des véhicules hybrides et électriques nécessite une approche méthodique différente des
véhicules thermiques traditionnels. Les systèmes haute tension (HV) opèrent généralement entre 200V et
800V, nécessitant des précautions particulières.
Points clés :
Protocoles de sécurité avant intervention
Identification des circuits haute et basse tension
Utilisation d''équipements de protection individuelle (EPI) spécialisés
1.2 Outils de diagnostic spécialisés
Les véhicules électrifiés requièrent des outils de diagnostic adaptés pour analyser les systèmes complexes
:
Oscilloscope numérique : Analyse des signaux électriques en temps réel, mesure des ondulations de
tension, vérification des signaux PWM des onduleurs.
Multimètre isolé : Mesures de tension, courant et résistance sur circuits haute tension avec isolation
galvanique de sécurité.
Analyseur de réseau CAN/LIN : Diagnostic des communications entre calculateurs, analyse des trames
de données des systèmes de gestion batterie (BMS).
1.3 Procédures de diagnostic de base
Avant toute intervention, suivre la séquence de mise en sécurité :
1. Arrêt complet du véhicule
2. Attente de décharge des condensateurs (minimum 5 minutes)
3. Déconnexion du service disconnect ou contacteur principal
4. Vérification de l''absence de tension avec un voltmètre isolé
5. Consignation et étiquetage des circuits
1.4 Lecture des codes défauts
Les véhicules hybrides/électriques utilisent des codes défauts spécifiques :
Codes P0xxx : Système de propulsion
Codes P1xxx : Spécifiques constructeur
Codes U0xxx : Communications réseau
Codes B0xxx : Systèmes carrosserie électronique
Exercices pratiques
Mise en sécurité d''un véhicule hybride
Lecture de codes défauts avec outil de diagnostic
Mesure de tensions haute tension en sécurité', 
'src/assets/images/Diagnostiquer_Véhicules_Hybrides_et_Électriques_-_Partie_1.jpg'),
('MOD002_HYBRIDE1', 3, 'Diagnostiquer Véhicules Hybrides et Électriques - Partie 3', 
'Module 3 : Diagnostiquer Véhicules Hybrides et Électriques - Partie 3 Objectifs pédagogiques Diagnostiquer les systèmes de refroidissement spécifiques...', 
'Module 3 : Diagnostiquer Véhicules Hybrides et Électriques - Partie 3
Objectifs pédagogiques
Diagnostiquer les systèmes de refroidissement spécifiques
Analyser les systèmes de charge et leur interaction
Identifier les défaillances des composants haute tension
Contenu de la formation
3.1 Diagnostic des systèmes de refroidissement
Les véhicules électrifiés possèdent plusieurs circuits de refroidissement distincts pour optimiser les
températures de fonctionnement.
Circuit batterie :
Température optimale : 15-35°C
Pompe électrique à débit variable
Échangeur thermique dédié ou couplé à la climatisation
Circuit électronique de puissance :
Refroidissement des onduleurs et chargeurs
Température de fonctionnement : -40°C à +105°C
Surveillance par capteurs de température multiples
Diagnostic des défaillances :
Vérification du débit par mesure de pression différentielle
Contrôle de l''étanchéité par test de pressurisation
Test de fonctionnement des pompes et ventilateurs
3.2 Diagnostic des systèmes de charge
Les véhicules électriques intègrent différents types de chargeurs selon la puissance et le type de courant.
Chargeur embarqué AC :
Puissance typique : 3,7 kW à 22 kW
Conversion AC/DC avec correction du facteur de puissance
Communication avec l''infrastructure de charge (norme IEC 61851)
Système de charge rapide DC :
Puissance jusqu''à 350 kW
Communication CAN avec la borne de charge
Protocole CHAdeMO, CCS ou Tesla Supercharger
Tests de diagnostic :
Vérification de la continuité des circuits de charge
Test de l''isolation du chargeur
Contrôle des communications avec simulateur de borne
3.3 Diagnostic des contacteurs haute tension
Les contacteurs permettent d''isoler les circuits haute tension en cas d''urgence ou pour la maintenance.
Types de contacteurs :
Contacteurs électromagnétiques avec suppression d''arc
Contacteurs à l''état solide (moins de maintenance)
Contacteurs pyrotechniques (usage unique en cas d''accident)
Tests de fonctionnement :
Mesure de la résistance de contact (< 1 mΩ)
Test de rigidité diélectrique à l''ouverture
Vérification du temps de commutation
3.4 Analyse des défaillances système
L''approche systémique permet d''identifier les interactions entre composants et les défaillances en
cascade.
Méthodologie d''analyse :
1. Collecte des symptômes et codes défauts
2. Analyse des données en temps réel
3. Tests de composants individuels
4. Vérification des interactions système
5. Validation de la réparation
Exercices pratiques
Test d''étanchéité d''un circuit de refroidissement
Diagnostic d''un chargeur embarqué défaillant', 
'src/assets/images/Diagnostiquer_Véhicules_Hybrides_et_Électriques_-_Partie_3.jpg'),
('MOD003_HYBRIDE1', 3, 'Diagnostiquer Véhicules Hybrides et Électriques - Partie 4', 
'Module 4 : Diagnostiquer Véhicules Hybrides et Électriques - Partie 4 Objectifs pédagogiques Maîtriser le diagnostic des systèmes hybrides complexes A...', 
'Module 4 : Diagnostiquer Véhicules Hybrides et Électriques - Partie 4
Objectifs pédagogiques
Maîtriser le diagnostic des systèmes hybrides complexes
Analyser les stratégies de gestion énergétique
Diagnostiquer les interactions moteur thermique/électrique
Contenu de la formation
4.1 Diagnostic des systèmes hybrides
Les véhicules hybrides combinent propulsion thermique et électrique avec des stratégies de gestion
complexes.
Types d''hybridation :
Hybride série : Moteur thermique génère l''électricité
Hybride parallèle : Les deux moteurs peuvent propulser le véhicule
Hybride série-parallèle : Combinaison des deux modes
Boîte de vitesses hybride : Les transmissions hybrides intègrent des moteurs électriques et requièrent
un diagnostic spécifique :
eCVT (transmission à variation continue électronique)
Systèmes de couplage électromagnétiques
Répartiteurs de puissance planétaires
4.2 Diagnostic de la gestion énergétique
Le calculateur de supervision hybride (HSM) gère la répartition de puissance entre les différentes sources
d''énergie.
Stratégies de fonctionnement :
Mode électrique pur (vitesses faibles, faible charge)
Mode thermique (vitesses élevées, forte charge)
Mode combiné (accélérations, reprises)
Mode récupération (décélérations, freinages)
Paramètres de diagnostic :
État de charge de la batterie (SOC)
État de santé de la batterie (SOH)
Température des composants
Demande de couple conducteur
4.3 Diagnostic des moteurs-générateurs
Les véhicules hybrides utilisent des machines électriques multifonctions.
Moteur-générateur 1 (MG1) :
Fonction démarreur du moteur thermique
Générateur pour recharge batterie
Contrôle du régime moteur en mode eCVT
Moteur-générateur 2 (MG2) :
Propulsion électrique principale
Récupération d''énergie au freinage
Assistance au moteur thermique
Tests spécifiques :
Vérification du couplage magnétique
Test de génération en mode générateur
Mesure du couple en mode moteur
4.4 Diagnostic des défaillances hybrides
Les pannes spécifiques aux systèmes hybrides nécessitent une approche diagnostique adaptée.
Pannes courantes :
Perte de synchronisation entre moteurs
Défaillance du système de couplage
Problèmes de gestion thermique
Dysfonctionnements de la transmission eCVT
Méthodes de diagnostic :
Analyse des oscillogrammes de courant et tension
Vérification des séquences de démarrage
Test des capteurs de position rotor
Contrôle des stratégies de basculement de mode
Exercices pratiques
Diagnostic d''une transmission eCVT
Analyse des modes de fonctionnement hybride
Test de synchronisation des moteurs-générateurs', 
'src/assets/images/Diagnostiquer_Véhicules_Hybrides_et_Électriques_-_Partie_4.jpg'),
('MOD004_HYBRIDE1', 3, 'Introduction à Véhicules Hybrides et Électriques - Partie 7', 
'Module 7 : Introduction à Véhicules Hybrides et Électriques - Partie 7 Objectifs pédagogiques Comprendre l''évolution technologique des véhicules élect...', 
'Module 7 : Introduction à Véhicules Hybrides et Électriques - Partie 7
Objectifs pédagogiques
Comprendre l''évolution technologique des véhicules électrifiés
Maîtriser les nouvelles architectures de propulsion
Anticiper les développements futurs
Contenu de la formation
7.1 Évolution des technologies de batteries
Les technologies de batteries évoluent rapidement avec de nouveaux défis techniques.
Batteries lithium-ion nouvelle génération :
Cathodes NMC (Nickel Manganèse Cobalt) à haute densité
Anodes silicium pour augmentation de capacité
Électrolytes solides pour sécurité renforcée
Densité énergétique : évolution de 150 à 300 Wh/kg
Batteries alternatives :
Lithium-fer-phosphate (LFP) : sécurité et longévité
Batteries sodium-ion : ressources abondantes
Technologies émergentes : lithium-soufre, lithium-air
Supercondensateurs hybrides pour applications haute puissance
Implications techniques :
Modification des stratégies de gestion thermique
Évolution des protocoles de charge
Nouveaux défis de recyclage
Impact sur l''architecture véhicule
7.2 Nouvelles architectures électriques
L''évolution vers des tensions plus élevées transforme les architectures véhicules.
Architecture 800V :
Réduction des courants et des pertes
Câblage allégé et sécurisé
Charge ultra-rapide (350 kW)
Défis d''isolation et de sécurité
Réseau électrique intelligent :
Communication Vehicle-to-Grid (V2G)
Stockage d''énergie bidirectionnel
Intégration aux réseaux électriques
Optimisation des coûts énergétiques
7.3 Motorisations avancées
Les moteurs électriques évoluent vers plus d''efficacité et d''intégration.
Moteurs synchrones à réluctance :
Absence d''aimants permanents (terres rares)
Rendement élevé (>95%)
Contrôle complexe mais performant
Coût de production optimisé
Intégration moteur-transmission :
Réducteurs intégrés haute efficacité
Moteurs roue pour véhicules urbains
Systèmes multi-moteurs pour véhicules lourds
Contrôle de traction avancé
7.4 Systèmes d''aide à la conduite électrifiés
L''électrification permet de nouveaux systèmes d''assistance.
Récupération d''énergie intelligente :
Adaptation au profil de route
Optimisation selon le trafic
Intégration GPS et cartographie
Apprentissage des habitudes de conduite
Gestion prédictive de l''énergie :
Planification d''itinéraire optimisée
Préchauffage intelligent de l''habitacle
Gestion des auxiliaires électriques
Optimisation autonomie/performance
Exercices pratiques
Analyse comparative de technologies de batteries
Étude d''architecture 800V
Configuration d''un système V2G', 
'src/assets/images/Introduction_à_Véhicules_Hybrides_et_Électriques_-_Partie_7.jpg'),
('MOD005_HYBRIDE1', 3, 'Maintenance de Véhicules Hybrides et Électriques - Partie 5', 
'Module 5 : Maintenance de Véhicules Hybrides et Électriques - Partie 5 Objectifs pédagogiques Planifier la maintenance préventive des véhicules électr...', 
'Module 5 : Maintenance de Véhicules Hybrides et Électriques - Partie 5
Objectifs pédagogiques
Planifier la maintenance préventive des véhicules électrifiés
Maîtriser les procédures de maintenance spécifiques
Gérer le cycle de vie des composants critiques
Contenu de la formation
5.1 Maintenance préventive des batteries
La batterie représente le composant le plus coûteux et critique des véhicules électrifiés.
Stratégies de préservation :
Maintien de la charge entre 20% et 80% pour usage quotidien
Évitement des charges rapides fréquentes
Surveillance de la température de fonctionnement
Égalisation périodique des cellules
Contrôles périodiques :
Vérification de l''état des connexions haute tension
Contrôle de l''étanchéité du pack batterie
Test de l''isolement électrique (minimum 100 Ω/V)
Analyse de l''évolution de la capacité
Remplacement des modules : Lorsqu''un module présente une dérive importante, son remplacement
doit respecter :
Compatibilité électrochimique avec les modules existants
Équilibrage initial obligatoire
Mise à jour des paramètres BMS
Test de validation complet
5.2 Maintenance des systèmes de refroidissement
Les circuits de refroidissement spécialisés nécessitent une maintenance adaptée.
Liquide de refroidissement spécifique :
Fluide diélectrique pour circuit batterie
Propriétés anti-corrosion renforcées
Conductivité électrique contrôlée (< 10 µS/cm)
Remplacement tous les 5 ans ou 150 000 km
Maintenance préventive :
Vérification du niveau et de la pression
Contrôle de la propreté du liquide
Test de fonctionnement des pompes électriques
Nettoyage des échangeurs et radiateurs
5.3 Maintenance des moteurs électriques
Les moteurs électriques nécessitent peu de maintenance mais quelques points critiques.
Roulements et paliers :
Lubrification spécifique haute température
Surveillance vibratoire préventive
Remplacement selon intervalles constructeur
Contrôle de l''alignement après intervention
Isolants et connexions :
Vérification de l''isolement des enroulements
Contrôle de l''état des connexions haute intensité
Nettoyage des collecteurs (moteurs à balais)
Remplacement des joints d''étanchéité
5.4 Maintenance des systèmes de charge
Les équipements de charge nécessitent une attention particulière pour assurer la sécurité.
Chargeur embarqué :
Nettoyage des ailettes de refroidissement
Vérification de l''étanchéité des connecteurs
Test de l''isolement galvanique
Contrôle des protections électriques
Prises et connecteurs :
Inspection visuelle des contacts
Vérification du verrouillage mécanique
Test de continuité des conducteurs
Remplacement des joints d''étanchéité
Exercices pratiques
Procédure de vidange d''un circuit de refroidissement batterie
Remplacement d''un module de batterie haute tension
Maintenance préventive d''un moteur électrique', 
'src/assets/images/Maintenance_de_Véhicules_Hybrides_et_Électriques_-_Partie_5.jpg'),
('MOD006_HYBRIDE1',3, 'Maintenance de Véhicules Hybrides et Électriques - Partie 6', 
'Module 6 : Maintenance de Véhicules Hybrides et Électriques - Partie 6 Objectifs pédagogiques Maîtriser la maintenance corrective avancée Gérer les in...', 
'Module 6 : Maintenance de Véhicules Hybrides et Électriques - Partie 6
Objectifs pédagogiques
Maîtriser la maintenance corrective avancée
Gérer les interventions d''urgence
Optimiser la durée de vie des composants
Contenu de la formation
6.1 Maintenance corrective des onduleurs
Les onduleurs sont des composants critiques nécessitant des interventions spécialisées.
Diagnostic des défaillances :
Surchauffe par défaillance du refroidissement
Défaillance des composants de puissance (IGBT, MOSFET)
Problèmes de commande et de régulation
Perturbations électromagnétiques
Procédures de réparation :
Démontage en environnement contrôlé (ESD)
Remplacement des modules de puissance
Programmation et calibration
Tests de validation en charge
Outils spécialisés :
Station de dessoudage à air chaud
Analyseur de composants semiconducteurs
Banc d''essai pour modules de puissance
Équipement de protection ESD
6.2 Réparation des faisceaux haute tension
Les câbles haute tension nécessitent des techniques de réparation spécifiques.
Identification des défaillances :
Défaut d''isolement par usure ou corrosion
Rupture de conducteur par fatigue mécanique
Échauffement excessif des connexions
Infiltration d''humidité dans les connecteurs
Techniques de réparation :
Sertissage haute intensité avec outillage calibré
Application de gaines thermorétractables renforcées
Utilisation de mastics d''étanchéité spécialisés
Test d''isolement après réparation (2500V pendant 1 minute)
6.3 Régénération des batteries
Les techniques de régénération permettent de prolonger la durée de vie des batteries.
Méthodes de régénération :
Égalisation active des cellules par transfert d''énergie
Désulfatation par impulsions haute fréquence (batteries plomb)
Reconditionnement par cycles de charge/décharge contrôlés
Remplacement sélectif des cellules défaillantes
Équipements nécessaires :
Chargeur-déchargeur programmable multi-voies
Analyseur d''impédance pour caractérisation cellule
Système de surveillance température multi-points
Logiciel de gestion des profils de régénération
6.4 Gestion des interventions d''urgence
Les pannes critiques nécessitent des procédures d''urgence spécifiques.
Procédures de sécurisation :
Isolement des circuits haute tension
Ventilation des locaux en cas de fuite électrolyte
Évacuation en cas de dégagement gazeux
Contact avec services de secours spécialisés
Kit d''intervention d''urgence :
Détecteur de gaz multi-composants
Absorbants pour électrolytes
Équipements de protection respiratoire
Outils isolés et matériel de consignation
Réparations temporaires :
Pontage de circuits défaillants
Limitation de puissance par programmation
Mode dégradé pour retour atelier
Documentation des interventions d''urgence
Exercices pratiques
Réparation d''un faisceau haute tension endommagé
Régénération d''un pack batterie dégradé
Simulation d''intervention d''urgence', 
'src/assets/images/Maintenance_de_Véhicules_Hybrides_et_Électriques_-_Partie_6.jpg'),
('MOD007_HYBRIDE1',3, 'Techniques Avancées pour Véhicules Hybrides et Électriques -PARTIE2', 
'Module 2 : Techniques Avancées pour Véhicules Hybrides et Électriques - Partie 2 Objectifs pédagogiques Maîtriser les techniques de diagnostic avancée...', 
'Module 2 : Techniques Avancées pour Véhicules Hybrides et Électriques -
Partie 2
Objectifs pédagogiques
Maîtriser les techniques de diagnostic avancées
Analyser les signaux complexes des systèmes de propulsion
Diagnostiquer les pannes intermittentes
Contenu de la formation
2.1 Analyse des signaux de puissance
Les onduleurs convertissent le courant continu de la batterie en courant alternatif triphasé pour alimenter
les moteurs électriques. L''analyse de ces signaux révèle l''état du système.
Signaux PWM (Pulse Width Modulation) :
Fréquence typique : 8-20 kHz
Rapport cyclique variable selon la demande de couple
Analyse des temps morts entre commutations
Harmoniques et parasites : Les commutations rapides génèrent des harmoniques pouvant perturber
d''autres systèmes. L''analyse spectrale permet d''identifier ces perturbations.
2.2 Diagnostic des moteurs électriques
Les moteurs synchrones à aimants permanents et les moteurs asynchrones nécessitent des approches
diagnostiques spécifiques.
Tests de résistance et d''inductance :
Mesure de la résistance d''enroulement à température ambiante
Test d''isolement entre phases et masse (minimum 1 MΩ)
Mesure de l''inductance pour détecter les courts-circuits
Analyse vibratoire et thermique :
Utilisation de caméras thermiques pour détecter les échauffements anormaux
Analyse des vibrations pour identifier les déséquilibres mécaniques
2.3 Diagnostic avancé des batteries
Le système de gestion batterie (BMS) surveille chaque cellule individuellement. Le diagnostic approfondi
permet d''identifier les cellules défaillantes.
Tests de capacité :
Test de décharge contrôlée pour mesurer la capacité réelle
Comparaison avec les spécifications constructeur
Identification des cellules en dérive
Analyse de la résistance interne :
Mesure de la résistance interne de chaque module
Évolution dans le temps et corrélation avec l''état de santé
2.4 Diagnostic des pannes intermittentes
Les pannes intermittentes sont particulièrement difficiles à diagnostiquer dans les véhicules électrifiés.
Enregistrement de données :
Utilisation des fonctions d''enregistrement des outils de diagnostic
Capture de signaux lors de conditions spécifiques
Analyse des données historiques du véhicule
Exercices pratiques
Analyse de signaux PWM à l''oscilloscope
Test de résistance d''isolement sur moteur électrique
Diagnostic d''une panne intermittente simulée', 
'src/assets/images/Techniques_Avancées_pour_Véhicules_Hybrides_et_Électriques_-PARTIE2.jpg'),
('MOD008_HYBRIDE1', 3, 'Techniques Avancées pour Véhicules Hybrides et Électriques -PARTIE8', 
'Module 8 : Techniques Avancées pour Véhicules Hybrides et Électriques - Partie 8 Objectifs pédagogiques Maîtriser les techniques de pointe en électrom...', 
'Module 8 : Techniques Avancées pour Véhicules Hybrides et Électriques -
Partie 8
Objectifs pédagogiques
Maîtriser les techniques de pointe en électromobilité
Comprendre les enjeux de l''industrie 4.0 appliquée à l''automobile
Préparer l''évolution vers l''autonomie et la connectivité
Contenu de la formation
8.1 Intelligence artificielle et diagnostic prédictif
L''IA révolutionne le diagnostic et la maintenance des véhicules électrifiés.
Diagnostic prédictif par IA :
Algorithmes d''apprentissage automatique sur données véhicule
Prédiction des pannes avant apparition des symptômes
Optimisation des intervalles de maintenance
Réduction des coûts d''exploitation
Collecte et traitement des données :
Capteurs IoT intégrés aux composants critiques
Transmission en temps réel vers centres de traitement
Analyse big data pour identification de patterns
Recommandations personnalisées par profil d''usage
Outils de diagnostic augmenté :
Réalité augmentée pour assistance technique
Diagnostic guidé par intelligence artificielle
Base de connaissances évolutive
Interface homme-machine intuitive
8.2 Cybersécurité des véhicules connectés
La connectivité croissante introduit de nouveaux risques de sécurité.
Vecteurs d''attaque :
Interfaces sans fil (WiFi, Bluetooth, 5G)
Prises de diagnostic OBD
Systèmes d''infodivertissement
Communications V2X (Vehicle-to-Everything)
Mesures de protection :
Chiffrement des communications
Authentification des composants
Mise à jour sécurisée des logiciels (OTA)
Isolation des systèmes critiques
Diagnostic des intrusions :
Détection d''anomalies comportementales
Analyse des logs de communication
Tests de pénétration périodiques
Procédures de réponse aux incidents
8.3 Véhicules autonomes électrifiés
L''autonomie de conduite transforme les exigences énergétiques.
Consommation des systèmes autonomes :
Capteurs LiDAR, caméras, radars (500W à 2kW)
Calculateurs haute performance (jusqu''à 5kW)
Systèmes de communication 5G
Impact sur l''autonomie véhicule
Gestion énergétique adaptative :
Priorisation des fonctions selon autonomie restante
Mode dégradé avec conduite assistée
Arrêt sécurisé automatique
Recharge d''urgence automatisée
8.4 Technologies émergentes
Les innovations technologiques redéfinissent l''électromobilité.
Charge sans fil (induction) :
Bobines de charge intégrées à la chaussée
Efficacité énergétique de 85-95%
Charge dynamique en roulant
Standards de communication dédiés
Piles à combustible hydrogène :
Électrolyse pour production d''hydrogène vert
Systèmes hybrides batterie/pile à combustible
Temps de recharge rapide (3-5 minutes)
Défis de stockage et distribution
Matériaux avancés :
Graphène pour supercondensateurs
Batteries organiques biodégradables
Composites carbone pour allègement
Matériaux à changement de phase pour gestion thermique
8.5 Économie circulaire et recyclage
La durabilité devient un enjeu majeur de l''électromobilité.
Recyclage des batteries :
Récupération des métaux précieux (lithium, cobalt, nickel)
Processus pyrométallurgiques et hydrométallurgiques
Seconde vie des batteries (stockage stationnaire)
Économie de 95% des matières premières
Écoconception des véhicules :
Analyse de cycle de vie (ACV) complète
Optimisation de la recyclabilité
Réduction de l''empreinte carbone
Économie de fonctionnalité vs propriété
Exercices pratiques
Configuration d''un système de diagnostic prédictif
Test de sécurité d''un système de communication véhicule
Évaluation de l''impact énergétique des systèmes autonomes
Évaluation et Certification
Modalités d''évaluation
Examens théoriques par module (QCM + questions ouvertes)
Travaux pratiques sur véhicules et bancs d''essai
Projet de fin de formation (diagnostic complet d''un véhicule)
Évaluation continue des compétences pratiques
Prérequis
Connaissances de base en électricité automobile
Expérience en diagnostic automobile traditionnelle
Formation sécurité électrique recommandée
Habilitation électrique B1V ou équivalent
Certification
À l''issue de la formation, les participants obtiennent :
Certificat de spécialisation véhicules hybrides et électriques
Habilitation pour intervention sur véhicules haute tension
Reconnaissance professionnelle par les constructeurs partenaires
Mise à jour continue des compétences par formation continue', 
'src/assets/images/Techniques_Avancées_pour_Véhicules_Hybrides_et_Électriques_-PARTIE8.jpg'),
('MOD001_MOTEUR2',4, 'Introduction Moteurs Thermiques-Partie5', 
'Module 13 : Introduction Moteurs Thermiques Contexte et Importance des Moteurs Thermiques Depuis plus d''un siècle, les moteurs thermiques constituent...', 
'Module 13 : Introduction Moteurs Thermiques
Contexte et Importance des Moteurs Thermiques
Depuis plus d''un siècle, les moteurs thermiques constituent la principale technologie de
propulsion pour les véhicules automobiles à travers le monde. Bien que l''électrification
gagne du terrain, notamment en Europe sous l''impulsion des réglementations sur les
émissions de CO2, les motorisations thermiques, souvent couplées à une forme
d''hybridation, devraient encore équiper une très large majorité des véhicules vendus
dans les années à venir (estimée à environ 80% en 2030). Ces moteurs, qu''ils
fonctionnent à l''essence, au gazole, ou plus marginalement au gaz (GPL, GNV), restent
au cœur de la mobilité individuelle et du transport de marchandises.
Leur omniprésence s''explique par leur densité énergétique élevée (quantité d''énergie
stockée par unité de masse ou de volume de carburant), leur autonomie importante et
l''infrastructure de ravitaillement largement déployée. Cependant, ils font face à des
défis majeurs : répondre à des normes d''émissions de polluants (NOx, particules, CO,
HC) de plus en plus strictes et réduire leur consommation de carburant (et donc leurs
émissions de CO2) pour limiter leur impact environnemental. L''optimisation continue de
leur rendement et l''intégration avec des systèmes d''hybridation sont donc des axes de
développement cruciaux pour l''industrie automobile.
Principes Fondamentaux de Fonctionnement
Le principe de base d''un moteur thermique à combustion interne est de convertir
l''énergie chimique contenue dans un carburant en énergie mécanique utile pour
propulser un véhicule. Cette conversion s''effectue au sein des cylindres du moteur par la
combustion rapide d''un mélange de carburant et d''air (le comburant). La chaleur
dégagée par cette combustion augmente considérablement la pression des gaz à
l''intérieur du cylindre, poussant un piston vers le bas. Ce mouvement rectiligne
alternatif du piston est ensuite transformé en un mouvement de rotation continu par un
système bielle-manivelle (le vilebrequin), qui transmet la puissance aux roues via la
transmission.
La majorité des moteurs automobiles fonctionnent selon un cycle à quatre temps
(admission, compression, combustion/détente, échappement), qui décrit la séquence
des opérations se déroulant dans chaque cylindre. Des composants clés assurent le bon
déroulement de ce cycle : les soupapes (contrôlant l''entrée d''air/mélange et la sortie des
gaz brûlés), le système d''allumage (bougie pour les moteurs essence) ou d''injection
(pour les diesels et essence modernes), le système de refroidissement (pour évacuer la
chaleur excessive) et le système de lubrification (pour réduire les frottements entre les
pièces mobiles).
Source: * Introduction à la motorisation automobile - Fabrice Le Berr (IFPEN). Consulté
le 27 mai 2025, à l''adresse https://campus-auto-mobilites.com/sites/campus-auto mobilites.com/files/u38/20210609_fabrice_le_berr_motorisation_automobile.pdf
(Extrait du texte via pdftotext) * Les moteurs thermiques dans le monde automobile -
PFA (Plateforme automobile). Consulté le 27 mai 2025, à l''adresse https://pfa-auto.fr/
wp-content/uploads/2020/06/DT_Moteurs-thermiques_2020_V12bis.pdf (Extrait du texte
via pdftotext)', 
'src/assets/images/Introduction_Moteurs_Thermiques-Partie5.jpg'),
('MOD002_MOTEUR2', 4, 'Les bases de Moteurs Thermiques - Partie 1', 
'Module 9 : Les bases de Moteurs Thermiques - Partie 1 Introduction aux Principes Fondamentaux Le moteur thermique, au cœur de nombreux véhicules autom...', 
'Module 9 : Les bases de Moteurs Thermiques - Partie 1
Introduction aux Principes Fondamentaux
Le moteur thermique, au cœur de nombreux véhicules automobiles, est une merveille
d''ingénierie conçue pour convertir l''énergie chimique contenue dans un carburant en
énergie mécanique capable de propulser le véhicule. Son fonctionnement repose sur un
principe fondamental : l''exploitation de l''énergie libérée par la combustion contrôlée
d''un mélange spécifique. Ce mélange est typiquement composé d''un carburant (comme
l''essence ou le gazole) et d''un comburant, qui est l''oxygène présent dans l''air ambiant.
La combustion de ce mélange se produit à l''intérieur d''une chambre close, générant une
augmentation rapide de la température et de la pression des gaz résultants. Cette
expansion soudaine des gaz est le phénomène clé qui permet de générer un
mouvement.
La transformation de cette énergie thermique en travail mécanique s''effectue grâce à un
ensemble de composants mobiles précisément agencés. La pression exercée par les gaz
en expansion pousse un piston vers le bas à l''intérieur d''un cylindre. Ce mouvement
linéaire du piston est ensuite converti en un mouvement rotatif par l''intermédiaire d''une
bielle et d''un vilebrequin. C''est cette rotation du vilebrequin qui, après être passée par la
transmission, entraîne finalement les roues du véhicule. L''ensemble de ce processus se
déroule de manière cyclique et répétitive, permettant au moteur de fournir une
puissance continue tant qu''il est alimenté en carburant et en air. La nature exacte de ce
cycle dépend du type de moteur, les plus courants dans l''automobile étant les moteurs à
quatre temps.
Source: * Fonctionnement d''un moteur thermique - Fiches Auto. Consulté le 27 mai
2025, à l''adresse https://www.fiches-auto.fr/articles-auto/fonctionnement-d-une-auto/
s-726-fonctionnement-d-un-moteur.php
Les Composants Essentiels du Moteur Thermique
Pour comprendre pleinement le fonctionnement d''un moteur thermique, il est crucial
de connaître ses composants principaux et leurs rôles respectifs. Le cœur du système est
le bloc moteur, une structure robuste qui abrite les éléments mobiles essentiels. À
l''intérieur de ce bloc se trouvent les cylindres, des alésages précis dans lesquels les 
pistons se déplacent de haut en bas. Ces pistons sont les pièces maîtresses qui
subissent directement la pression de la combustion.
La partie supérieure du bloc moteur est fermée par la culasse. Cette pièce complexe
joue plusieurs rôles : elle scelle la chambre de combustion, abrite les soupapes
(d''admission et d''échappement) qui contrôlent le flux des gaz, et contient souvent les 
arbres à cames qui commandent l''ouverture et la fermeture de ces soupapes. Dans les
moteurs à essence, la culasse loge également les bougies d''allumage, tandis que dans
les moteurs diesel, elle peut contenir les injecteurs et les bougies de préchauffage.
Le mouvement linéaire des pistons est transformé en mouvement rotatif grâce au 
vilebrequin, un arbre coudé situé à la base du moteur. La connexion entre les pistons et
le vilebrequin est assurée par les bielles. L''ensemble de ces pièces mobiles doit être
parfaitement synchronisé pour que le cycle du moteur se déroule correctement.
D''autres systèmes auxiliaires sont indispensables, comme le système d''admission qui
achemine l''air (et parfois le carburant) vers les cylindres, le système d''échappement
qui évacue les gaz brûlés, et le système de refroidissement (généralement à liquide)
qui maintient le moteur à une température de fonctionnement optimale, typiquement
autour de 90°C, pour éviter la surchauffe et garantir l''efficacité.
Source: * Comment fonctionne le moteur thermique ? Moteur 4T vs 2T - Autohero.
Consulté le 27 mai 2025, à l''adresse https://www.autohero.com/fr/conseil/explorer/
types-de-moteurs/combustion/fonctionnement-moteur-thermique/
Le Cycle à Quatre Temps : Le Rythme du Moteur
La majorité des moteurs thermiques automobiles fonctionnent selon un cycle à quatre
temps, une séquence précise d''événements qui se répète continuellement pour chaque
cylindre. Ce cycle est essentiel pour transformer l''énergie de la combustion en
mouvement rotatif. Voici les quatre étapes distinctes qui composent ce cycle :
Admission : Le cycle commence par la descente du piston à l''intérieur du cylindre.
Simultanément, la soupape d''admission s''ouvre, permettant l''aspiration d''un
mélange d''air et de carburant (pour les moteurs essence à injection indirecte ou à
carburateur) ou uniquement d''air frais (pour les moteurs diesel et essence à
injection directe) dans la chambre de combustion. Cette phase remplit le cylindre
avec les éléments nécessaires à la combustion.
Compression : Une fois le cylindre rempli, la soupape d''admission se ferme. Le
piston entame alors sa remontée, comprimant fortement le mélange air-carburant
ou l''air seul. Cette compression augmente considérablement la pression et la
température à l''intérieur du cylindre, préparant le terrain pour la phase suivante.
La compression est cruciale car elle optimise l''efficacité de la combustion.
Combustion / Détente (ou Explosion) : Lorsque le piston atteint le point le plus
haut de sa course (appelé Point Mort Haut ou PMH), la combustion est déclenchée.
Dans un moteur à essence, une étincelle produite par la bougie d''allumage
enflamme le mélange comprimé. Dans un moteur diesel, le carburant est injecté
dans l''air fortement comprimé et chauffé, provoquant une auto-inflammation.
Cette combustion rapide génère une énorme pression qui repousse violemment le
piston vers le bas. C''est cette phase, appelée détente, qui produit la force motrice,
l''énergie mécanique utile.
Échappement : Après la détente, le piston remonte une nouvelle fois. Pendant
cette remontée, la soupape d''échappement s''ouvre, permettant au piston
d''expulser les gaz brûlés hors du cylindre vers le système d''échappement. Une fois
les gaz évacués, la soupape d''échappement se ferme, et le cycle peut
recommencer avec une nouvelle phase d''admission.
Ce cycle à quatre temps se déroule en continu et de manière décalée dans les différents
cylindres du moteur, assurant ainsi une production de puissance relativement constante
et fluide pour propulser le véhicule.
Source: * Tout savoir sur le fonctionnement du moteur d''une voiture ! - Lepermislibre.
Consulté le 27 mai 2025, à l''adresse https://www.lepermislibre.fr/code-route/cours/
fonctionnement-moteur-voiture', 
'src/assets/images/Les_bases_de_Moteurs_Thermiques_-_Partie_1.jpg'),
('MOD003_MOTEUR2',4, 'Optimisation de Moteurs Thermiques -PARTIE3', 
'Module 11 : Optimisation de Moteurs Thermiques - Partie 3 Stratégies Avancées de Dilution et Cycles Thermodynamiques Modifiés Pour pousser plus loin l...', 
'Module 11 : Optimisation de Moteurs Thermiques -
Partie 3
Stratégies Avancées de Dilution et Cycles Thermodynamiques Modifiés
Pour pousser plus loin l''optimisation du rendement des moteurs thermiques,
notamment les moteurs à essence, les ingénieurs explorent des stratégies visant à
réduire les pertes d''énergie, en particulier les pertes thermiques vers les parois de la
chambre de combustion et les pertes par pompage (l''énergie nécessaire pour aspirer
l''air et expulser les gaz brûlés). Une approche efficace consiste à augmenter le taux de
dilution du mélange admis dans les cylindres. La dilution peut être obtenue en
introduisant une quantité importante de gaz inertes dans le mélange frais. La méthode
la plus courante est la recirculation des gaz d''échappement (EGR), où une partie des
gaz brûlés est réintroduite dans l''admission. Une autre forme de dilution est l''utilisation
de gaz résiduels internes (IGR), obtenue grâce à des stratégies de calage variable des
soupapes qui piègent une partie des gaz brûlés dans le cylindre d''un cycle à l''autre.
L''augmentation de la dilution présente plusieurs avantages. Premièrement, elle abaisse
la température maximale de combustion, ce qui réduit les pertes de chaleur vers les
parois et diminue la formation d''oxydes d''azote (NOx), un polluant majeur.
Deuxièmement, elle permet d''ouvrir davantage le papillon des gaz (pour les moteurs
essence) pour une même charge moteur, réduisant ainsi les pertes par pompage. Pour
atteindre des niveaux de dilution élevés tout en maintenant une combustion stable et
rapide, des systèmes de distribution variable sophistiqués et des systèmes d''allumage
plus puissants ("boostés") peuvent être nécessaires.
Parallèlement, des modifications du cycle thermodynamique de base (le cycle Beau de
Rochas ou Otto pour l''essence) sont employées. Les cycles Miller et Atkinson sont deux
exemples notables. Ces cycles modifient le calage des soupapes pour que la course de
détente effective soit plus longue que la course de compression effective. Dans le cycle
Miller, la soupape d''admission se ferme tardivement pendant la course de compression,
tandis que dans le cycle Atkinson (souvent réalisé par un calage similaire), l''objectif est
le même : réduire le travail de compression tout en maximisant l''expansion des gaz
brûlés. Cela améliore le rendement thermodynamique, en particulier à charge partielle,
au détriment potentiel de la puissance spécifique (puissance par litre de cylindrée), ce
qui les rend particulièrement adaptés aux véhicules hybrides où le moteur électrique
peut compenser le manque de couple à bas régime.
Source: * Les moteurs thermiques dans le monde automobile - PFA (Plateforme
automobile). Consulté le 27 mai 2025, à l''adresse https://pfa-auto.fr/wp-content/
uploads/2020/06/DT_Moteurs-thermiques_2020_V12bis.pdf (Extrait du texte via
pdftotext)', 
'src/assets/images/Optimisation_de_Moteurs_Thermiques_-PARTIE3.jpg'),
('MOD004_MOTEUR2',4, 'Optimisation de Moteurs Thermiques -PARTIE4', 
'Module 12 : Optimisation de Moteurs Thermiques - Partie 4 Impact des Facteurs Externes et Systèmes Modernes sur le Rendement L''optimisation du rendeme...', 
'Module 12 : Optimisation de Moteurs Thermiques -
Partie 4
Impact des Facteurs Externes et Systèmes Modernes sur le Rendement
L''optimisation du rendement d''un moteur thermique ne dépend pas uniquement des
réglages internes et des composants du moteur lui-même, mais aussi de facteurs
externes et de l''intégration de systèmes modernes conçus pour améliorer l''efficacité
globale du véhicule. La température ambiante, par exemple, a une influence non
négligeable. L''air froid est plus dense que l''air chaud, ce qui signifie qu''à volume égal, un
moteur aspire une plus grande masse d''oxygène par temps froid. Cela peut
potentiellement améliorer la combustion, mais le moteur doit aussi atteindre et
maintenir sa température de fonctionnement idéale (généralement entre 90°C et 100°C)
pour une efficacité maximale, ce qui peut prendre plus de temps par temps froid et
nécessiter une gestion thermique précise via le système de refroidissement et les
échangeurs.
Le rapport air/carburant est un facteur interne crucial, mais sa gestion optimale est
assurée par des systèmes électroniques sophistiqués dans les moteurs modernes.
Maintenir le ratio stœchiométrique (14,7:1 pour l''essence) ou l''ajuster finement selon les
conditions (mélange légèrement enrichi pour la puissance maximale, légèrement
appauvri pour l''économie) est essentiel. Les systèmes de gestion moteur utilisent des
capteurs (sonde lambda, capteur de débit d''air massique, etc.) pour surveiller en
permanence la combustion et ajuster l''injection de carburant en conséquence,
optimisant ainsi le rendement et minimisant les émissions polluantes.
Des technologies modernes contribuent également significativement à l''optimisation.
Le système Start & Stop, devenu courant, coupe automatiquement le moteur lors des
arrêts (feux rouges, embouteillages), réduisant ainsi la consommation de carburant et
les émissions inutiles, particulièrement en conduite urbaine où les phases d''arrêt sont
fréquentes. La récupération d''énergie au freinage, souvent associée aux systèmes
d''hybridation légère ou complète, utilise l''énergie cinétique normalement perdue sous
forme de chaleur lors du freinage pour recharger la batterie ou assister le moteur
thermique, améliorant ainsi l''efficacité énergétique globale du véhicule. Ces systèmes,
combinés à un entretien régulier et à l''utilisation de lubrifiants et additifs performants,
permettent d''exploiter au mieux le potentiel du moteur thermique.
Source: * Rendement d''un moteur thermique : calcul et optimisation - Autohero.
Consulté le 27 mai 2025, à l''adresse https://www.autohero.com/fr/conseil/explorer/
types-de-moteurs/combustion/rendement-moteur-thermique/', 
'src/assets/images/Optimisation_de_Moteurs_Thermiques_-PARTIE4.jpg'),
('MOD005_MOTEUR2',4, 'Optimisation de Moteurs Thermiques -partie2', 
'Module 10 : Optimisation de Moteurs Thermiques - Partie 2 Introduction à l''Optimisation du Rendement L''optimisation du rendement d''un moteur thermique...', 
'Module 10 : Optimisation de Moteurs Thermiques -
Partie 2
Introduction à l''Optimisation du Rendement
L''optimisation du rendement d''un moteur thermique est un domaine clé pour améliorer
à la fois les performances ressenties par le conducteur et l''efficacité énergétique du
véhicule. Il ne s''agit pas seulement d''augmenter la puissance brute, mais aussi d''assurer
que l''énergie contenue dans le carburant est convertie en mouvement de la manière la
plus efficace possible, tout en minimisant les pertes et l''usure. Cette quête
d''optimisation implique une compréhension fine des principes de fonctionnement du
moteur et des interactions complexes entre ses différents composants. Les techniques
employées vont du réglage précis des paramètres de combustion à l''ajout de
composants améliorant le flux des gaz ou la gestion thermique.
L''objectif est d''atteindre un équilibre idéal où le moteur délivre la puissance souhaitée
quand elle est nécessaire, tout en consommant le moins de carburant possible et en
respectant les normes environnementales. Cela passe par une gestion affinée du
mélange air-carburant, un contrôle précis du moment de l''allumage ou de l''injection, et
une réduction des frictions internes. L''optimisation peut également concerner
l''amélioration de la 
"respiration" du moteur, c''est-à-dire la facilité avec laquelle l''air entre et les gaz
d''échappement sortent, souvent en utilisant des systèmes d''admission et
d''échappement plus performants.
Techniques de Réglage Fondamentales
L''optimisation du rendement passe inévitablement par un réglage méticuleux des
paramètres clés du moteur. L''un des aspects les plus cruciaux est le réglage de la
carburation (ou de l''injection pour les moteurs modernes). Il s''agit d''ajuster
précisément le ratio entre la quantité d''air admise et la quantité de carburant injectée.
Un mélange trop riche (trop de carburant) peut entraîner une consommation excessive
et des émissions polluantes accrues, tandis qu''un mélange trop pauvre (pas assez de
carburant) peut causer une surchauffe et une perte de puissance. Trouver le ratio
stœchiométrique idéal (environ 14,7 parts d''air pour 1 part d''essence) ou l''ajuster
légèrement en fonction des conditions de fonctionnement (charge moteur, régime) est
essentiel pour une combustion complète et efficace.
Un autre paramètre fondamental est le calage de l''allumage (pour les moteurs essence)
ou le moment de l''injection (pour les moteurs diesel). Il détermine à quel instant précis
l''étincelle se produit ou le carburant est injecté par rapport à la position du piston. Un
calage optimal assure que la pression maximale de la combustion s''exerce sur le piston
au moment le plus opportun de sa descente, maximisant ainsi la force transmise au
vilebrequin. Un allumage trop précoce (avance excessive) peut provoquer du cliquetis
(combustion anormale et potentiellement destructrice), tandis qu''un allumage trop
tardif (retard excessif) réduit la puissance et l''efficacité. Des systèmes de gestion
électronique modernes ajustent dynamiquement ces paramètres en fonction de
multiples capteurs pour optimiser le rendement en temps réel.
Source: * Optimiser le rendement : le moteur pour voiture thermique performant - Auto Voyage. Consulté le 27 mai 2025, à l''adresse https://www.auto-voyage.com/moteurpour-voiture-thermique/
Améliorations Matérielles et Systémiques pour l''Optimisation
Au-delà des réglages fins des paramètres de fonctionnement, l''optimisation du
rendement d''un moteur thermique peut également passer par des modifications
matérielles ou l''amélioration de systèmes clés. L''utilisation de lubrifiants synthétiques
de haute performance, par exemple, est une approche efficace pour réduire les frictions
internes entre les pièces mobiles du moteur. Moins de friction signifie moins de pertes
d''énergie sous forme de chaleur et une usure réduite des composants, contribuant ainsi
à une meilleure efficacité globale et à une plus grande longévité du moteur. Ces
lubrifiants sont particulièrement bénéfiques dans des conditions de fonctionnement
exigeantes, comme les hautes températures ou les régimes moteur élevés.
L''amélioration du système d''admission d''air est une autre piste courante pour
optimiser les performances. Un moteur a besoin de "respirer" efficacement pour bien
fonctionner. L''installation d''un système d''admission moins restrictif, parfois appelé
"admission directe" ou "admission à double flux", peut permettre au moteur d''aspirer
plus d''air, plus facilement, en particulier à haut régime. Un meilleur remplissage des
cylindres en air favorise une combustion plus complète et peut augmenter à la fois le
couple à bas et moyen régime et la puissance à haut régime. De même, des
modifications au niveau de la culasse, comme l''agrandissement ou le polissage des
conduits d''admission et d''échappement, ou l''utilisation de soupapes de plus grand
diamètre, peuvent améliorer le flux des gaz à travers le moteur, contribuant ainsi à une
meilleure performance.
Enfin, le système d''échappement joue également un rôle. Un système d''échappement
moins restrictif (souvent appelé "ligne d''échappement sport") peut faciliter l''évacuation
des gaz brûlés, réduisant la contre-pression et permettant au moteur de fonctionner
plus librement, ce qui peut se traduire par un gain de puissance. Cependant, toute
modification matérielle doit être considérée avec soin, car elle peut affecter d''autres
aspects du fonctionnement du moteur et nécessiter des ajustements complémentaires
(comme une reprogrammation de la gestion moteur) pour obtenir les bénéfices
escomptés sans compromettre la fiabilité.
Source: * 5 moyens d’optimiser les performances de votre moteur - Samaro. Consulté
le 27 mai 2025, à l''adresse https://www.samaro.fr/nos-actualites/5-moyens-d-optimiser les-performances-de-votre-moteur/
Optimisation de la Chambre de Combustion et Turbulence
La conception de la chambre de combustion elle-même est un levier majeur pour
l''optimisation du rendement. La forme de la chambre, y compris la tête du piston,
influence directement la manière dont le mélange air-carburant se déplace et brûle. Une
conception optimisée vise à favoriser un mouvement de turbulence contrôlé à
l''intérieur du cylindre pendant les phases de compression et de combustion. Cette
turbulence est bénéfique car elle accélère le mélange de l''air et du carburant et
augmente la vitesse de propagation de la flamme. Une combustion plus rapide et plus
homogène permet d''extraire plus efficacement l''énergie du carburant et de réduire les
risques de combustion incomplète ou anormale (comme le cliquetis).
Les ingénieurs travaillent sur des géométries de chambre spécifiques, incluant la forme
du sommet du piston et l''orientation des soupapes, pour générer des mouvements de
gaz organisés (swirl, tumble) qui se transforment en turbulence fine au moment de la
combustion. L''objectif est de maintenir une vitesse et une stabilité de combustion
élevées, même avec des mélanges pauvres ou des taux de recirculation des gaz
d''échappement (EGR) élevés, qui sont d''autres stratégies pour améliorer le rendement
en réduisant les pertes thermiques et les émissions de NOx. L''optimisation de la forme
de la chambre doit également prendre en compte le rapport surface/volume pour
minimiser les pertes de chaleur vers les parois du cylindre, bien que cela puisse parfois
entrer en conflit avec la génération de turbulence.
Source: * Les moteurs thermiques dans le monde automobile - PFA (Plateforme
automobile). Consulté le 27 mai 2025, à l''adresse https://pfa-auto.fr/wp-content/
uploads/2020/06/DT_Moteurs-thermiques_2020_V12bis.pdf (Extrait du texte via
pdftotext)', 
'src/assets/images/Optimisation_de_Moteurs_Thermiques_-partie2.jpg'),
('MOD006_MOTEUR2',4, 'Systèmes d''Allumage et d''Injection-partie6', 
'Module 14 : Systèmes d''Allumage et d''Injection Rôle Crucial de l''Injection Le système d''injection joue un rôle absolument fondamental dans le fonction...', 
'Module 14 : Systèmes d''Allumage et d''Injection
Rôle Crucial de l''Injection
Le système d''injection joue un rôle absolument fondamental dans le fonctionnement
des moteurs thermiques modernes, qu''ils soient à essence ou diesel. Sa fonction
première est d''acheminer avec une très grande précision la quantité de carburant
nécessaire depuis le réservoir jusqu''aux cylindres du moteur, au moment opportun et
sous la forme la plus propice à une combustion efficace. Contrairement aux anciens
carburateurs qui réalisaient un mélange air-carburant plus approximatif en amont du
moteur, le système d''injection permet un dosage beaucoup plus fin et contrôlé, essentiel
pour optimiser les performances, réduire la consommation de carburant et limiter les
émissions polluantes conformément aux normes environnementales de plus en plus
strictes.
Le système prépare le mélange air-carburant nécessaire à la combustion. Il pulvérise le
carburant sous haute pression, soit directement dans la chambre de combustion
(injection directe), soit dans le collecteur d''admission juste avant la soupape
d''admission (injection indirecte). Cette pulvérisation fine assure une bonne vaporisation
et un mélange homogène avec l''air admis, conditions indispensables pour que
l''étincelle de la bougie (moteurs essence) ou la haute température due à la compression
(moteurs diesel) puisse enflammer efficacement ce mélange et générer la puissance
motrice.
Types d''Injection : Directe vs Indirecte
Il existe principalement deux types de systèmes d''injection :
Injection Indirecte : Historiquement plus ancienne pour les moteurs essence,
l''injection indirecte consiste à injecter le carburant dans le collecteur d''admission,
en amont de la soupape d''admission. Le mélange air-carburant se forme donc
avant d''entrer dans le cylindre. L''essence, injectée sous forme de fines gouttelettes,
se vaporise au contact de l''air chaud et des parois du collecteur. Ce système est
généralement plus simple et moins coûteux, mais offre un contrôle légèrement
moins précis de la combustion que l''injection directe. Pour les moteurs diesel,
l''injection indirecte (dans une préchambre ou une chambre de turbulence) est
devenue plus rare sur les véhicules légers modernes au profit de l''injection directe.
Injection Directe : Devenue la norme sur la plupart des moteurs essence et diesel
récents, l''injection directe pulvérise le carburant directement à l''intérieur du
cylindre, pendant la phase de compression ou parfois même pendant la phase
d''admission. Cela permet un contrôle très précis de la quantité de carburant
injectée, du moment de l''injection et de la forme du jet de carburant. Cette
précision offre des avantages significatifs en termes de rendement (réduction de la
consommation), de puissance et de réduction des émissions polluantes,
notamment en permettant des stratégies de combustion avancées
(fonctionnement en mélange pauvre stratifié, par exemple). Le système d''injection
directe, bien que plus complexe et fonctionnant à des pressions plus élevées, est
donc privilégié pour répondre aux exigences actuelles.
Le Système d''Allumage (Moteurs Essence)
Dans les moteurs à essence, une fois le mélange air-carburant comprimé dans le
cylindre, il faut une source d''énergie pour déclencher la combustion : c''est le rôle du
système d''allumage. Sa fonction est de générer une étincelle électrique de haute tension
entre les électrodes d''une bougie d''allumage, précisément au bon moment (calage de
l''allumage) vers la fin de la phase de compression. Cette étincelle enflamme le mélange
comprimé, provoquant l''expansion rapide des gaz qui repousse le piston.
Les systèmes d''allumage ont évolué : des anciens systèmes à vis platinées (rupteur) et
distributeur mécanique, on est passé aux systèmes d''allumage électronique, puis aux
systèmes d''allumage statique (sans distributeur). Les systèmes modernes utilisent
généralement une bobine d''allumage par cylindre (ou pour deux cylindres en allumage
jumostatique), commandée directement par le calculateur moteur (ECU). L''ECU
détermine le moment optimal pour l''étincelle en fonction de nombreux paramètres
(régime moteur, charge, température, etc.) pour maximiser l''efficacité et éviter les
combustions anormales comme le cliquetis.
Sources: * Le système d’injection : fonctionnement, pannes et symptômes - Auto-Doc
Club. Consulté le 28 mai 2025, à l''adresse https://club.auto-doc.fr/magazin/le-systeme  dinjection-fonctionnement-pannes-et-symptomes * Injecteur voiture : comment
identifier les pannes d’un système d’injection ? - Sipa Automobiles. Consulté le 28
mai 2025, à l''adresse https://www.sipa-automobiles.fr/fiches-pratiques-entretien/
injecteur-voiture-comment-identifier-les-pannes-dun-systeme-dinjection/ * Rôle et
fonctionnement de l''injection - Fiches Auto. Consulté le 28 mai 2025, à l''adresse https://
www.fiches-auto.fr/articles-auto/fonctionnement-d-une-auto/s-807-fonctionnement de-l-injection.php * Tout ce qu''il faut savoir sur le système d''allumage automobile ! -
Aurel Automobile. Consulté le 28 mai 2025, à l''adresse https://www.aurel-automobile.fr/
fr/tout-ce-qu--039-il-faut-savoir-sur-le-systeme-d--039-allumage-automobile---495', 
'src/assets/images/Systèmes_dAllumage_et_dInjection-partie6.jpg'),
('MOD007_MOTEUR2',4, 'Systèmes de Suralimentation-PARTIE7', 
'Module 15 : Systèmes de Suralimentation Principe et Objectifs de la Suralimentation La suralimentation est une technique essentielle dans l''ingénierie...', 
'Module 15 : Systèmes de Suralimentation
Principe et Objectifs de la Suralimentation
La suralimentation est une technique essentielle dans l''ingénierie des moteurs
thermiques modernes, visant principalement à augmenter la puissance et le couple d''un
moteur sans nécessairement augmenter sa cylindrée. Le principe fondamental est
d''accroître la quantité d''air admise dans les cylindres lors de la phase d''admission. En
forçant plus d''air (et donc plus d''oxygène) dans la chambre de combustion, il devient
possible de brûler une plus grande quantité de carburant, ce qui génère une pression de
combustion plus élevée et, par conséquent, plus de puissance. Un meilleur remplissage
des cylindres conduit également à une augmentation de la pression en fin de
compression, améliorant ainsi le rendement thermodynamique du moteur.
Historiquement associée aux moteurs sportifs, la suralimentation est aujourd''hui
largement utilisée dans le cadre du "downsizing". Cette approche consiste à réduire la
cylindrée des moteurs pour diminuer leur consommation de carburant et leurs
émissions de CO2 (notamment à faible charge), tout en utilisant la suralimentation pour
compenser la perte de puissance et maintenir des performances dynamiques
satisfaisantes, voire supérieures, lorsque nécessaire (phases d''accélération, pleine
charge).
Types de Systèmes de Suralimentation
Il existe principalement deux types de systèmes mécaniques pour suralimenter un
moteur, qui peuvent parfois être combinés :
Le Turbocompresseur ("Turbo") : C''est le système le plus répandu. Il utilise
l''énergie perdue des gaz d''échappement pour entraîner une turbine. Cette turbine
est reliée par un axe à un compresseur situé sur le circuit d''admission d''air. En
tournant à très haute vitesse (jusqu''à 250 000 tr/min), le compresseur aspire l''air
ambiant, le comprime et l''envoie sous pression vers les cylindres. L''avantage
principal est qu''il valorise une énergie autrement perdue. L''inconvénient majeur
est le "temps de réponse" ou "turbo lag", un délai entre l''accélération et l''arrivée
de la suralimentation, dû à l''inertie de la turbine qui doit être mise en vitesse par
les gaz d''échappement. La pression de suralimentation est régulée par le
calculateur moteur, souvent via une soupape de décharge ("Wastegate") qui dévie
une partie des gaz d''échappement pour limiter la vitesse de la turbine. Des turbos
à géométrie variable (TGV), plus courants sur les diesels mais apparaissant sur
certains essences, permettent d''optimiser le flux des gaz sur une plage de régime
plus large, améliorant le temps de réponse.
Le Compresseur Volumétrique : Contrairement au turbo, le compresseur
volumétrique est entraîné mécaniquement par le moteur lui-même, via une
courroie, une chaîne ou des engrenages. Il comprime l''air d''admission dès les bas
régimes, offrant ainsi une réponse instantanée et un couple important sans temps
de latence. Cependant, son entraînement consomme une partie de la puissance
produite par le moteur, ce qui peut légèrement pénaliser le rendement global par
rapport à un turbo. La régulation de la pression se fait souvent par un système de
bypass (renvoi de l''air comprimé vers l''admission) ou par un embrayage
électromagnétique qui désaccouple le compresseur lorsque la suralimentation
n''est pas nécessaire.
La Double Suralimentation (Twincharging) : Certains moteurs combinent un
compresseur volumétrique et un turbocompresseur pour cumuler les avantages
des deux systèmes. Typiquement, le compresseur assure la suralimentation à bas
régime (réponse immédiate), tandis que le turbocompresseur prend le relais à plus
haut régime (meilleur rendement). Des systèmes plus récents utilisent parfois un
compresseur électrique additionnel (alimenté par un réseau 48V) pour fournir un
boost instantané à bas régime avant que le turbo principal n''entre en action.
Pour optimiser l''efficacité de la suralimentation, les systèmes incluent souvent un
échangeur de chaleur (intercooler), qui refroidit l''air comprimé avant son entrée dans
les cylindres. L''air refroidi est plus dense, ce qui améliore encore le remplissage et réduit
les risques de cliquetis.
Source: * La suralimentation du moteur essence - Innovauto. Consulté le 28 mai 2025, à
l''adresse https://www.innovauto.org/essence/la-suralimentation-du-moteur-essence *
Moteur turbo et compresseur : avantages et inconvénients - LesFurets. Consulté le 28
mai 2025, à l''adresse https://www.lesfurets.com/assurance-auto/guide/turbo-ou compresseur-quels-avantages-et-inconvenients * Suralimentation, Turbocompresseur,
Compresseur - Automobile Sportive. Consulté le 28 mai 2025, à l''adresse https://
www.automobile-sportive.com/technique/suralimentation.php', 
'src/assets/images/Systèmes_de_Suralimentation-PARTIE7.jpg'),
('MOD008_MOTEUR2',4, 'Techniques avancées pour Moteurs-Partie8', 
'Module 16 : Techniques avancées pour Moteurs Thermiques - Partie 8 Systèmes de Combustion Innovants et Rendement Thermodynamique La recherche de rende...', 
'Module 16 : Techniques avancées pour Moteurs
Thermiques - Partie 8
Systèmes de Combustion Innovants et Rendement Thermodynamique
La recherche de rendements toujours plus élevés pour les moteurs thermiques, en
particulier les moteurs à essence, pousse les ingénieurs à développer des systèmes de
combustion en rupture avec les conceptions traditionnelles. L''objectif est de maximiser
l''extraction d''énergie du carburant tout en minimisant les pertes et les émissions. Un axe
majeur de développement concerne l''amélioration du rendement thermodynamique via
des taux de compression plus élevés et une gestion optimisée des flux gazeux et de la
combustion elle-même.
Des concepts innovants comme la technologie Swumble™ développée par IFPEN
illustrent cette tendance. Ce système de combustion vise à créer une aérodynamique
interne spécifique dans la chambre de combustion, générant un très haut niveau de
turbulence au moment de l''allumage. Cette turbulence intense permet une combustion
très rapide et stable, même avec des taux de dilution élevés (par EGR ou IGR) ou en
utilisant des cycles thermodynamiques modifiés comme le cycle Miller. L''avantage est
double : la combustion rapide améliore l''efficacité et la dilution réduit les pertes
thermiques et les émissions de NOx. Cette approche permet d''atteindre des taux de
compression géométriques très élevés (supérieurs à 13:1) et des rendements effectifs
maximums dépassant les 43%, tout en réduisant significativement les émissions de
particules fines.
Utilisation de Carburants Bas Carbone et Hydrogène
Une autre voie essentielle pour l''avenir des moteurs thermiques réside dans leur
adaptation à des carburants à faible empreinte carbone. Cela inclut les biocarburants
avancés, les carburants de synthèse (e-fuels) produits à partir d''électricité
renouvelable et de CO2 capturé, ainsi que l''hydrogène (H2) utilisé comme carburant
direct.
L''utilisation de ces carburants nécessite une expertise approfondie pour comprendre
leur comportement lors de la combustion, leur compatibilité avec les matériaux du
moteur et du système d''alimentation, et leur impact sur les émissions. Par exemple,
certains carburants alternatifs peuvent avoir un indice d''octane (RON) très élevé
(supérieur à 100), ce qui permet d''augmenter encore le taux de compression et donc le
rendement du moteur, ou de repousser les limites du cliquetis. L''hydrogène, en
particulier, présente des caractéristiques de combustion très différentes (vitesse de
flamme élevée, pas d''émissions de carbone) qui nécessitent des adaptations spécifiques
du système d''injection, d''allumage et de la conception de la chambre de combustion
pour éviter les combustions anormales (comme le retour de flamme) et contrôler les
émissions de NOx (qui peuvent augmenter en raison des hautes températures de
combustion).
Des recherches actives sont menées pour développer des technologies clés (systèmes de
combustion, boucle d''air, contrôle moteur) spécifiquement optimisées pour l''hydrogène
ou d''autres e-fuels, afin de maximiser les bénéfices environnementaux et énergétiques
de ces nouveaux vecteurs énergétiques dans les motorisations thermiques du futur,
notamment pour les applications où l''électrification complète est difficile (poids lourds,
transport maritime, aéronautique).', 
'src/assets/images/Techniques_avancées_pour_Moteurs-Partie8.jpg'),
('MOD001_EEMB1',5, 'Comprendre l''Électronique Embarquée – Partie 1', 
'Absolument ! Voici une version développée de cette première leçon sur l''électronique embarquée, conçue pour être claire et accessible. Comprendre l''É...', 
'Absolument ! Voici une version développée de cette première leçon sur l''électronique embarquée, conçue pour être claire et accessible.
Comprendre l''Électronique Embarquée – Partie 1
Objectifs de cette leçon : 🎯
À la fin de cette leçon, vous serez capable de :
* Comprendre ce qu''est l''électronique embarquée : vous saurez expliquer ce que signifie le terme "embarqué" et pourquoi ce n''est pas la même chose qu''un ordinateur personnel classique.
* Identifier les composants essentiels d''un système embarqué : vous pourrez reconnaître les "briques" de base qui permettent à ces systèmes de fonctionner.
* Connaître les applications les plus courantes : vous aurez une idée claire d''où l''on trouve ces systèmes et comment ils sont utilisés dans notre vie de tous les jours.
Qu''est-ce que l''Électronique Embarquée ? 💡
L''électronique embarquée fait référence à tous les systèmes électroniques qui sont intégrés directement à l''intérieur d''équipements plus grands dans le but d''accomplir une tâche bien précise. Le mot clé ici est "embarqué", ce qui signifie qu''ils font partie intégrante de l''appareil qu''ils contrôlent, souvent de manière invisible pour l''utilisateur.
La grande différence avec un ordinateur personnel (PC) ou un smartphone, c''est leur spécialisation. Votre ordinateur est un système généraliste : vous pouvez l''utiliser pour naviguer sur internet, écrire du texte, jouer à des jeux, etc. Un système embarqué, lui, est dédié à une ou plusieurs fonctions spécifiques pour lesquelles il a été conçu et optimisé. Par exemple, le système électronique qui gère le moteur de votre voiture n''est pas conçu pour naviguer sur internet ; sa seule mission est d''assurer le bon fonctionnement du moteur.
Ces systèmes sont conçus pour être autonomes, fiables et souvent pour fonctionner avec des ressources limitées (en termes de puissance de calcul, de mémoire ou d''énergie).
Les Composants de Base d''un Système Embarqué ⚙️
Pour qu''un système embarqué puisse fonctionner, il a besoin de plusieurs éléments essentiels qui travaillent ensemble :
* Le Microcontrôleur (MCU) – Le Cerveau 🧠 :
C''est véritablement le cœur ou le cerveau du système embarqué. Le microcontrôleur est une puce électronique (un circuit intégré) très spéciale qui exécute le programme informatique (le logiciel embarqué ou firmware) qui lui dit quoi faire. La particularité d''un microcontrôleur est qu''il intègre sur une seule puce les éléments principaux d''un petit ordinateur :

   * Un processeur (CPU) : qui effectue les calculs et exécute les instructions du programme.
   * De la mémoire : pour stocker le programme et les données.
   * Des périphériques d''entrée/sortie (I/O) : qui lui permettent de communiquer avec les autres composants du système (capteurs, actionneurs, etc.). Pensez-y comme à un chef d''orchestre miniature qui dirige tous les musiciens (les autres composants) pour jouer une symphonie (la tâche spécifique).
   * La Mémoire – Le Bloc-notes et la Bibliothèque 📚 :
Tout système informatique a besoin de mémoire. Dans un système embarqué, on trouve principalement :

      * La mémoire Flash : C''est une mémoire non volatile (elle conserve les informations même quand l''alimentation est coupée). Elle est utilisée pour stocker le programme (le firmware) que le microcontrôleur doit exécuter. C''est un peu la bibliothèque où sont rangées les partitions du chef d''orchestre.
      * La mémoire RAM (Random Access Memory) : C''est une mémoire volatile (elle perd ses informations quand l''alimentation est coupée). Elle sert à stocker les données temporaires pendant que le programme s''exécute (par exemple, les résultats intermédiaires d''un calcul, l''état actuel d''un capteur). C''est le bloc-notes du chef d''orchestre.
      * Parfois, on trouve aussi de l''EEPROM (Electrically Erasable Programmable Read-Only Memory) : C''est une autre mémoire non volatile, souvent utilisée pour stocker des paramètres de configuration ou des réglages qui doivent persister même après une coupure de courant et qui peuvent être modifiés de temps en temps.
      * Les Capteurs – Les Sens du Système 👀👂✋ :
Les capteurs sont les dispositifs qui permettent au système embarqué de recueillir des informations sur son environnement ou sur l''appareil qu''il contrôle. Ils transforment une grandeur physique (comme la température, la lumière, la pression, la vitesse, la position, etc.) en un signal électrique que le microcontrôleur peut comprendre.
Par exemple, le thermostat de votre chauffage utilise un capteur de température, votre téléphone utilise un accéléromètre (un type de capteur) pour savoir si vous le tenez en mode portrait ou paysage.

      * Les Actionneurs – Les Muscles du Système 💪🦾 :
Les actionneurs sont les composants qui permettent au système embarqué d''agir sur son environnement ou sur l''appareil. Ils reçoivent des ordres (des signaux électriques) du microcontrôleur et effectuent une action physique.
Quelques exemples courants incluent : les moteurs (pour faire tourner quelque chose), les relais (qui agissent comme des interrupteurs commandés pour allumer ou éteindre des appareils plus puissants), les LEDs (pour afficher des informations lumineuses), les vannes (pour contrôler un flux de liquide ou de gaz).

      * Les Interfaces de Communication – Les Traducteurs et Messagers 🗣️🤝 :
Pour que tous ces composants puissent travailler ensemble, et parfois pour que le système embarqué puisse communiquer avec d''autres systèmes (un autre calculateur, un ordinateur de diagnostic, etc.), il a besoin d''interfaces de communication. Ce sont des protocoles et des circuits qui définissent comment les données sont échangées. Parmi les plus courants, on trouve :

         * UART (Universal Asynchronous Receiver/Transmitter) : Souvent utilisé pour des communications série simples entre deux dispositifs.
         * SPI (Serial Peripheral Interface) et I2C (Inter-Integrated Circuit) : Utilisés pour la communication entre circuits intégrés sur une même carte électronique, par exemple entre un microcontrôleur et des capteurs ou des mémoires.
         * CAN (Controller Area Network) : Très répandu dans l''automobile pour la communication entre les différents calculateurs du véhicule. Ces interfaces assurent que les messages sont envoyés et reçus correctement.



Quelques Applications Courantes des Systèmes Embarqués 🚗💡🩺✈️📱
L''électronique embarquée est partout autour de nous, souvent sans même que nous nous en rendions compte ! Voici quelques exemples pour illustrer leur omniprésence :
         * Dans l''Automobile 🚘 : C''est l''un des domaines où l''électronique embarquée est la plus visible. On la trouve dans le calculateur moteur (qui gère l''injection, l''allumage), le système ABS (antiblocage des roues), l''airbag, la climatisation automatique, le système de navigation GPS, l''aide au stationnement, et de plus en plus dans les systèmes d''aide à la conduite (ADAS).
         * Dans l''Électroménager 🧺🧊📺 : Votre machine à laver utilise un système embarqué pour gérer les cycles de lavage, votre four à micro-ondes pour contrôler la cuisson, votre réfrigérateur intelligent pour gérer la température et parfois même les stocks, et votre téléviseur moderne pour décoder les signaux et offrir des fonctionnalités connectées.
         * Dans l''Aéronautique et le Spatial ✈️🛰️ : Les avions modernes dépendent massivement des systèmes embarqués pour le contrôle de vol (pilote automatique), la navigation, la gestion des moteurs, et la communication. Les satellites et les fusées en sont également truffés.
         * Dans les Dispositifs Médicaux 🩺❤️ : De nombreux équipements médicaux critiques intègrent de l''électronique embarquée, comme les pompes à insuline programmables, les pacemakers, les moniteurs de signes vitaux, ou les appareils d''imagerie médicale. La fiabilité y est absolument cruciale.
         * Dans les Télécommunications 🌐📞 : Les routeurs internet, les modems, les stations de base pour la téléphonie mobile, et même votre smartphone (qui est en soi un ensemble très complexe de multiples systèmes embarqués) dépendent de ces technologies pour gérer les flux de données et les communications.
Cette liste est loin d''être exhaustive, mais elle vous donne une bonne idée de la diversité des applications de l''électronique embarquée.', 
'src/assets/images/Comprendre_lÉlectronique_Embarquée_-_Partie_1.jpg'),
('MOD002_EEMB1', 5, 'Diagnostiquer l''Électronique Embarquée – Partie 2', 
'﻿Voici une version développée pour votre leçon "Diagnostiquer l''Électronique Embarquée - Partie 2". Diagnostiquer l''Électronique Embarquée – Partie 2...', 
'﻿Voici une version développée pour votre leçon "Diagnostiquer l''Électronique Embarquée - Partie 2".
Diagnostiquer l''Électronique Embarquée – Partie 2



Objectifs de cette leçon : 🎯
À la fin de cette leçon, vous serez capable de :
* Comprendre la méthodologie de diagnostic : vous apprendrez à suivre une approche logique et structurée pour identifier et résoudre une panne dans un système électronique embarqué.
* Identifier les pannes les plus typiques : vous pourrez reconnaître les symptômes et les causes des défauts les plus fréquemment rencontrés.
________________


Introduction au Diagnostic : Observer et Comprendre les Symptômes 🔍
Le point de départ de tout diagnostic en électronique embarquée est l''observation attentive des symptômes. Avant même de penser à sortir le moindre outil, il faut comprendre comment la panne se manifeste.
Concrètement, cela signifie identifier ce qui ne va pas. Est-ce que le système refuse de s''allumer complètement ? Fonctionne-t-il mais de manière erratique ou instable (par exemple, il redémarre sans cesse, se bloque, ou ses performances sont dégradées) ? Fournit-il des informations incorrectes ou incohérentes (par exemple, un capteur de température qui affiche une valeur manifestement fausse) ? Ou peut-être qu''une fonction spécifique du système est en panne alors que le reste semble normal ?
Bien décrire et comprendre ces symptômes visibles ou fonctionnels est la première étape cruciale, car cela orientera toutes vos démarches ultérieures.
________________


Les Étapes Clés d''un Diagnostic Logique et Structuré 🛠️
Pour ne pas se perdre et pour être efficace, un diagnostic doit suivre une méthode. Voici les étapes fondamentales :
1. Analyse du Fonctionnement Attendu – Savoir Comment Ça Devrait Marcher 🤔 :
Avant de pouvoir dire ce qui est anormal, il faut parfaitement comprendre ce que le système est censé faire en temps normal. Cela implique de connaître ses fonctions principales, son comportement attendu dans différentes situations, et les interactions entre ses différents composants. Si vous ne savez pas comment le système doit fonctionner correctement, il sera très difficile de déterminer pourquoi il ne fonctionne pas. Pensez à consulter la documentation technique, les manuels d''utilisation ou les schémas si vous en disposez.

2. Vérification Visuelle Détaillée – L''Inspection à l''Œil Nu (et à la Loupe !) 👀 :
Une fois que vous savez ce que vous cherchez, une inspection visuelle minutieuse de la carte électronique et de ses composants peut révéler de nombreuses pannes évidentes. Soyez attentif et recherchez :

   * Des composants visiblement grillés ou brûlés (traces noires, fissures, déformations).
   * Des zones de la carte électronique (PCB) présentant des traces de surchauffe (brunissement du circuit imprimé).
   * De l''oxydation ou de la corrosion (souvent verdâtre ou blanchâtre), en particulier sur les connecteurs ou les pattes des composants, ce qui peut indiquer une exposition à l''humidité.
   * Des soudures défectueuses (fissurées, sèches, ou des "pâtés" de soudure créant des courts-circuits).
   * Des composants dessoudés ou mal insérés.
   * Des condensateurs gonflés ou qui fuient (surtout les condensateurs électrolytiques).
   * Des pistes de circuit imprimé coupées ou endommagées. N''hésitez pas à utiliser une loupe ou un microscope si nécessaire pour les détails fins.
   3. Tests de Base avec le Multimètre – Les Premières Mesures Essentielles 📏⚡ :
Si l''inspection visuelle ne révèle rien d''évident, le multimètre devient votre meilleur allié. Il permet d''effectuer des vérifications fondamentales :

      * Mesurer les tensions d''alimentation : Vérifiez que les tensions d''alimentation correctes (par exemple, 12V, 5V, 3.3V) arrivent bien aux bons endroits sur la carte et sur les broches d''alimentation des composants clés comme le microcontrôleur ou les régulateurs de tension. Une absence de tension ou une tension incorrecte est une cause de panne très fréquente.
      * Tester la continuité des pistes et des connexions : En mode "continuité" (souvent avec un bip sonore), vérifiez que les pistes du circuit imprimé ne sont pas coupées, que les fusibles sont bons, et que les connexions entre les différents points du circuit sont bien établies comme elles devraient l''être selon le schéma.
      * Vérifier l''absence de courts-circuits : Contrôlez qu''il n''y a pas de courts-circuits francs entre les lignes d''alimentation et la masse, ou entre des pistes qui ne devraient pas être connectées. Un court-circuit peut empêcher un système de démarrer ou endommager des composants.
      4. Lecture des Codes d''Erreurs (si applicable) – Écouter Ce Que Dit le Système 💻🚗 :
De nombreux systèmes embarqués complexes, notamment dans le domaine automobile, intègrent des capacités d''autodiagnostic. Ils peuvent enregistrer des codes de défauts (DTC - Diagnostic Trouble Codes) lorsqu''un problème est détecté.

         * Pour les véhicules, des interfaces standardisées comme la prise OBD (On-Board Diagnostics) permettent, à l''aide d''un outil de diagnostic ("valise" ou scanner OBD), de lire ces codes. Chaque code correspond à un problème spécifique identifié par un calculateur.
         * Sur des systèmes industriels ou d''autres types, la communication via des bus comme le CAN peut aussi permettre d''extraire des informations d''état ou des codes d''erreur à l''aide d''outils spécifiques. Ces codes sont une aide précieuse car ils peuvent orienter rapidement le diagnostic vers un composant ou un sous-système particulier, mais attention, ils indiquent souvent un symptôme et pas toujours la cause racine.
________________


Pannes Typiques et Symptômes Associés en Électronique Embarquée ⚠️
Avec l''expérience, vous apprendrez à reconnaître certaines pannes qui reviennent fréquemment :
         * Absence totale de tension d''alimentation : Le système est complètement "mort", rien ne s''allume. Cela peut être dû à un fusible grillé, un problème sur le connecteur d''alimentation, une piste d''alimentation coupée, ou un régulateur de tension principal défectueux.
         * Masse manquante ou défectueuse : Une mauvaise connexion à la masse peut entraîner des comportements très erratiques, des tensions instables, ou un non-fonctionnement partiel ou total. C''est une panne parfois difficile à identifier mais cruciale.
         * Composants d''alimentation défectueux :
         * Les régulateurs de tension qui ne fournissent plus la bonne tension de sortie (trop haute, trop basse, ou nulle).
         * Les condensateurs de filtrage (surtout les électrolytiques) qui sont gonflés, qui fuient, ou qui ont perdu leur capacité, provoquant des instabilités d''alimentation ou des dysfonctionnements.
         * Résistances brûlées ou coupées : Une résistance peut brûler si elle est traversée par un courant excessif (souvent le symptôme d''un autre problème) ou se couper avec le temps. Cela peut interrompre le fonctionnement d''une partie du circuit.
         * Problèmes de soudure : Des soudures sèches, fissurées (surtout avec les vibrations ou les cycles thermiques) ou des "ponts" de soudure accidentels entre deux pastilles.
         * Défaillance du microcontrôleur ou d''un circuit intégré principal : C''est souvent plus difficile à diagnostiquer sans équipement spécifique, mais cela peut arriver, notamment après une surtension ou une surchauffe.
         * Corruption du firmware (logiciel embarqué) : Dans de rares cas, le programme stocké dans la mémoire Flash peut être corrompu, empêchant le système de démarrer correctement.
Comprendre ces pannes typiques et savoir comment les rechercher en suivant une méthodologie structurée vous rendra beaucoup plus efficace dans vos diagnostics.', 
'src/assets/images/Diagnostiquer_lÉlectronique_Embarquée_-_Partie_2.jpg'),
('MOD003_EEMB1',5, 'Diagnostiquer l''Électronique Embarquée – Partie 3', 
'﻿Voici une version développée pour votre leçon "Diagnostiquer l''Électronique Embarquée - Partie 3". Diagnostiquer l''Électronique Embarquée – Partie 3...', 
'﻿Voici une version développée pour votre leçon "Diagnostiquer l''Électronique Embarquée - Partie 3".
Diagnostiquer l''Électronique Embarquée – Partie 3
________________


Objectifs de cette leçon : 🎯
À la fin de cette leçon, vous serez capable de :
* Apprendre à utiliser l''oscilloscope : vous saurez comment connecter correctement cet instrument et effectuer les réglages de base pour visualiser les signaux électriques.
* Analyser des signaux numériques et analogiques : vous pourrez distinguer ces deux grands types de signaux et commencer à repérer des anomalies visuelles.
________________


L''Oscilloscope : Une Fenêtre sur les Signaux Électriques 📈
Imaginez pouvoir "voir" l''électricité circuler dans un fil. C''est un peu ce que permet l''oscilloscope ! C''est un outil de diagnostic électronique puissant qui affiche une représentation graphique des signaux électriques. Plus précisément, il montre comment la tension (l''amplitude) d''un signal évolue en fonction du temps.
Contrairement à un multimètre qui vous donne une valeur chiffrée à un instant T (par exemple, 5 Volts), l''oscilloscope vous montre la "forme" du signal, sa dynamique, ce qui est indispensable pour comprendre le comportement de nombreux composants et circuits électroniques, surtout ceux qui gèrent des signaux rapides ou complexes.
________________


Prise en Main et Réglages de Base de l''Oscilloscope 🛠️
Savoir utiliser un oscilloscope peut sembler intimidant au début, mais en comprenant quelques réglages fondamentaux, cela devient beaucoup plus accessible.
* Brancher la Sonde Correctement – La Clé d''une Bonne Mesure :
La sonde de l''oscilloscope est le câble qui permet de "capter" le signal que vous voulez mesurer. Elle possède typiquement deux connexions :

   * La pince de masse (souvent noire avec une pince crocodile) : Elle DOIT être connectée à un point de masse fiable du circuit que vous testez. C''est la référence (le "zéro Volt") par rapport à laquelle le signal sera mesuré. Une mauvaise connexion de masse est une source fréquente d''erreurs de mesure ou de signaux bruités.
   * La pointe de mesure (la pointe de la sonde) : C''est elle que vous allez mettre en contact avec le point du circuit dont vous voulez visualiser le signal (par exemple, la sortie d''un capteur, une broche d''un microcontrôleur). Assurez-vous que la sonde est bien calibrée avec l''oscilloscope (une procédure simple souvent indiquée sur l''appareil) pour garantir la précision des mesures.
   * Régler la Base de Temps (Axe Horizontal) – Voir l''Évolution dans le Temps :
L''axe horizontal de l''écran de l''oscilloscope représente le temps. Le réglage de la base de temps (souvent exprimé en secondes, millisecondes, ou microsecondes par division – s/div, ms/div, µs/div) vous permet de "zoomer" ou "dézoomer" sur le signal dans le temps.

      * Si la base de temps est trop rapide, vous ne verrez qu''une toute petite portion du signal.
      * Si elle est trop lente, le signal sera compressé et les détails rapides seront invisibles. Il faut ajuster ce réglage pour que la portion du signal qui vous intéresse soit bien visible à l''écran, affichant par exemple un ou plusieurs cycles complets d''un signal périodique.
      * Régler la Sensibilité Verticale (Axe Vertical) – Ajuster l''Amplitude :
L''axe vertical de l''écran représente la tension du signal. Le réglage de la sensibilité verticale (ou amplificateur vertical, souvent exprimé en Volts par division – V/div ou mV/div) permet d''ajuster l''échelle verticale pour que l''amplitude du signal occupe une bonne partie de l''écran, sans être ni trop petite (difficile à voir) ni trop grande (le signal sort de l''écran).
Le but est d''avoir une vue claire de l''amplitude maximale et minimale du signal.

      * Le "Trigger" (Déclenchement) – Stabiliser l''Image (Notion importante) :
Bien que non listé initialement, le trigger (ou déclenchement) est un réglage crucial. Il permet de stabiliser l''affichage d''un signal répétitif en disant à l''oscilloscope à quel moment précis il doit commencer à "dessiner" le signal à l''écran. Sans un bon réglage du trigger, le signal pourrait défiler ou sauter de manière instable, rendant l''analyse impossible. Vous apprendrez à régler le niveau et la source du trigger.

________________


Analyser les Signaux : Que Peut-on Voir ? 🧐
Une fois le signal affiché correctement, l''analyse peut commencer. On distingue principalement deux familles de signaux :
         * Le Signal Analogique – Une Variation Continue :
Un signal analogique est une tension qui peut prendre une infinité de valeurs dans une plage donnée, variant de manière continue et fluide au fil du temps. Pensez à une rampe ou à une vague.

            * Exemple typique : La sortie d''un capteur de température analogique. Plus la température augmente, plus la tension de sortie du capteur peut augmenter (ou diminuer) progressivement. D''autres exemples incluent les signaux audio, ou la sortie d''un capteur de pression analogique. Sur l''oscilloscope, vous verrez une courbe qui monte et descend, reflétant ces variations.
            * Le Signal Numérique – Des Niveaux Bien Définis :
Un signal numérique est une tension qui ne peut prendre qu''un nombre limité d''états discrets, le plus souvent deux niveaux bien distincts : un niveau bas (souvent interprété comme un "0" logique) et un niveau haut (interprété comme un "1" logique).

               * Exemple typique : Un signal de communication entre deux puces, où l''information est codée par des successions rapides de 0 et de 1. Un signal logique "0" pourrait être proche de 0 Volt, et un signal logique "1" pourrait être à +3.3 Volts ou +5 Volts. Les signaux d''horloge qui synchronisent les circuits numériques sont aussi de bons exemples. Sur l''oscilloscope, vous verrez des signaux qui ressemblent à des créneaux, passant rapidement d''un niveau à l''autre.
               * Observer la Forme du Signal pour Détecter les Anomalies :
Le grand intérêt de l''oscilloscope est de pouvoir visualiser la forme réelle du signal et de la comparer à la forme attendue. Cela permet de détecter de nombreuses anomalies :

                  * Bruit excessif : Le signal est "parasité" par de petites variations indésirables qui se superposent au signal utile. Cela peut indiquer des problèmes de blindage, de masse, ou des interférences.
                  * Absence totale de signal : Vous vous attendez à voir quelque chose, mais l''écran reste plat (ou affiche uniquement du bruit de fond). Cela peut indiquer un composant défectueux, une coupure dans le circuit, ou une absence d''alimentation.
                  * Forme déformée : Le signal est présent, mais sa forme n''est pas celle attendue. Par exemple, un signal carré qui a les coins arrondis, une amplitude trop faible ou trop élevée, une fréquence incorrecte, ou des "glitches" (impulsions parasites). Ces déformations peuvent donner des indices précieux sur la nature de la panne.
Apprendre à interpréter ces formes et ces anomalies demande de la pratique et une bonne connaissance du fonctionnement attendu du circuit que vous analysez. C''est une compétence clé pour tout technicien en électronique !', 
'src/assets/images/Diagnostiquer_lÉlectronique_Embarquée_-_Partie_3.jpg'),


('MOD004_EEMB1',5, 'Diagnostiquer l''Électronique Embarquée – Partie 4', 
'﻿Voici une version développée pour votre leçon "Diagnostiquer l''Électronique Embarquée - Partie 4". Diagnostiquer l''Électronique Embarquée – Partie 4...', 
'﻿Voici une version développée pour votre leçon "Diagnostiquer l''Électronique Embarquée - Partie 4".
Diagnostiquer l''Électronique Embarquée – Partie 4
________________


Objectifs de cette leçon : 🎯
À la fin de cette leçon, vous serez capable de :
* Diagnostiquer les problèmes d''origine logicielle : vous apprendrez à identifier les signes d''un bug dans le programme et à faire la distinction avec une défaillance matérielle.
* Utiliser les outils et techniques de débogage logiciel : vous connaîtrez les principales méthodes utilisées pour analyser le comportement d''un programme embarqué.
________________


Introduction aux Problèmes Logiciels dans les Systèmes Embarqués 🐞
Jusqu''à présent, nous avons surtout parlé de pannes matérielles (composants grillés, mauvaises connexions, etc.). Cependant, les erreurs dans les programmes informatiques embarqués (aussi appelées "bugs" ou "bogues") sont une autre source majeure de dysfonctionnements. Un système électronique peut être parfaitement fonctionnel d''un point de vue matériel, mais se comporter de manière totalement inattendue ou incorrecte à cause d''une erreur dans son code.
Distinguer un problème logiciel d''un problème matériel est une étape cruciale du diagnostic. Un bug peut se manifester par un système qui se bloque ("freeze"), redémarre en boucle, exécute une fonction de manière erronée, ou ne réagit pas correctement aux sollicitations externes (commandes utilisateur, signaux de capteurs).
________________


Méthodologie de Diagnostic des Problèmes Logiciels 💻
Lorsque l''on suspecte un problème logiciel, l''approche est différente de celle utilisée pour les pannes matérielles. Voici quelques étapes et outils couramment employés :
1. Vérifier le Téléchargement Correct du Programme – La Base de Tout ✅ :
Avant toute chose, il est fondamental de s''assurer que le bon programme (firmware) a été correctement et intégralement téléchargé dans la mémoire du microcontrôleur. Une erreur lors du processus de programmation (téléchargement interrompu, mauvais fichier, configuration incorrecte de l''outil de programmation) peut entraîner un non-démarrage ou un fonctionnement erratique. Souvent, les outils de programmation fournissent une confirmation de succès ou un moyen de vérifier l''intégrité du code téléchargé (par exemple, via une somme de contrôle ou "checksum").

2. Observer les Indicateurs Visuels : LEDs d''État ou de Diagnostic 🚥 :
De nombreux systèmes embarqués, même simples, utilisent des diodes électroluminescentes (LEDs) comme indicateurs visuels. Les développeurs programment souvent ces LEDs pour qu''elles signalent l''état du système : une LED qui clignote à une certaine fréquence peut indiquer un fonctionnement normal, une autre allumée en continu un état spécifique, ou une séquence de clignotements particulière peut signaler un code d''erreur interne. Apprendre à interpréter ces signaux lumineux, souvent décrits dans la documentation technique du produit, peut donner des indices précieux sur ce que fait (ou ne fait pas) le programme.

3. Utiliser un Débogueur Matériel (JTAG, SWD) – Regarder à l''Intérieur du Microcontrôleur 🕵️‍♂️ :
Pour une analyse en profondeur du comportement du logiciel, les développeurs utilisent des débogueurs matériels. Ce sont des outils qui se connectent au microcontrôleur via des interfaces spécifiques comme JTAG (Joint Test Action Group) ou SWD (Serial Wire Debug). Ces interfaces permettent, à l''aide d''un logiciel de débogage sur un ordinateur :

   * De contrôler l''exécution du programme : démarrer, arrêter (mettre en pause), exécuter pas à pas (instruction par instruction).
   * D''inspecter et de modifier l''état de la mémoire et des registres internes du microcontrôleur.
   * De définir des points d''arrêt (voir section suivante). C''est un peu comme avoir une loupe et une télécommande pour explorer l''exécution du programme en temps réel.
   4. Lire les Messages de Log Série via UART – Écouter les "Bavardages" du Programme 📨 :
Une technique très courante pour suivre ce que fait un programme est d''y insérer des instructions qui envoient des messages d''information (appelés "logs") via une interface de communication série comme l''UART. Ces messages peuvent ensuite être lus sur un ordinateur via une connexion USB (souvent via un convertisseur USB-Série) ou une liaison TTL directe, à l''aide d''un logiciel "terminal série". Le programmeur peut ainsi afficher des messages du type "Initialisation terminée", "Capteur X lu : valeur Y", ou "Erreur Z détectée". Cela permet de tracer le chemin d''exécution et de voir les valeurs de certaines variables à des moments clés.

________________


Techniques Courantes de Débogage Logiciel 🛠️📝
Les débogueurs matériels et les logs série ouvrent la porte à plusieurs techniques pour "traquer" les bugs :
      * Ajouter des Messages de Log Stratégiques dans le Code ("printf debugging") 💬 :
Même sans débogueur matériel sophistiqué, l''une des techniques les plus simples et les plus efficaces est d''insérer des instructions dans le code source du programme pour qu''il affiche des messages à des points clés de son exécution. Ces messages, souvent envoyés via l''UART, peuvent indiquer quelle partie du code est en train de s''exécuter ou afficher la valeur de variables importantes. C''est un moyen direct de "voir" ce que fait le programme de l''intérieur.

      * Définir des Points d''Arrêt (Breakpoints) pour Stopper l''Exécution 🛑 :
Lorsqu''on utilise un débogueur matériel, on peut définir des points d''arrêt (breakpoints). Un point d''arrêt est une instruction donnée au débogueur pour qu''il arrête (mette en pause) l''exécution du programme juste avant d''exécuter une ligne de code spécifique que vous avez choisie. Une fois l''exécution arrêtée, vous pouvez examiner l''état du système. Cela permet de vérifier si le programme atteint bien certaines sections critiques, et dans quel état il s''y trouve.

      * Consulter les Valeurs des Variables et l''État des Registres en Temps Réel 📊 :
Lorsque le programme est en pause (par exemple, à un point d''arrêt) ou pendant l''exécution pas à pas avec un débogueur, il est possible d''inspecter le contenu des variables utilisées par le programme, ainsi que l''état des registres internes du processeur. Cela permet de vérifier si les calculs se déroulent comme prévu, si les données reçues sont correctes, ou si une variable prend une valeur inattendue qui pourrait être la cause du bug. C''est une technique très puissante pour comprendre le flux de données et la logique interne du programme.

Identifier et corriger les bugs logiciels demande souvent de la patience, de la logique, et une bonne maîtrise de ces outils et techniques. C''est un aspect essentiel du développement et de la maintenance des systèmes électroniques embarqués.', 
'src/assets/images/Diagnostiquer_lÉlectronique_Embarquée_-_Partie_4.jpg'),
('MOD005_EEMB1',5, 'Diagnostiquer l''Électronique Embarquée – Partie 7', 
'﻿Voici une version développée pour votre leçon "Diagnostiquer l''Électronique Embarquée - Partie 7". Diagnostiquer l''Électronique Embarquée – Partie 7...', 
'﻿Voici une version développée pour votre leçon "Diagnostiquer l''Électronique Embarquée - Partie 7".
Diagnostiquer l''Électronique Embarquée – Partie 7
________________


Objectif de cette leçon : 🎯
À la fin de cette leçon, vous serez capable de :
* Identifier les défaillances de communication : vous comprendrez les problèmes courants qui peuvent perturber les échanges de données entre les différents composants d''un système électronique embarqué.
________________


Introduction aux Pannes de Communication entre Composants 💬🚫
Dans un système électronique embarqué, les différents composants (microcontrôleur, capteurs, actionneurs, autres modules) ne travaillent pas en isolation. Ils ont besoin de communiquer entre eux pour échanger des informations, des commandes et des données d''état. Ces échanges se font le plus souvent via des bus de communication série, où les données sont transmises bit par bit sur un ou plusieurs fils.
Lorsque ces échanges de données tombent en panne ou sont corrompus, le système peut se comporter de manière erratique, une fonction peut devenir inopérante, ou le système peut cesser de fonctionner complètement. Savoir diagnostiquer ces problèmes de communication est donc essentiel.
________________


Les Bus de Communication Fréquemment Rencontrés 🚌
Il existe plusieurs types de bus de communication, chacun ayant ses propres caractéristiques et domaines d''application privilégiés :
* UART (Universal Asynchronous Receiver/Transmitter) – La Liaison Simple ↔️ :
L''UART est un protocole de communication série asynchrone (il n''y a pas de signal d''horloge partagé entre l''émetteur et le récepteur pour la synchronisation des bits, celle-ci se fait via des bits de start et de stop). Il est relativement simple à mettre en œuvre et est typiquement utilisé pour la communication point à point entre deux composants seulement (par exemple, entre un microcontrôleur et un module GPS, ou pour envoyer des messages de log vers un ordinateur).

* I2C (Inter-Integrated Circuit) – Le Dialogue Multi-Périphériques Adressé 🏷️ :
L''I2C est un bus de communication série synchrone (utilisant un signal d''horloge SCL et un signal de données SDA) conçu pour la communication entre plusieurs circuits intégrés sur une même carte électronique, sur de courtes distances. Il permet de connecter plusieurs périphériques (esclaves) à un ou plusieurs maîtres, chaque périphérique étant identifié par une adresse unique. C''est très utilisé pour connecter des capteurs, des mémoires EEPROM, des horloges temps réel (RTC), etc., à un microcontrôleur.

* SPI (Serial Peripheral Interface) – La Communication Rapide Maître/Esclave 🚀 :
Le SPI est un autre bus de communication série synchrone, généralement plus rapide que l''I2C. Il fonctionne sur un modèle maître/esclave strict : un composant maître contrôle la communication avec un ou plusieurs composants esclaves. Il utilise typiquement quatre fils : SCLK (horloge), MOSI (Master Out Slave In – données du maître vers l''esclave), MISO (Master In Slave Out – données de l''esclave vers le maître), et SS (Slave Select – pour sélectionner l''esclave avec lequel communiquer). On le trouve souvent pour des communications à haut débit avec des mémoires Flash, des convertisseurs analogique-numérique rapides, ou des écrans.

* CAN (Controller Area Network) – Le Bus Robuste de l''Automobile 🚗 :
Le bus CAN est un protocole de communication série très robuste et fiable, conçu spécifiquement pour les environnements électromagnétiquement perturbés, comme celui d''une automobile. Il permet à de multiples calculateurs (ECU) de communiquer entre eux sur un bus partagé sans avoir besoin d''un maître centralisé. Les messages sont identifiés par un ID qui détermine aussi leur priorité. C''est le standard de communication dans la plupart des véhicules modernes pour des fonctions critiques (moteur, ABS, airbags) et de confort.

________________


Défauts Typiques des Systèmes de Communication 🚧
Les problèmes de communication peuvent avoir diverses origines :
   * Mauvais Branchements ou Fils Inversés/Coupés Wiring Fails 🔌✂️ :
C''est l''une des causes les plus élémentaires mais fréquentes. Si les fils de communication (Tx, Rx pour l''UART ; SDA, SCL pour l''I2C ; MOSI, MISO, SCLK, SS pour le SPI ; CAN_H, CAN_L pour le CAN) sont mal branchés, inversés, coupés, ou s''il y a un court-circuit entre eux ou avec la masse/l''alimentation, la communication sera impossible ou fortement perturbée. Une vérification minutieuse du câblage est toujours un bon point de départ.

   * Terminaisons de Bus Absentes ou Incorrectes (surtout sur CAN) Signal Bounces 튕김 :
Certains bus, comme le bus CAN, nécessitent des résistances de terminaison (typiquement de 120 Ohms) à chaque extrémité du bus physique. Ces résistances sont cruciales pour adapter l''impédance de la ligne et éviter les réflexions (rebonds) du signal qui peuvent corrompre les données. Si ces terminaisons sont absentes, mal dimensionnées, ou s''il y en a trop, cela peut entraîner des erreurs de communication importantes.

   * Vitesse de Communication (Baud Rate) Mal Configurée 🐢🐇 :
Pour que deux dispositifs puissent communiquer correctement via un bus série (en particulier pour l''UART ou le CAN), ils doivent être configurés pour utiliser la même vitesse de communication (exprimée en bauds ou bits par seconde). Si un appareil essaie d''envoyer des données à 9600 bauds et que l''autre s''attend à les recevoir à 115200 bauds, les données seront incompréhensibles. Il faut toujours s''assurer que les configurations de vitesse sont cohérentes de part et d''autre.

   * Problèmes d''Adressage (sur I2C) Address Conflict 🏢💥 :
Sur un bus I2C, si deux périphériques esclaves ont la même adresse, ou si le maître essaie de communiquer avec une adresse qui n''existe pas sur le bus, la communication échouera.

   * Niveaux Logiques Incompatibles Voltage Mismatch ⚡💔 :
Si un composant émet des signaux numériques avec des niveaux logiques de 3.3V et que le composant récepteur s''attend à des niveaux de 5V (ou inversement), la communication peut être peu fiable voire impossible sans adaptation de niveau.

________________


Outils pour Diagnostiquer les Problèmes de Communication 🛠️🔬
Pour "voir" ce qui se passe (ou ne se passe pas) sur un bus de communication, des outils spécifiques sont nécessaires :
      * L''Analyseur Logique – L''Enregistreur de Données Numériques 📼 :
Un analyseur logique est un instrument qui permet de capturer et d''enregistrer les états logiques (0 ou 1) de plusieurs signaux numériques simultanément sur une période donnée. Il est particulièrement utile pour visualiser les trames de données échangées sur des bus comme l''I2C, le SPI, ou l''UART. De nombreux analyseurs logiques disposent de décodeurs de protocole intégrés qui peuvent interpréter les bits capturés et afficher les données de manière lisible (par exemple, montrer les adresses I2C, les données transmises, etc.).

      * L''Oscilloscope – Le Visualiseur de la Forme du Signal ⚡👁️ :
L''oscilloscope est indispensable pour vérifier l''intégrité électrique des signaux sur le bus. Il permet de visualiser la forme réelle des signaux numériques, de vérifier que les niveaux logiques haut et bas sont corrects, qu''il n''y a pas de bruit excessif, que les temps de montée et de descente des signaux sont acceptables, et que le timing général est respecté (par exemple, pour les signaux d''horloge).

      * Les Logiciels Spécialisés – Les Interprètes de Haut Niveau 🗣️💡 :
Pour des bus plus complexes comme le CAN, il existe des logiciels spécialisés (par exemple, CANalyzer, BusMaster, ou des outils intégrés dans les valises de diagnostic automobile) qui peuvent se connecter au bus (souvent via une interface matérielle dédiée) pour capturer, filtrer, décoder et interpréter les trames de messages CAN de manière très détaillée. Ils permettent de voir quels calculateurs communiquent, quels messages sont échangés, et de détecter des erreurs de protocole.

En combinant l''utilisation de ces outils avec une bonne compréhension du fonctionnement du bus que vous analysez, vous serez bien équipé pour traquer les défaillances de communication.', 
'src/assets/images/Diagnostiquer_lÉlectronique_Embarquée_-_Partie_7.jpg'),
('MOD006_EEMB1',5, 'Introduction à l''Électronique Embarquée – Partie 5', 
'﻿Voici une version développée pour votre leçon "Introduction à l''Électronique Embarquée - Partie 5". Introduction à l''Électronique Embarquée – Partie...', 
'﻿Voici une version développée pour votre leçon "Introduction à l''Électronique Embarquée - Partie 5".
Introduction à l''Électronique Embarquée – Partie 5
________________


Objectifs de cette leçon : 🎯
À la fin de cette leçon, vous serez capable de :
* Revenir aux bases fondamentales : vous comprendrez mieux le lien essentiel entre le monde de l''électronique (le matériel) et celui de l''informatique (le logiciel) dans un système embarqué.
* Positionner l''électronique embarquée dans l''industrie : vous aurez une vision claire de son rôle crucial et de son impact global dans de nombreux secteurs.
________________


Le Pont entre le Monde Physique et le Monde Numérique 🌉
Au cœur de chaque système électronique embarqué se trouve une idée fondamentale : il agit comme un pont intelligent entre le monde physique qui nous entoure et le monde numérique des programmes informatiques.
Comment fait-il cela ?
* Il perçoit le monde physique grâce à des capteurs. Ces capteurs mesurent des grandeurs réelles (comme la température, la lumière, le mouvement, la pression) et les convertissent en signaux électriques. Ces signaux électriques sont ensuite transformés en données numériques que le programme peut comprendre.
* Il traite ces informations numériques grâce à un programme informatique (le firmware) qui s''exécute sur un microcontrôleur ou un microprocesseur. Ce programme contient la logique, les instructions et les algorithmes qui dictent comment réagir aux informations reçues.
* Il agit sur le monde physique en réponse, via des actionneurs. Le programme envoie des commandes (sous forme de signaux électriques) aux actionneurs (moteurs, vannes, LEDs, etc.) pour qu''ils effectuent une action concrète dans l''environnement.
Ainsi, un système embarqué n''est pas juste un assemblage de composants électroniques, ni juste un bout de code. C''est l''interaction étroite et continue entre le matériel électronique et le logiciel qui lui permet de remplir sa fonction spécifique en interagissant avec la réalité.
________________


L''Impact des Avancées Technologiques 🚀
L''omniprésence de l''électronique embarquée aujourd''hui est le résultat direct d''avancées technologiques spectaculaires au cours des dernières décennies, en particulier dans le domaine des semi-conducteurs et de la microélectronique.
Le principal moteur de cette révolution est la miniaturisation et l''augmentation de la puissance de calcul. Grâce à la loi de Moore (qui a longtemps prédit le doublement du nombre de transistors sur une puce tous les deux ans environ), il est devenu possible d''intégrer une capacité de traitement informatique de plus en plus grande dans des puces de plus en plus petites et consommant de moins en moins d''énergie.
Cela signifie qu''on peut aujourd''hui "embarquer" de l''intelligence et des fonctionnalités complexes dans des objets du quotidien très compacts, des appareils portables aux plus petits capteurs, ce qui était impensable il y a encore quelques années. Ces avancées ont également conduit à une baisse significative du coût des composants, rendant l''électronique embarquée accessible pour une multitude d''applications.
________________


L''Importance Cruciale de l''Électronique Embarquée dans l''Industrie et la Société 🌍
L''électronique embarquée a transformé et continue de transformer radicalement de nombreux secteurs industriels et aspects de notre vie quotidienne. Son importance repose sur plusieurs facteurs clés :
* Amélioration Significative des Performances et de l''Efficacité ✅ :
Les systèmes embarqués permettent une réaction beaucoup plus rapide et précise aux événements que ne le pourrait un système purement mécanique ou une intervention humaine pour certaines tâches. Ils autorisent des traitements automatisés complexes qui optimisent le fonctionnement des machines, réduisent les erreurs, améliorent la précision et augmentent l''efficacité globale des processus (par exemple, la gestion optimisée d''un moteur de voiture pour réduire la consommation et les émissions, ou le contrôle précis d''un processus industriel).

* Réduction des Coûts de Production et d''Exploitation 💰 :
Bien que la conception initiale d''un système embarqué puisse être complexe, la production en grande série de composants électroniques standardisés (microcontrôleurs, capteurs) a permis de réduire considérablement les coûts de fabrication des équipements. De plus, l''automatisation et l''optimisation qu''ils apportent peuvent entraîner une baisse des coûts d''exploitation et de maintenance à long terme.

* Vers une Intelligence Autonome et une Prise de Décision Décentralisée 🤖 :
L''un des impacts les plus profonds de l''électronique embarquée est sa capacité à doter les objets d''une forme d''intelligence autonome. Grâce aux programmes qu''ils exécutent et aux informations qu''ils collectent, ces systèmes peuvent souvent prendre des décisions et agir sans intervention humaine directe. Cela va de la simple régulation (un thermostat qui maintient une température) à des tâches beaucoup plus complexes comme celles que l''on trouve dans les systèmes d''aide à la conduite avancés (ADAS) ou la robotique autonome. Cette capacité à opérer de manière autonome ouvre la voie à des innovations majeures dans de nombreux domaines.

En résumé, l''électronique embarquée est une technologie habilitante, un moteur d''innovation qui rend nos appareils plus intelligents, plus efficaces, plus sûrs et souvent plus connectés. Sa compréhension est devenue essentielle pour quiconque s''intéresse à la technologie moderne.', 
'src/assets/images/Introduction_à_lÉlectronique_Embarquée_-_Partie_5.jpg'),
('MOD007_EEMB1',5, 'Maintenance de l''Électronique Embarquée – Partie 6', 
'﻿Voici une version développée pour votre leçon "Maintenance de l''Électronique Embarquée - Partie 6". Maintenance de l''Électronique Embarquée – Partie...', 
'﻿Voici une version développée pour votre leçon "Maintenance de l''Électronique Embarquée - Partie 6".
Maintenance de l''Électronique Embarquée – Partie 6
________________


Objectifs de cette leçon : 🎯
À la fin de cette leçon, vous serez capable de :
* Appliquer les principes de la maintenance préventive : vous saurez comment effectuer des actions régulières pour éviter que les pannes ne surviennent sur les systèmes électroniques embarqués.
* Connaître les outils indispensables : vous pourrez identifier les outils essentiels à utiliser pour entretenir et vérifier l''état de ces systèmes.
________________


La Maintenance Préventive : Anticiper pour Éviter les Pannes 🛡️
La maintenance préventive consiste à effectuer un entretien régulier et planifié des systèmes électroniques embarqués, même lorsqu''ils fonctionnent correctement, dans le but de réduire la probabilité qu''une panne se produise. C''est un peu comme faire la révision de sa voiture : on vérifie et on change certaines pièces avant qu''elles ne lâchent et ne causent un problème plus grave. Pour l''électronique embarquée, cette approche proactive est cruciale pour garantir la fiabilité et la longévité des équipements.
Voici les actions clés de la maintenance préventive :
* Nettoyage Méticuleux des Cartes et Composants 🧹💧 :
Avec le temps, la poussière peut s''accumuler sur les cartes électroniques. Si cette poussière devient humide (à cause de la condensation ou d''une exposition à l''humidité ambiante), elle peut devenir conductrice et provoquer des courts-circuits entre les pistes ou les broches des composants, entraînant des dysfonctionnements. De même, l''humidité directe peut causer de la corrosion. Un nettoyage régulier à l''aide d''air comprimé sec, de brosses antistatiques et, si nécessaire, de produits de nettoyage spécifiques pour l''électronique, permet d''éviter ces problèmes. Il est crucial de s''assurer que le système est hors tension et que les produits utilisés sont adaptés et complètement évaporés avant la remise sous tension.

* Vérification Attentive des Connexions Physiques 🔗🔌 :
Les pannes sont souvent dues à de simples problèmes de connexion. La maintenance préventive inclut donc une inspection rigoureuse :

   * Connecteurs : Vérifiez qu''ils sont bien enfichés, qu''il n''y a pas de jeu, de broches tordues ou de signes de corrosion. Un connecteur mal inséré ou oxydé peut entraîner des contacts intermittents ou une absence de signal.
   * Câbles et Faisceaux : Inspectez l''état des câbles pour détecter toute usure, coupure, pincement ou dégradation de l''isolant. Assurez-vous qu''ils ne sont pas soumis à des contraintes mécaniques excessives.
   * Soudures : Examinez visuellement les points de soudure, en particulier ceux des composants soumis à des vibrations ou à des contraintes thermiques. Recherchez des soudures sèches (aspect terne et granuleux), fissurées ou décollées. Une soudure défectueuse est une cause fréquente de pannes intermittentes.
   * Mise à Jour Régulière du Firmware (Logiciel Embarqué) 🔄 :
Le firmware, qui est le logiciel interne du microcontrôleur, peut contenir des bugs qui ne se révèlent qu''après un certain temps d''utilisation ou dans des conditions particulières. Les fabricants publient souvent des mises à jour de firmware pour corriger ces bugs logiciels identifiés, améliorer les performances, ou parfois ajouter de nouvelles fonctionnalités mineures. Appliquer ces mises à jour de manière préventive, en suivant scrupuleusement les instructions du fabricant, peut éviter des dysfonctionnements futurs liés à des erreurs logicielles connues.

________________


Les Outils Indispensables pour la Maintenance Électronique 🔧
Pour effectuer une maintenance préventive efficace et pour être prêt à intervenir en cas de besoin, certains outils sont incontournables :
      * Le Multimètre – Le Couteau Suisse de l''Électronicien 📏⚡ :
Cet outil polyvalent est essentiel pour la maintenance. Il permet de :

         * Mesurer les tensions d''alimentation : Pour vérifier que les composants reçoivent bien la tension correcte et stable nécessaire à leur bon fonctionnement.
         * Tester la continuité : Pour s''assurer qu''il n''y a pas de coupure dans un câble, une piste de circuit imprimé, ou un fusible.
         * Vérifier des valeurs de résistance, ou l''état de diodes (selon les fonctionnalités du multimètre).
         * Le Fer à Souder ou la Station de Soudage – Pour les Connexions Solides 🔥 :
Si une inspection visuelle révèle une soudure suspecte ou un composant dont les connexions semblent lâches, un fer à souder de bonne qualité (ou mieux, une station de soudage avec température contrôlée) est nécessaire pour refaire la soudure défectueuse ou réparer une connexion endommagée. Savoir effectuer une soudure propre et fiable est une compétence de base en maintenance électronique.

         * L''Oscilloscope – Pour "Voir" la Santé des Signaux 📊 :
Bien qu''il soit aussi un outil de diagnostic avancé, l''oscilloscope peut être utilisé en maintenance préventive pour vérifier périodiquement l''intégrité de signaux critiques (par exemple, des signaux d''horloge, des signaux de communication sur un bus). En comparant la forme du signal observé avec une forme de référence connue (quand le système fonctionne parfaitement), on peut parfois détecter des dégradations (bruit, distorsion, amplitude anormale) avant qu''elles ne provoquent une panne franche.

         * Le Programmeur/Débogueur – Pour le Cœur Logiciel 💻🧠 :
Principalement utilisé pour la mise à jour du firmware des microcontrôleurs, un programmateur (et parfois un débogueur matériel comme JTAG ou SWD) est indispensable. Il permet de charger la nouvelle version du logiciel dans le système. Dans un contexte de maintenance plus poussée, si des anomalies sont suspectées lors de vérifications préventives, un débogueur peut aider à réaliser des diagnostics logiciels plus approfondis pour comprendre l''état interne du programme.

En combinant une approche méthodique de maintenance préventive avec la maîtrise de ces outils essentiels, vous augmenterez significativement la fiabilité et la durée de vie des systèmes électroniques embarqués.', 
'src/assets/images/Maintenance_de_lÉlectronique_Embarquée_-_Partie_6.jpg'),
('MOD008_EEMB1',5, 'Maintenance de l''Électronique Embarquée – Partie 8', 
'﻿Voici une version développée pour votre leçon "Maintenance de l''Électronique Embarquée - Partie 8". Maintenance de l''Électronique Embarquée – Partie...', 
'﻿Voici une version développée pour votre leçon "Maintenance de l''Électronique Embarquée - Partie 8".
Maintenance de l''Électronique Embarquée – Partie 8
________________


Objectif de cette leçon : 🎯
À la fin de cette leçon, vous serez capable de :
* Réparer un système électronique embarqué en panne : vous saurez comment identifier et remplacer correctement les composants défectueux pour remettre un système en état de marche.
________________


La Maintenance Corrective : Intervenir Quand la Panne Est Là 🔧
Contrairement à la maintenance préventive qui vise à éviter les problèmes, la maintenance corrective intervient après qu''une panne s''est produite. L''objectif est de diagnostiquer précisément la cause du dysfonctionnement et d''effectuer les réparations nécessaires, ce qui implique souvent le remplacement d''un ou plusieurs composants électroniques défaillants.
Cette intervention demande de la méthode, de la précision et une bonne connaissance des techniques de manipulation des composants.
________________


Les Étapes Clés du Remplacement d''un Composant Défectueux 🛠️
Une fois la panne localisée et le composant coupable identifié, le processus de remplacement suit plusieurs étapes cruciales :
1. Identifier avec Certitude le Composant Fautif 🎯 :
Avant de dessouder quoi que ce soit, il est absolument essentiel d''avoir identifié correctement le composant défectueux. Cette identification est le fruit du diagnostic que vous avez mené précédemment, en utilisant des observations visuelles, des tests électriques (multimètre, oscilloscope), la lecture de codes d''erreur, ou l''analyse du comportement logiciel. Remplacer un composant au hasard est une perte de temps et peut même introduire de nouveaux problèmes. Assurez-vous d''avoir la bonne référence pour le composant de remplacement.

2. Dessouder Proprement le Composant Sans Endommager le Circuit Imprimé (PCB) 🔥➡️💨 :
C''est une étape délicate qui demande de la patience et le bon outillage. Le but est de retirer le composant défectueux sans surchauffer et endommager les pastilles de cuivre (pads) ou les pistes du circuit imprimé, ni les composants avoisinants.

   * Pour les composants traversants (avec des pattes qui traversent la carte), on utilise souvent une pompe à dessouder ou de la tresse à dessouder en conjonction avec un fer à souder pour retirer l''étain.
   * Pour les composants montés en surface (CMS/SMD), une station à air chaud est généralement plus adaptée, en appliquant la chaleur de manière contrôlée. Une chaleur excessive ou une force mécanique inappropriée peut arracher les pastilles ou décoller les pistes, rendant la réparation beaucoup plus compliquée, voire impossible.
   3. Nettoyer Soigneusement les Pistes et les Pastilles 🧼 :
Une fois le composant défectueux retiré, il est crucial de nettoyer la zone de travail sur le PCB. Enlevez les résidus de l''ancienne soudure et tout excès de flux de soudure. Les pastilles de cuivre doivent être propres, lisses et prêtes à recevoir le nouveau composant. On utilise pour cela de la tresse à dessouder pour enlever l''ancien étain, et des solvants spécifiques pour électronique (comme de l''alcool isopropylique) avec une brosse antistatique pour éliminer les résidus de flux et autres contaminants. Des pastilles propres garantissent une meilleure adhérence et une meilleure conductivité de la nouvelle soudure.

   4. Ressouder avec Soin le Nouveau Composant ✅ :
Le moment est venu de mettre en place le composant de remplacement. Assurez-vous qu''il est orienté correctement (attention à la polarité pour les condensateurs électrolytiques, les diodes, et au repère de la broche 1 pour les circuits intégrés).

      * Appliquez la bonne quantité de soudure pour obtenir un joint brillant, lisse et conique (pour les composants traversants) ou un bon "mouillage" sur les pattes et les pastilles (pour les CMS).
      * Utilisez la température de fer ou de station à air chaud adaptée au type de composant et de soudure.
      * Évitez les excès de soudure qui pourraient créer des courts-circuits (ponts de soudure) entre les broches ou les pastilles. La qualité de cette soudure est déterminante pour la fiabilité de la réparation.
________________


Tester Après Réparation : Vérifier le Succès de l''Intervention 🧐🔬
Une fois le nouveau composant soudé, la réparation n''est pas terminée. Il faut impérativement tester le système pour s''assurer que la panne a été corrigée et qu''aucune nouvelle anomalie n''a été introduite.
      * Effectuer des Mesures Électriques de Contrôle ⚡ :
Avant de remettre complètement le système sous tension pour un test fonctionnel complet (surtout si la panne initiale était un court-circuit ou une surtension), il peut être judicieux de faire quelques vérifications rapides au multimètre :

         * Vérifier l''absence de courts-circuits au niveau du composant remplacé et des zones avoisinantes.
         * Vérifier la continuité des nouvelles soudures si cela est pertinent. Une fois ces vérifications basiques effectuées, vous pouvez remettre le système sous tension et mesurer les tensions d''alimentation clés pour s''assurer qu''elles sont correctes et stables.
         * Vérifier le Fonctionnement Logiciel et Global du Système 💻👍 :
Le test ultime est de vérifier que le système remplit à nouveau toutes ses fonctions correctement.

            * Si le système a une interface utilisateur ou des indicateurs (LEDs, écran), observez si tout répond normalement aux commandes et affiche les bonnes informations.
            * Testez la fonctionnalité spécifique qui était en panne.
            * Si possible, lancez des séquences d''autotest si le système en dispose.
            * Surveillez le comportement du système pendant un certain temps pour vous assurer qu''il est stable et que la panne ne réapparaît pas de manière intermittente.
Une réparation réussie est une réparation qui non seulement corrige le défaut initial mais garantit aussi que le système est fiable pour une utilisation future.', 
'src/assets/images/Maintenance_de_lÉlectronique_Embarquée_-_Partie_8.jpg'),
('MOD001_CPE1',6, 'Comprendre la Carrosserie et Peinture (Partie 3)', 
'Module 3 : Comprendre la Carrosserie et Peinture (Partie 3) Objectifs pédagogiques : - Approfondir les propriétés des matériaux de carrosserie (acier,...', 
'Module 3 : Comprendre la Carrosserie et Peinture (Partie 3)
Objectifs pédagogiques :
- Approfondir les propriétés des matériaux de carrosserie (acier, aluminium, plastiques, composites) et les
conséquences des dommages (déformations, fragilités).
- Comprendre la chimie des peintures et apprêts : rôle des solvant, durcisseurs, catalyse, et enjeux
environnementaux (COV).
- Connaître les principaux procédés de réparation et de fabrication : formage manuel, soudage MIG/MAG,
rivetage structural, collage époxy . 
Introduction pédagogique :
À ce niveau confirmé, le technicien doit intégrer les mécanismes physiques et chimiques qui régissent la
réparation. Par exemple, l’absence de trait de soudure optimal peut affecter la tenue mécanique des tôles,
tout comme un mélange de peinture mal calculé dégrade la brillance. Ce module explique pourquoi on
utilise tel produit sur tel matériau, et introduit les méthodes de haute technologie (adhésifs structurels,
lasers de mesure) en carrosserie. 
3.1 Matériaux de carrosserie et alliages
Acier et aluminium : concepts de résistance, d’élasticité, de déformation plastique. Les aciers à
haute limite élastique nécessitent des outillages spécifiques pour redressement. Aluminium :
sensibilité à la fatigue du pli, nécessité de supports adaptés (poinçonnage, rivetage plutôt que
soudage direct). 
Plastiques et composites : thermoplastiques (pare-chocs, baguettes) vs thermodurcissables (fibre
de verre des moulures), techniques de réparation (plastic welding, colle cyanoacrylate, bouchons
thermoplastiques). 
Corrosion et galvanisation : compréhension des mécanismes d’oxydation, notion de corrosion
galvanique entre métaux (fer/aluminium). Importance des apprêts anticorrosion (reliques de zinc ou
phosphatation) . 
3.2 Chimie des peintures et apprêts
Composants de base : résine (liant), pigments, charges, solvants, additifs (agents de brillance,
siccatifs, durcisseurs). Exemple : un apprêt polyester durcit par peroxyde, les durcisseurs PU
contiennent de l’isocyanate . 
Systèmes monocomposant (1K) vs bicomposant (2K) : Le 1K (par ex. acrylique nitrocellulosique)
sèche par évaporation de solvant; le 2K (polyuréthane, époxy) nécessite mélange avec durcisseur
chimique . Cela rend le 2K plus durable et résistant aux solvants, mais exige une rigueur de pesée
et de temps de gâchage. 
Peintures base eau (hydrodiluables) : réduction des émissions volatiles obligatoires . Leur
application nécessite un bon contrôle de l’humidité et une recirculation d’air efficace dans la cabine. 
Comparatif des types de peinture :
Type de peinture Composants
principaux Usage typique Avantages / limites
1K
(monocomposant)
Résine acrylique ou
alkydé + solvants
Retouches rapides,
finitions brutes
Application facile, séchage
rapide, mais moins résistant
(UV, chocs) .
2K (bicomposant)
Résine PU/époxy +
durcisseur
(isocyanate/
polyamide)
Peinture complète,
zones exposées
Excellente résistance (UV,
chimiques) , finition
durable. Coût plus élevé;
respect des doses.
Hydrodiluable (PU)
Résine
polyuréthane +
solvant aqueux
Véhicules récents
conformes Env.
(COV)
Moindre impact sur
l’environnement, haute qualité,
mais nécessite contrôle très
strict du processus.
Époxy anticorrosion Résine époxy +
durcisseur aminé
Protection anticorrosion
(soubassement)
Très résistant aux chocs
mécaniques et chimiques,
mauvaise résistance UV (doit
être recouvert).
Brillant direct
(polyacrylique 2K)
Résine
polyacrylique +
durcisseur
Retouches et
petites surfaces
Ne nécessite pas de vernis
après couche base+couleur
, bonne brillance, mais
durée de vie plus courte.
3.3 Procédés de réparation avancés
Formage manuel: redressage de tôles en panne ou en coupelle à l’aide de marteaux, enclumes et
cales. Exemples : reprise d’une aile enfoncée par l’intérieur. 
Soudage et assemblage : techniques MIG/MAG sur aciers, MIG ou friction stir pour aluminium;
rivetage aveugle ou mécanique, boulonnage. Les adhésifs structural bicomposants (ex. 3M 7333)
peuvent renforcer ou même remplacer certains points de soudure/rivetage lorsque le constructeur
l’autorise . 
Réparation des plastiques : soudure plastique (thermique, coussin chauffant) et application de
tissus de fibre sur pare-chocs ou pièces en résine. 
Conclusion du module 3 (points clés) :
- Le choix du procédé dépend du matériau : acier contreplaqué vs aluminium vs composite ne se traitent
pas de la même façon. Les adhésifs structural modernes peuvent suppléer les soudures sous certaines
conditions (respect des spécifications OEM) .
- Les peintures bicomposants (2K) offrent une tenue bien supérieure aux 1K classiques , et les peintures
à base d’eau sont désormais la norme pour les finitions automobiles récentes .
- Connaître la composition chimique des apprêts et mastics (p. ex. polyester, acrylique, époxy) permet de
sélectionner le bon durcisseur et la bonne méthode de ponçage .', 
'src/assets/images/Comprendre_la_Carrosserie_et_Peinture_(Partie_3).jpg'),
('MOD002_CPE1',6, 'Comprendre la Carrosserie et Peinture (Partie 5)', 
'Module 5 : Comprendre la Carrosserie et Peinture (Partie 5) Objectifs pédagogiques : - Approfondir les procédés innovants et la réglementation dans le...', 
'Module 5 : Comprendre la Carrosserie et Peinture (Partie 5)
Objectifs pédagogiques :
- Approfondir les procédés innovants et la réglementation dans le domaine (adhésifs structuraux,
carrosseries légères, peinture écologique).
- Étudier les interactions entre matériaux – adhérences, dilatation, compatibilité des produits de traitement
(masse, apprêt, peinture) .
- Mettre en œuvre des méthodes de qualité et de contrôle (plan qualité du constructeur, fiches techniques,
correspondance colorimétrique). 
Introduction pédagogique :
Ce module révisite certains thèmes avancés et intègre les dernières technologies. Par exemple, l’arrivée des
carrosseries à haute teneur en aluminium ou composites renforce l’importance des colles spéciales et du
rivetage structuré . Les peintures quant à elles progressent (peintures anticorrosion multicouches,
vernis à nanoparticules), tout en devant répondre à de nouvelles normes environnementales (écoconception, COV). L’accent est mis sur la qualité en carrosserie (application stricte des procédures
constructeur) et sur les compétences transverses (gestion de chantier, relation client).
5.1 Techniques avancées et nouveaux matériaux
Adhésifs structural haute performance : exemples de colles époxy 2K (résistantes aux vibrations et
impacts) utilisées en remplacement ou en complément des rivets soudés . Avantages : meilleure
répartition des contraintes, étanchéité, absence de déformation localisée (pas de point chaud).
Limitations : respect rigoureux des surfaces (couchage à appliquer avant collage) et cure thermique
souvent nécessaire. 
Composites et matériaux avancés : intégration de pièces en fibre de carbone ou résines
thermoplastiques sur certains modèles. Discussion sur les réparations spécifiques (remplacement vs
réparation de composite, utilisation de résine chauffante UV). 
Législation et écoconception : à jour (normes européennes ou françaises) sur les émissions de COV
et de poussières, substances listées (ex. isocyanates). Examen de l’arrêté français limitant le taux de
COV dans les laques et vernis automobiles. 
5.2 Systèmes de peinture modernes
Peintures hydrodiluables et alternatives : évolution des formulations : les peintures waterborne
utilisent des microémulsions et résines modifiées pour égaler les finitions solvants. L’INRS souligne
que la plupart des peintures carrosserie sont désormais hydrodiluables pour les véhicules légers
. 
Nouveaux vernis : vernis céramique et nanotechnologies pour dureté accrue. Cependant, leur pose
requiert contrôle strict (température +24h de polymérisation). 
Gestion de la couleur : logiciels et bancs de couleurs permettant le mixage automatique.
Importance d’appliquer le bon facteur de glaçage (vernis). Sensibilisation aux « couleurs
dynamiques » (HUV, Perle) qui réagissent selon l’angle de vue. 
5.3 Gestion de la qualité et performance
Procédures constructeur : application systématique du Plan Qualité Carrosserie (PQC) et respect
des fiches méthodes. Par exemple, un atelier agréé PSA doit suivre des fiches technique détaillées
pour chaque réparation de soubassement ou pose de pièce en aluminium. 
Équipement de contrôle en fin de chantier : vérification du larmoiement de peinture (contrôle du
masquage, des panneaux). Gabarits et profilomètres pour contrôler le galbe des éléments finis. 
Étude de cas pratique : Simulation d’une révision qualité après réparation complète d’une aile fendue en
aluminium (vérifier épaisseur de peinture avec un échographe, contrôle du sirop de diluant, essai
d’adhérence au ruban de test). 
Conclusion du module 5 (points clés) :
- Les réparations modernes s’appuient sur des procédés collés très avancés ; connaître les produits
(temps de travail, cure) est aussi important que de maîtriser la soudure traditionnelle.
- Le passage aux peintures à base d’eau est maintenant la norme et nécessite de nouvelles habitudes
d’application .
- La qualité est assurée en suivant à la lettre les prescriptions des constructeurs (procédés, doses, temps de
séchage).', 
'src/assets/images/Comprendre_la_Carrosserie_et_Peinture_(Partie_5).jpg'),
('MOD003_CPE1',6, 'Diagnostiquer Carrosserie et Peinture (Partie 4)', 
'Module 4 : Diagnostiquer Carrosserie et Peinture (Partie 4) Objectifs pédagogiques : - Savoir évaluer un dommage de carrosserie (collision, corrosion,...', 
'Module 4 : Diagnostiquer Carrosserie et Peinture (Partie 4)
Objectifs pédagogiques :
- Savoir évaluer un dommage de carrosserie (collision, corrosion, déformation) et en déterminer l’étendue
exacte (structurelle ou non-structurelle).
- Maîtriser l’utilisation des outils de mesure (palpeur électronique, pont de redressage, scanner 3D) pour
contrôler le planéité du châssis et des soubassements accidentés .
- Diagnostiquer les défauts de peinture courants (manque de brillance, inclusions, granulométrie) et
comprendre leurs causes (problème de pulvérisation, conditions d’application, mauvais mélange). 
Introduction pédagogique :
Avant toute intervention, il est crucial de réaliser un diagnostic précis. Une erreur de diagnostic peut
conduire à un travail de mauvaise qualité ou dangereux (par ex. roue mal alignée après perçage de
soubassement). Ce module détaille les procédures de contrôle dimensionnel des véhicules accidentés
(géométrie des trains roulants, alignement de caisse) , ainsi que les méthodes de repérage des défauts
de peinture via l’observation visuelle et l’auscultation (loupes, comparateurs de brillance). Des études de cas
pratiques (perte de collision, reprises de rayures profondes) seront analysées.
Figure  – Véhicule en cabine de peinture. Un diagnostique de la peinture inclut le contrôle de la teinte, de
l’homogénéité et de la brillance du vernis. Un capteur de couleur (spectrophotomètre) peut être utilisé pour vérifier
la correspondance au nuancier constructeur.
4.1 Contrôle structural
Analyse initiale : examen visuel pour localiser les déformations : bosses, plis, éclats de peinture
révélant un choc fort, torsion de la caisse. 
Contrôle dimensionnel : usage d’un banc de redressage et de croix de mesure laser ou palpeur
électronique pour vérifier l’alignement des longerons et la géométrie du train avant/arrière . Les
données sont comparées aux cotes constructeur (OTAF). 
Étude de cas : prise de mesures sur un véhicule touché à l’arrière – détermination si le choc a affecté
la structure (ex. plancher) ou seulement la carrosserie légère (portes, ailes). 
4.2 Diagnostic des peintures
Inspection visuelle : recherche de défauts comme l’orange peel (grain de peau d’orange), coulures,
manque de brillance, oreille métallique non uniforme. Utilisation de lampe UV pour révéler rayures
subtiles. 
Instrumentation : utilisation de glossmètre pour quantifier la brillance, de caméra macro pour
défauts de couche, et de banc colorimétrique pour vérifier l’exactitude de teinte (surtout sur les
effets métallisés/nacrés). 
Causes courantes de défauts :
Mauvais réglage du pistolet (écart buse-substrat, pression) → irrégularités de film. 
Température/humidité inadaptées (bulle, absence d’évaporation) . 
Contamination de surface (poussières, silicone) → effets d’fisheye. 
4.3 Diagnostic fonctionnel et connectique (ADAS)
Électronique embarquée : vérification des capteurs avant/après une collision (radars, caméras) :
réaligner les caméras et recalibrer les radars si nécessaire. 
Sécurité passive : contrôle des zones de déformation programmée (soubassement, absorbeurs
d’énergie) et détection de microfissures pouvant affecter les airbags. 
Exemple pratique : dépose de l’airbag d’un VR accidenté pour repérer un câble endommagé,
utilisation d’outil de diagnostique pour vérifier les modules SRS. 
Conclusion du module 4 (points clés) :
- Un diagnostic rigoureux évite les surprises : mesurer avec précision les cotes du véhicule et comparer au
référentiel constructeur .
- Les défauts de peinture ont des origines multiples (préparation, application, environnement); l’observation
minutieuse et l’usage d’outils de mesure sont indispensables pour en déterminer la cause.
- Le recalibrage des systèmes d’aide à la conduite après réparation est désormais une étape incontournable
pour restaurer la sécurité du véhicule.', 
'src/assets/images/Diagnostiquer_Carrosserie_et_Peinture_(Partie_4).jpg'),
('MOD004_CPE1',6, 'Diagnostiquer Carrosserie et Peinture (Partie 6)', 
'Module 6 : Diagnostiquer Carrosserie et Peinture (Partie 6) Objectifs pédagogiques : - Utiliser les outils de diagnostic avancé : bancs de mesure trid...', 
'Module 6 : Diagnostiquer Carrosserie et Peinture (Partie 6)
Objectifs pédagogiques :
- Utiliser les outils de diagnostic avancé : bancs de mesure tridimensionnels, lasers, et appareils
électroniques (détecteurs d’épaisseur de vernis, caméras thermiques pour détecter les défauts).
- Maîtriser le diagnostic de systèmes complexes : carrosseries ADAS (calibrage caméra/radar) et composants
haute tension (cas des véhicules électriques) après collision.
- Étudier des cas complexes où le diagnostic conditionne la stratégie de réparation (exemple : choc latéral
atteignant les renforts latéraux, impact sur la cellule de sécurité).
Introduction pédagogique :
Les techniques de diagnostic évoluent avec les technologies embarquées : la géométrie du véhicule peut
être prise en charge par des systèmes laser 3D (mesurant l’écartement entre points critiques) et la peinture
analysée grâce à des détecteurs d’épaisseur (pour évaluer la zone de reprises antérieures) ou des caméras
spécifiques. Ce module explique ces outils et leur utilisation, et approfondit le diagnostic des véhicules
électriques (risques d’endommagement de la batterie lors de choc) et ADAS. Une réflexion sur la relation
avec l’assurance (devis, diagnostic impact) sera également intégrée.
6.1 Outils de diagnostic dimensionnel et électronique
Scanner 3D et gabarits laser : présentation des principes, calibration, interprétation des résultats.
Cas d’utilisation : contrôle du "train avant" après choc frontal. 
Appareils de mesure de peinture : usage d’un marbre de Pesola ou d’un capteur électronique pour
déterminer l’épaisseur du vernis, afin de détecter des réparations précédentes non visibles à l’œil nu.
Diagnostic ADAS : rappel des procédures de recalibrage de caméra/radar. Mise en pratique d’un kit
de remise à zéro (cas d’une caméra frontale tournée par un choc). 
6.2 Diagnostic des véhicules électriques et hybrides
Risques spécifiques : découplage de haute tension, gestion de la sécurité (ISO 26262), quel impact
pour la carrosserie (contenance de la batterie peut être endommagée par une intrusion). 
Procédures après accident : consignes de sécurité pour les réparations en présence de batteries
(ex. niveau de liquide de refroidissement, contrôle d’humidité). Collage de signes de danger. 
6.3 Exemples pratiques d’investigation
Étude de cas 1 : Véhicule truffé d’ADAS immobilisé suite à choc avant. Le diagnostiqueur doit
combiner mesures géométriques et contrôle de l’alignement des capteurs. 
Étude de cas 2 : Détection d’une ancienne réparation « cachée » sous plusieurs couches de repeints
(mesure d’épaisseur de peinture et comparaison aux spécifications).
Conclusion du module 6 (points clés) :
- Les outils de mesure moderne permettent un diagnostic millimétrique (3D) essentiel pour garantir la
conformité structurelle du véhicule.
- En carrosserie-peinture, on ne répare pas seulement la « tôle cabossée » mais l’ensemble des systèmes
(électronique, sécurité passive) affectés par l’accident.
- La sûreté des véhicules électriques impose une vigilance supplémentaire : il faut suivre des protocoles
stricts pour éviter tout risque de choc électrique pendant les interventions', 
'src/assets/images/Diagnostiquer_Carrosserie_et_Peinture_(Partie_6).jpg'),
('MOD005_CPE1',6, 'Introduction à la Carrosserie et Peinture (Partie 1)', 
'Cours de Carrosserie et Peinture Automobile – 350h (8 modules) Module 1 : Introduction à la Carrosserie et Peinture (Partie 1) Objectifs pédagogiques...', 
'Cours de Carrosserie et Peinture Automobile –
350h (8 modules)
Module 1 : Introduction à la Carrosserie et Peinture (Partie 1)
Objectifs pédagogiques :
- Comprendre l’organisation générale d’un atelier de carrosserie-peinture et le rôle du carrossier-peintre
confirmé.
- Maîtriser les notions de base : structures du véhicule (soubassement, superstructure, éléments
inamovibles/amovibles), matériaux courants (acier, aluminium, composites, plastiques) et vocabulaire
technique.
- Connaître les enjeux de la réparation-collision : qualité, sécurité, respect des normes constructeur et
environnementales. 
Introduction pédagogique :
Le carrossier-peintre intervient sur l’enveloppe et l’esthétique du véhicule, mais aussi sur sa sécurité
structurelle. L’activité requiert à la fois de la précision manuelle et une connaissance approfondie des
matériaux modernes et des procédés de réparation . Dans ce module d’introduction, nous définirons
les rôles respectifs du tôlier/réparateur et du peintre en carrosserie, les étapes classiques d’une réparation,
ainsi que les règles de sécurité et d’environnement essentielles (pressions réglementaires sur les COV des
peintures, équipements de protection, etc.). On présentera aussi le contexte professionnel : réseaux de
réparation agréés, cycles d’apprentissage, évolution technologique et exigences clients .
1.1 Notions fondamentales de carrosserie
Structures du véhicule : distinction entre soubassement (châssis, longerons, plancher) et 
superstructure (tôles de carrosserie, poutres, éléments extérieurs). 
Matériaux principaux : propriétés de l’acier (dont aciers haute résistance), de l’aluminium
(rétractabilité, corrosion galvanique), des composites plastiques (PU, fibre de verre/carbone) , et
leur impact sur les méthodes de réparation. 
Éléments inamovibles vs amovibles : panneaux soudés (ailes, bas de caisse) vs éléments à visser
ou coller (portes, capot, vitrages). 
1.2 Principes généraux de peinture automobile
Systèmes de finition : comparaison des peintures 1K (monocomposant) et 2K (bicomposant) .
Les peintures 1K (séchage à l’air) sont faciles à appliquer pour les petites retouches, mais moins
durables que les peintures 2K (polyuréthane, époxy) qui offrent plus de résistance mécanique et
chimique . Les peintures hydrodiluables (à base d’eau) sont devenues courantes pour les
véhicules légers, réduisant les émissions de solvants . 
Étapes de la mise en peinture : préparation des surfaces, application d’apprêts anticorrosion
(époxy, phosphatants, contenant parfois des pigments de zinc), application du fond dur (isolant),
puis couche(s) de base et vernis . 
Exigences constructeur : respect des teintes et procédés prescrits (utilisation de
spectrophotomètre ou logiciel colorimétrique), environnement contrôlé (banc de peinture, filtration).
1.3 Organisation de l’atelier et sécurité
Zones de travail : aire de réception, zone de tôlerie (découpe, redressage, soudage), cabine de
peinture, espace de préparation (ponçage, dégraissage) et zone de finition. 
Sécurité et environnement : ventilation de cabine, filtres à solvants, recyclage des déchets de
peinture, port d’EPI (masques respiratoires homologués, gants, protections acoustiques). Rappel des
normes (ex. arrêté sur limitation des COV dans les peintures pour carrosserie) et consignes incendie. 
Exemple d’organisation : étude de cas fictive d’un choc arrière léger – du diagnostic initial, aux
décisions de réparation ou de remplacement (prise de mesures dimensionnelles du soubassement si
nécessaire ), jusqu’à la finition peinture et remise au client.
Conclusion du module 1 (points clés) :
- La carrosserie inclut toutes les opérations mécaniques et mécano-soudées sur la structure du véhicule,
tandis que la peinture concerne la finition esthétique et protectrice.
- Les peintures 1K et 2K ont des propriétés très différentes (durée de vie, complexité d’application) . Les
peintures à base aqueuse sont privilégiées pour limiter les émissions de solvants .
- La sécurité en atelier est primordiale : aires distinctes (soudage, peinture), équipements de protection
individuelle, filtrations et gestion des déchets chimiques sont indispensables.', 
'src/assets/images/Introduction_à_la_Carrosserie_et_Peinture_(Partie_1).jpg'),
('MOD006_CPE1',6, 'Introduction à la Carrosserie et Peinture (Partie 8)', 
'Module 8 : Introduction à la Carrosserie et Peinture (Partie 8) Objectifs pédagogiques : - Fournir une vision d’ensemble finale des enjeux et perspect...', 
'Module 8 : Introduction à la Carrosserie et Peinture (Partie 8)
Objectifs pédagogiques :
- Fournir une vision d’ensemble finale des enjeux et perspectives du métier (transition écologique, véhicules
autonomes, économie circulaire).
- Consolider les connaissances acquises et présenter des perspectives de projet de fin de formation (mise
en situation complète : du diagnostic à la restitution de véhicule).
- Revoir les points clés transversaux et préparer les techniciens à la certification ou au CQP professionnel. 
Introduction pédagogique :
Ce dernier module joue le rôle de synthèse finale et de « re-introduction » vers le futur de la carrosseriepeinture. Il revisite globalement les notions-clés abordées, avec un focus sur l’anticipation des évolutions du
secteur (véhicules électriques et connectés, réglementation environnementale à venir). On introduira des
exemples de cas réels complexes (étude d’un véhicule à structure mixte ferro-aluminium, ou d’une machine
hybride) pour tester l’intégration des compétences.
8.1 Récapitulatif technique et orientation professionnelle
Points clés globaux : rappel des meilleures pratiques vues (préparation de surface, choix des
techniques, mesures de sécurité). 
Perspectives et nouveautés : présentation des carrosseries modulaires (3D printing de pièces de
carrosserie), peinture intelligente (auto-cicatrisante), et recyclage des matériaux de carrosserie en fin
de vie. 
Exercice final de synthèse : élaboration d’un plan de réparation complet pour un cas de sinistre
donné (diagnostic, plan d’opération, devis, plan qualité). 
8.2 Conclusion générale et points clés finaux
Le métier de carrossier-peintre confirmé exige aujourd’hui autant de rigueur technique que
d’adaptabilité aux nouvelles technologies. La collaboration avec les constructeurs (respect des
méthodes de réparation OEM) reste le fil conducteur de la fiabilité des interventions . 
Les principes de base – nettoyage et préparation minutieuse, choix du procédé adapté au matériau,
contrôle qualité – restent constants malgré la complexité croissante des véhicules. 
En conclusion, l’approche globale (du diagnostic initial à la livraison client) garantit la satisfaction
finale : un véhicule rendu en parfait état esthétique et structurel, dans le respect des normes et de
l’environnement. 
Conclusion du module 8 (points clés) :
- Intégration de toutes les compétences : diagnostic, réparation, peinture et entretien. Un plan détaillé et
respectueux des normes est essentiel pour chaque intervention.
- Esprit critique et mise à jour régulière : le technicien confirmé doit évaluer les innovations (adhésifs,
nouveaux métaux, peintures vertes) et adapter ses pratiques.
- Professionnalisme et qualité : le souci du détail (mesures précises, finitions parfaites) ainsi que le respect
de la sécurité et de l’environnement restent au cœur du métier. 
Sources : Documents techniques et formateurs (ANFA, AFPA, et sites de référence technique) ont été
utilisés pour élaborer ce cours. Par exemple, les fiches de l’INRS décrivent les produits de préparation et de
peinture utilisés , tandis qu’un guide 3M explique l’usage d’adhésifs structuraux en carrosserie
. Les tableaux comparatifs sont inspirés des caractéristiques générales publiées sur les systèmes de
peinture et des recommandations anti-corrosion courantes', 
'src/assets/images/Introduction_à_la_Carrosserie_et_Peinture_(Partie_8).jpg'),
('MOD007_CPE1',6, 'Maintenance de Carrosserie et Peinture (Partie 2)', 
'Module 2 : Maintenance de Carrosserie et Peinture (Partie 2) Objectifs pédagogiques : - Maîtriser les tâches d’entretien préventif et correctif couran...', 
'Module 2 : Maintenance de Carrosserie et Peinture (Partie 2)
Objectifs pédagogiques :
- Maîtriser les tâches d’entretien préventif et correctif courant d’une carrosserie-peinture.
- Savoir détecter et traiter la corrosion sur véhicule : nettoyage, antirouille, cire de protection, pose de films
protecteurs .
- Connaître l’entretien des équipements et outils (pistolets de pulvérisation, compresseurs, cabine de
peinture) ainsi que la gestion de la qualité de l’atelier (filtres, solvants). 
Introduction pédagogique :
L’entretien régulier du parc automobile et des matériels de l’atelier assure la durabilité de la carrosserie et
du système de peinture . Ce module présente les travaux de maintenance courants sur la carrosserie
(nettoyage, traitement anticorrosion, retouches), sur les finitions peintes (lustrage, réparations de petites
éraflures) et sur l’équipement professionnel (vérification du pistolet à peinture, calibration du compresseur,
etc.). On insistera sur la prévention de la rouille et sur l’importance des traitements adaptés (graisses
antirouille, caches de peinture) .
Figure – Préparation d’une tôle avant peinture (ponçage). La maintenance d’une carrosserie commence souvent
par un nettoyage et dégraissage minutieux des surfaces avant de détecter des zones corrodées éventuelles .
2.1 Préparation et nettoyage des surfaces
Dégraissage et lavage : avant toute intervention, utilisation de détergents ou solvants spécifiques
pour éliminer graisse, cire ou goudron (INRS note que les solvants pétroliers traditionnels sont
courants, mais les produits « à l’eau » peuvent aussi contenir >30 % d’agents organiques ). 
Nettoyage anticorrosion : surtout en hiver, nettoyage haute pression du dessous de caisse pour
éliminer sel et boues . Utilisation de détergents alcalins, rinçage abondant. 
2.2 Traitement anticorrosion
Détection de corrosion : identification des points faibles (bas de caisse, passages de roues,
planchers). Ponçage local pour évaluer l’étendue de la rouille. 
Traitements préventifs : applications de produits anticorrosion (huiles d’arbre, cires molles ou
dures) sur les parties cachées ou extérieures . Par exemple, injection de cire dans les points
de soudure ou les passages de roue. 
Peintures et films protecteurs : certains carrossiers proposent des peintures antirouille haute
résistance (couches d’apprêt spéciales) et des films plastiques de protection des pare-chocs et bas de
caisse . 
Technique Zone d’application Avantages Inconvénients
Lavage haute pression
Sous-carrosserie, ailes Élimine sel, boues ; accès
difficile éliminé
Risque d’abîmer joints/
garnitures
Traitement huilé/
ciré
Creux de caisse,
soubassement
Barrière protectrice
longue durée
Entretien périodique
requis
Apprêt époxy/
bitumeux
Parties métalliques
exposées
Très résistant à la
corrosion
Surface non esthétique,
besoin top-coat
Film ou coatings
céramique Carrosserie apparente
Anti-rayures,
hydrophobe
Coût élevé, préparation
minutieuse
2.3 Retouches et finitions d’entretien
Retouches de peinture : pour micro-rayures ou éclats, utilisation de stylo de retouche ou petites
pulvérisations locales. Ponçage fin suivi d’application de laque bicouche ou monocomposant selon le
cas. 
Lustrage et polissage : entretien de la couche de vernis : utilisation de polish abrasif fin pour
éliminer micro-rayures, puis cire de finition. 
Réparations de carrosserie mineures : débosselage sans peinture (dents de grêle), remplacement
de garnitures d’étanchéité, réglages d’alignement portes/capots si nécessaire. 
2.4 Entretien du matériel atelier
Vérification des équipements : contrôle régulier des pistolets de pulvérisation (nettoyage des buse
et aiguille), pression et qualité d’air du compresseur, état des filtres cabine (préfiltre, de peinture). 
Gestion des consommables : stockage et traçabilité des peintures (respect des « fiches de données
de sécurité »), recyclage des solvants usagés. 
Conclusion du module 2 (points clés) :
- Un entretien préventif efficace prolonge la vie de la carrosserie : lavage anti-sel régulier et application de
traitements anticorrosion sont essentiels .
- La préparation de surface (nettoyage, ponçage, apprêt) est cruciale avant toute réparation ou retouche
.
- L’atelier doit être maintenu : filtres et équipements nettoyés, et les procédés validés (par exemple, un
réglage inexact du pistolet engendre des défauts de peinture).', 
'src/assets/images/Maintenance_de_Carrosserie_et_Peinture_(Partie_2).jpg'),
('MOD008_CPE1',6, 'Maintenance de Carrosserie et Peinture (Partie 7)', 
'Module 7 : Maintenance de Carrosserie et Peinture (Partie 7) Objectifs pédagogiques : - Développer les compétences de supervision et de planification...', 
'Module 7 : Maintenance de Carrosserie et Peinture (Partie 7)
Objectifs pédagogiques :
- Développer les compétences de supervision et de planification d’un atelier de carrosserie-peinture (gestion
des plannings de maintenance préventive, formation continue des opérateurs).
- Comprendre les principes de maintenance prédictive des équipements (p. ex. détection précoce de fuite
dans circuits hydrauliques de ponts, contrôle vibratoire d’une cabine de peinture).
- Intégrer le management de la qualité (contrôle final, retours d’expérience) dans le cycle de maintenance
technique et organisationnelle. 
Introduction pédagogique :
Au niveau confirmé, le technicien peut être amené à proposer des améliorations de process (Kaizen), à
planifier l’entretien des équipements clés de l’atelier (par ex. envoyer un compteur pour calibrer
périodiquement les pistolets électroniques), et à veiller à la formation régulière des équipes (nouveaux
produits, nouvelles méthodes). Le module abordera aussi la maintenance technique du matériel
(lubrification de ponts, purge du circuit de respiration des cabines, vérification des chauffages de four de
peinture) et la maintenance du système qualité (audits internes, suivi des indicateurs KPIs de retouche).
7.1 Maintenance préventive des équipements
Cabine de peinture et compresseur : échange des filtres une fois par an, recharge d’ammoniac
dans refroidisseur de cabine, test d’étanchéité des conduites d’air comprimé. 
Banc de redressage : contrôle des crémaillères hydraulique (fuite éventuelle), graissage des rails. 
Outils portatifs : affûtage et lubrification des blocs de ponçage pneumatique, reprogrammation des
pistolets électroniques. 
7.2 Formation et organisation de l’atelier
Plan de formation continue : mise à jour sur les nouvelles technologies (nouveaux mousses antisoniques, gel de sablage, etc.). Sessions de pratique sur pièces d’entraînement ou simulateurs. 
Gestion des stocks et traçabilité : inventaire périodique des consommables (peintures, solvants,
pièces de carrosserie), respect des dates de péremption et rotation FIFO. 
Indicateurs de performance (KPI) : taux de retouches (% de véhicules présentant un défaut après
sortie atelier), temps moyen de cycle de réparation, taux d’accidents au poste. Discussion sur
l’amélioration continue.
Exemple pratique : Réalisation d’une « fiche de poste améliorée » pour le nettoyage de cabine, incluant
checklist journalière, afin de réduire les poussières en suspension.
Conclusion du module 7 (points clés) :
- L’entretien des équipements atelier (pistolets, filtres, hydraulique) est aussi crucial que celui des
véhicules . Cela garantit la constance de la qualité et la sécurité du personnel.
- La formation continue du personnel permet d’anticiper les évolutions (ex. nouveaux matériaux, systèmes
embarqués). Un carrossier confirmé se doit de rester informé et de transmettre ce savoir.
- La démarche qualité inclut la maintenance du système lui-même (audits, indicateurs), car un process fiable
minimise les reprises coûteuses.', 
'src/assets/images/Maintenance_de_Carrosserie_et_Peinture_(Partie_7).jpg'),
('MOD001_CLIM2',7, 'Introduction à la Climatisation – Partie 4', 
'Introduction à la Climatisation – Partie 4 Objectifs pédagogiques : - Approfondir le contexte historique et réglementaire de la climatisation automobi...', 
'Introduction à la Climatisation – Partie 4
Objectifs pédagogiques :
- Approfondir le contexte historique et réglementaire de la climatisation automobile.
- Introduire les nouvelles générations de systèmes (climatisation aux gaz CO₂, électricité embarquée).
- Comprendre l’impact du réchauffement climatique et de l’efficacité énergétique dans la conception des
systèmes. 

Introduction technique :
Cette partie d’introduction replace la climatisation auto dans un contexte global. On y traite rapidement
l’histoire de la climatisation automobile, depuis les premières installations (années 1930) jusqu’à la
généralisation en Europe (années 1970) et l’automatisation croissante des années 1990. On cite par
exemple que « depuis 1990, près de 80 % des véhicules sont équipés d’un système de climatisation » (Lycée
Gaston Barré) . Les enjeux environnementaux sont détaillés : protocole de Montréal (1987) a conduit à
l’interdiction progressive du R-12 (CFC) au profit de fluides substituts . 
Chapitre 1 : Réglementation et normes
Reprise des grandes dates en France/UE :
- Depuis janvier 2001 : R-12 interdit, remplacé par R-413A/R-416A .
- À partir de juin 2009 et 2017 : taux de fuite maxi 40 g/an et obligation pour véhicules neufs d’utiliser fluides
PRP ≤150 .
- Attestation de capacité (formation réglementaire pour les intervenants) imposée par le Code de
l’environnement .
On évoque aussi les labels énergie et la prise en compte du rendement énergétique des véhicules (cycles
EPA/CO₂) liés à l’usage de la climatisation. 
Chapitre 2 : Systèmes alternatifs
Présentation des systèmes émergents :
- Climatisation au CO₂ (R-744) : très faible PRP, mais nécessite des pressions de fonctionnement élevées
(~100 bar) et des composants renforcés. Déjà utilisé dans quelques voitures hybrides ou de luxe.
- Climatisation électrique (HVAC sur VE/HEV) : le compresseur peut être débrayable de l’accessoire ou
directement entraîné par un moteur électrique, pour permettre le refroidissement en mode électrique seul.
- Climatisation à absorption ou adsorption (à l’étude) : alternatives projetées utilisant chaleur pour
refroidir. 
Chapitre 3 : Confort et santé
En plus du froid, la climatisation traite la qualité de l’air intérieur : on décrit les systèmes de filtration (filtre
d’habitacle), la gestion de l’humidité (dégivrage, recirculation). On rappelle que la climatisation améliore la
visibilité (moins de buée) et le confort thermique (21–26 °C et 35–65 % d’humidité ), conditions optimales
pour l’éveil du conducteur. 
Étude de cas pratique : Conception d’un module pédagogique. On présente le montage d’une maquette
didactique (voir exxotest, fig. ci-contre) pour simulation de cycle frigorifique . Les étudiants apprennent
ainsi à visualiser le circuit complet et les composants. 
Conclusion du module 4 – Points clés :
- Les normes environnementales imposent l’usage de fluides à faible GWP et de procédures strictes
(capacité, fuites) .
- Les innovations technologiques (CO₂, compresseur électrique) ouvrent de nouvelles perspectives pour la
climatisation automobile.
- Le confort global prend en compte la filtration de l’air et la gestion de l’humidité, au-delà de la simple
production de froid.', 
'src/assets/images/Introduction_à_la_Climatisation_-_Partie_4.jpg'),
('MOD002_CLIM2',7, 'Les Bases de la Climatisation – Partie 2', 
'Module 2 : Les Bases de la Climatisation – Partie 2 Objectifs pédagogiques : - Assimiler les notions fondamentales de thermodynamique du cycle frigori...', 
'Module 2 : Les Bases de la Climatisation – Partie 2
Objectifs pédagogiques :
- Assimiler les notions fondamentales de thermodynamique du cycle frigorifique automobile.
- Connaître chaque composant de base (compresseur, condenseur, détendeur, évaporateur, filtre
déshydrateur) et sa fonction.
- Savoir décrire le parcours du fluide et les changements d’état (liquide/gaz) dans le circuit. 
Introduction technique :
Ce module couvre les fondements du cycle frigorifique appliqué à l’automobile. On commence par
rappeler les principes de base (transfert de chaleur, échanges thermiques). La climatisation automobile est
un système fermé de compression de gaz : le compresseur aspire le fluide frigorigène en phase gazeuse
depuis l’évaporateur, le comprime et le refoule vers le condenseur . Dans le condenseur le gaz cède sa
chaleur à l’air ambiant et se liquéfie, puis passe par le filtre-dryeur et le dispositif de détente avant d’entrer
dans l’évaporateur où il absorbe la chaleur de l’air intérieur en s’évaporant. Ce cycle répété permet d’extraire
la chaleur de l’habitacle. 
Exemple de tableau de bord avec commandes de climatisation. Les symboles en bas indiquent les
fonctions habituelles : dégivrage pare-brise, climatiseur (symbole flocon), etc. Le conducteur peut régler la
température, la ventilation et activer le climatiseur pour refroidir l’habitacle. 
Chapitre 1 : Le compresseur de climatisation
Description du compresseur (types et entraînement) : compresseur mécanique entraîné par courroie (à
embrayage électromagnétique) ou compresseur électrique. On détaille le principe de pompage de vapeur :
« C’est une pompe qui aspire le fluide sous forme de vapeur à la sortie de l’évaporateur, le comprime et le
refoule vers le condenseur. En élevant la pression, le compresseur augmente la température du fluide » .
On étudie les différents types (axial, à cylindrée variable, scroll, à piston, etc.) et leurs caractéristiques
(rendement, coût, bruit). 
Chapitre 2 : Condenseur et échangeur de chaleur
Le condenseur (situé devant le radiateur moteur) transforme le gaz haute pression en liquide. L’air de
l’extérieur, poussé par le véhicule en mouvement ou par un ventilateur auxiliaire, traverse les ailettes du
condenseur pour évacuer la chaleur. On explique les schémas classiques de montage (condenseur simple, à
cascade, ou condensateur + ventilateur double). On aborde aussi l’évaporateur (à l’intérieur de l’habitacle)
qui, inversement, absorbe la chaleur de l’air cabines en évaporant une partie du liquide frigorigène. On
présente les matériaux courants (aluminium multi-canaux, cuivre). 
Chapitre 3 : Détendeur et régulation de débit
Présentation des dispositifs de détente : orifice calibré fixe vs détendeur thermostatique (TXV) ou
électronique (EXV). Le détendeur abaisse brusquement la pression du fluide liquide, provoquant sa flash évaporation partielle avant l’évaporateur. Les différents types (balle thermostatique, chapeau d’aiguille,
vanne électronique pilotée) sont comparés. On explique le rôle du filtre déshydrateur (ou accumulateur)
pour éliminer l’humidité et protéger le circuit. 
Chapitre 4 : Récapitulatif du cycle frigorifique
Schéma général du circuit, bilan des états (pression/température) du fluide aux bornes de chaque
composant. Cette partie fait le lien avec le schéma de Mollier et le diagramme pression-température. On
rappelle qu’un corps plus chaud transmet de la chaleur à un corps plus froid , principe de base du
transfert thermique. On insistera sur la notion d’échange d’énergie, montrant par exemple qu’« un corps
chaud transmet de la chaleur au corps froid jusqu’à égalité de la température » . 
Étude de cas pratique : Contrôle d’une installation défaillante. Le technicien est amené à diagnostiquer un
système qui ne produit pas de froid. Il vérifie la présence de gaz, l’état du compresseur (bruits anormaux), la
résistance du circuit (à la recherche d’obstruction ou de fuite), et les tensions sur l’embrayage. Calcul de la
masse de réfrigérant à injecter en fonction de la surcharge. 
Conclusion du module 2 – Points clés :
- Le compresseur, le condenseur, le détendeur et l’évaporateur forment le cycle frigorifique de base. Chacun
a un rôle précis (pompe, échangeur haute pression, abaissement de pression, échangeur basse pression).
- La gestion du débit frigorigène (via orifice ou vanne) est cruciale pour la stabilité du cycle.
- Les principes thermodynamiques fondamentaux (transfert de chaleur d’un milieu chaud vers un milieu
plus froid) sous-tendent le fonctionnement.', 
'src/assets/images/Les_Bases_de_la_Climatisation_-_Partie_2.jpg'),
('MOD003_CLIM2',7, 'Les Bases de la Climatisation – Partie 3', 
'Module 3 : Module 3 : Les Bases de la Climatisation – Partie 3 Objectifs pédagogiques : - Comprendre les commandes internes et capteurs d’un système d...', 
'Module 3 : Module 3 : Les Bases de la Climatisation – Partie 3
Objectifs pédagogiques :
- Comprendre les commandes internes et capteurs d’un système de climatisation moderne.
- Connaître les différents modes de fonctionnement (air recyclé, désembuage, climatisation automatique).
- Savoir diagnostiquer les défauts électriques et électroniques liés à la climatisation (capteurs,
électrovannes, ventilateurs). 
Introduction technique :
Ce module approfondit les éléments de commande et d’électronique du système de climatisation. On y
étudie les organes de régulation (thermostat d’habitacle, calculateurs, fusibles) et les capteurs clés
(pression, température du fluide, humidité). La climatisation moderne est souvent pilotée par une unité de
contrôle moteur (ECU) ou un module dédié, qui prend en compte la consigne de température, la
température ambiante extérieure/intérieure, et ajuste la puissance frigorifique via le compresseur
(embrayage ou variateur) et le débit d’air. 
Chapitre 1 : Capteurs et unités de commande
Détail des capteurs :
- Capteurs de température (intérieur et extérieur, souvent NTC).
- Pressostats haute/basse pression : protègent le circuit (coupures en cas de pression trop haute ou trop
basse).
- Capteur de débit d’air / hygrométrie : dans les systèmes de climatisation automatique pour réguler
l’humidité.
On explique leur rôle dans la boucle de régulation (par exemple, un contact sec HP interdit la mise en route
si pression > seuil). 
Chapitre 2 : Commandes et modes de climatisation
Examen des interfaces : boutons de tableau de bord ou commandes tactiles, symboles normalisés (symbole
flocon pour A/C, pare-brise pour désembuage, etc.). Différents modes : air recyclé (volet fermé pour boucler
l’air intérieur) / air neuf (volet ouvert) / désembuage (orientation des volets). La climatisation automatique
intègre aussi le mode chauffage : la température réglée peut provoquer le mélange d’air via la matrice de
chauffage (caloporteur moteur). On rappelle que le fluide frigorigène circule parfois dans un échangeur de
charge (coussinet de chauffage) pour améliorer le rendement. 
Chapitre 3 : Alimentation électrique et sûreté
Circuit électrique de la climatisation : alimentation du compresseur (couplée à l’embrayage) via un relais,
fusibles dédiés, et circuits de commande (bouton A/C envoie un signal vers le calculateur moteur). On
détaille la nécessité d’une attestation de capacité pour manipuler les fluides frigorigènes : c’est une
exigence réglementaire (code de l’environnement) pour tout intervenant. Le technicien s’assure également
de la présence des étiquettes de sécurité (inflamabilité des fluides A2L) sur le véhicule. 
Chapitre 4 : Diagnostic électrique et aide au dépannage
Procédures de test : lecture de codes défauts (pression, capteurs), tests de continuité des électrovannes et
ventilateurs, vérification des tensions sur l’embrayage du compresseur en marche. Un tableau synthétique
peut regrouper les symptômes et diagnostics : 
Air chaud uniquement : vérifier niveau de fluide (fuite possible), pressostat HP desserré, ou
défaillance compresseur. 
Pas de réaction au bouton A/C : fusible grillé, fil coupé, ou calculateur débranché. 
Clignotement voyant A/C : signal de surchauffe ou fuite détectée (sur certains véhicules). 
Chaque cas pratique est accompagné d’une méthodologie pas-à-pas. 
Étude de cas pratique : Capteur de pression défectueux. Sur un véhicule avec A/C automatique, un message
d’erreur AP0532 apparaît (pression évaporateur). Le technicien localise et remplace le capteur, purge le
circuit et mesure les nouvelles pressions pour valider le dépannage. 
Conclusion du module 3 – Points clés :
- Les capteurs de pression/température garantissent la protection et la régulation du circuit (défauts =
coupure du compresseur).
- La manipulation de la climatisation est soumise à réglementation (attestation de capacité) pour les
opérations sur fluide frigorigène.
- Les diagnostics combinent contrôle électrique (alimentations, capteurs) et de charge de fluide pour
localiser les pannes. 
Objectifs pédagogiques :
- Comprendre les commandes internes et capteurs d’un système de climatisation moderne.
- Connaître les différents modes de fonctionnement (air recyclé, désembuage, climatisation automatique).
- Savoir diagnostiquer les défauts électriques et électroniques liés à la climatisation (capteurs,
électrovannes, ventilateurs). 
Introduction technique :
Ce module approfondit les éléments de commande et d’électronique du système de climatisation. On y
étudie les organes de régulation (thermostat d’habitacle, calculateurs, fusibles) et les capteurs clés
(pression, température du fluide, humidité). La climatisation moderne est souvent pilotée par une unité de
contrôle moteur (ECU) ou un module dédié, qui prend en compte la consigne de température, la
température ambiante extérieure/intérieure, et ajuste la puissance frigorifique via le compresseur
(embrayage ou variateur) et le débit d’air. 
Chapitre 1 : Capteurs et unités de commande
Détail des capteurs :
- Capteurs de température (intérieur et extérieur, souvent NTC).
- Pressostats haute/basse pression : protègent le circuit (coupures en cas de pression trop haute ou trop
basse).
- Capteur de débit d’air / hygrométrie : dans les systèmes de climatisation automatique pour réguler
l’humidité.
On explique leur rôle dans la boucle de régulation (par exemple, un contact sec HP interdit la mise en route
si pression > seuil). 
Chapitre 2 : Commandes et modes de climatisation
Examen des interfaces : boutons de tableau de bord ou commandes tactiles, symboles normalisés (symbole
flocon pour A/C, pare-brise pour désembuage, etc.). Différents modes : air recyclé (volet fermé pour boucler
l’air intérieur) / air neuf (volet ouvert) / désembuage (orientation des volets). La climatisation automatique
intègre aussi le mode chauffage : la température réglée peut provoquer le mélange d’air via la matrice de
chauffage (caloporteur moteur). On rappelle que le fluide frigorigène circule parfois dans un échangeur de
charge (coussinet de chauffage) pour améliorer le rendement. 
Chapitre 3 : Alimentation électrique et sûreté
Circuit électrique de la climatisation : alimentation du compresseur (couplée à l’embrayage) via un relais,
fusibles dédiés, et circuits de commande (bouton A/C envoie un signal vers le calculateur moteur). On
détaille la nécessité d’une attestation de capacité pour manipuler les fluides frigorigènes : c’est une
exigence réglementaire (code de l’environnement) pour tout intervenant. Le technicien s’assure également
de la présence des étiquettes de sécurité (inflamabilité des fluides A2L) sur le véhicule. 
Chapitre 4 : Diagnostic électrique et aide au dépannage
Procédures de test : lecture de codes défauts (pression, capteurs), tests de continuité des électrovannes et
ventilateurs, vérification des tensions sur l’embrayage du compresseur en marche. Un tableau synthétique
peut regrouper les symptômes et diagnostics : 
Air chaud uniquement : vérifier niveau de fluide (fuite possible), pressostat HP desserré, ou
défaillance compresseur. 
Pas de réaction au bouton A/C : fusible grillé, fil coupé, ou calculateur débranché. 
Clignotement voyant A/C : signal de surchauffe ou fuite détectée (sur certains véhicules). 
Chaque cas pratique est accompagné d’une méthodologie pas-à-pas. 
Étude de cas pratique : Capteur de pression défectueux. Sur un véhicule avec A/C automatique, un message
d’erreur AP0532 apparaît (pression évaporateur). Le technicien localise et remplace le capteur, purge le
circuit et mesure les nouvelles pressions pour valider le dépannage. 
Conclusion du module 3 – Points clés :
- Les capteurs de pression/température garantissent la protection et la régulation du circuit (défauts =
coupure du compresseur).
- La manipulation de la climatisation est soumise à réglementation (attestation de capacité) pour les
opérations sur fluide frigorigène.
- Les diagnostics combinent contrôle électrique (alimentations, capteurs) et de charge de fluide pour
localiser les pannes.', 
'src/assets/images/Les_Bases_de_la_Climatisation_-_Partie_3.jpg'),
('MOD004_CLIM2',7, 'Les Bases de la Climatisation – Partie 6', 
'Module 6 : Les Bases de la Climatisation – Partie 6 Objectifs pédagogiques : - Maîtriser la procédure de charge et de récupération des fluides frigori...', 
'Module 6 : Les Bases de la Climatisation – Partie 6
Objectifs pédagogiques :
- Maîtriser la procédure de charge et de récupération des fluides frigorigènes selon la réglementation.
- Connaître les équipements de maintenance (stations de charge, détecteurs de fuite, générateurs de gaz
traceur).
- Savoir effectuer l’entretien courant (nettoyage, remplacement de filtres). 
Introduction technique :
Ce module aborde la maintenance pratique de base. Il détaille l’usage des machines de charge/décharge
conformes à la réglementation (récupération du fluide, mesure de la quantité et du point d’ébullition,
recyclage). Les règles de sécurité (protection contre l’inhalation, formation CACES, gestion des déchets
frigorigènes) sont rappelées. 
Photo d’un tableau de bord moderne avec climatisation. On y voit l’affichage de la température extérieure
(41 °C), l’horloge et le bouton A/C en bas à droite. L’icône « AC » en vert indique que le climatiseur est activé.
Ce type d’interface permet au technicien de vérifier les paramètres en situation réelle. 
Chapitre 1 : Équipement de maintenance
Description des outils :
- Station de récupération/recharge automatique (avec compresseur, tuyaux HP/BP, échangeur interne)
pour mesurer la quantité de fluide, la pureté et l’humidité du système.
- Sniffers (détecteurs électroniques) pour localiser les fuites (gaz traceur, UV, électronique infrarouge).
- Manomètres 2-vérins (raccords aux pressions HP/BP) pour diagnostic primaire et détection de fuite avec
« bulles » d’huile. 
Chapitre 2 : Procédure de charge et de vidange
Étapes réglementaires :
1. Mettre le véhicule hors tension, repérer le circuit de climatisation.
8
2. Récupérer l’ancien fluide à l’aide d’une station homologuée, vérifier la pression dans le circuit à l’équilibre.
3. Contrôler le système (fuites, pression d’équilibre, état du filtre-dryeur).
4. Remplacer le filtre déshydrateur ou accumulateur (obligatoire à chaque rechargement complet).
5. Mettre sous vide (pompe à vide) pour éliminer l’humidité et tester l’étanchéité (contrôle barométrique).
6. Recharger en fluide neuf (quantité prescrite constructeur), mesurer le sous-refroidissement/surchauffe
selon spécifications.
Tous les résultats (volumes, pressions mesurées, paramètres de test) sont consignés pour traçabilité. 
Chapitre 3 : Entretien courant et diagnostics simplifiés
Bonnes pratiques : vérification visuelle des tuyauteries, nettoyage du condenseur (poussière/insectes),
contrôle de l’état de la courroie d’entraînement du compresseur. Test des volets d’entrée d’air (position
recyclage/neuf) pour s’assurer de leur mobilité. On présente un tableau récapitulatif des codes d’erreur
courants (ex. P0530 – capteur T° évaporateur, P1518 – dysfonctionnement de la vanne de recyclage) et les
actions correctives associées. 
Étude de cas pratique : Recharge et test après intervention. Suite à une fuite détectée (odeur ou faible
pression), le technicien doit purger le circuit, remplacer le joint ou colmater la fuite, et recharger. Il vérifie
ensuite les pressions au ralenti et en charge, s’assure de la production de froid, et réalise un essai routier
pour valider le bon fonctionnement. 
Conclusion du module 6 – Points clés :
- La maintenance s’effectue avec des appareils spécifiques : la récupération du gaz est obligatoire et doit
être mesurée précisément.
- Le filtre déshydrateur est changé systématiquement lors d’un remplissage complet.
- Les vérifications visuelles (fuites, état du condenseur) et la documentation des mesures (tableau de bord,
manomètres) sont essentielles pour assurer une intervention correcte.', 
'src/assets/images/Les_Bases_de_la_Climatisation_-_Partie_6.jpg'),
('MOD005_CLIM2',7, 'Maintenance de Climatisation – Partie 8', 
'Module 8 : Maintenance de Climatisation – Partie 8 Objectifs pédagogiques : - Mettre en pratique l’ensemble des compétences acquises pour assurer la m...', 
'Module 8 : Maintenance de Climatisation – Partie 8
Objectifs pédagogiques :
- Mettre en pratique l’ensemble des compétences acquises pour assurer la maintenance complète d’un
système de climatisation.
- Savoir rédiger un rapport technique d’intervention (fiches CQP, traçabilité).
- Connaître les exigences qualité et sécurité en atelier (stocks de fluides, évacuation des déchets). 
Introduction technique :
Le dernier module est centré sur la mise en pratique globale. Il reprend chaque étape de la maintenance
d’un circuit réel, de l’accueil du client à la restitution du véhicule. Un accent particulier est mis sur la sécurité
(risques de brûlure par détente sous pression, inhalation de frigorigène) et le respect des procédures
(agrément certifiant la capacité ). Les standards de qualité (ANFA/AFPA) exigent notamment une
traçabilité complète : relevés de pression, humidité résiduelle, quantité de fluide rechargé, et conseils au
client pour l’entretien futur. 
Chapitre 1 : Planification et sécurité
Organisation d’un atelier climat : ventilation, caisse à outils spécifique, local de stockage de bouteilles
(réglementation ADR). Contrôle des EPI (lunettes, gants isolants). Explication du circuit d’un climatiseur
auto : dangers (haute pression ~20 bars HP, -30 °C BP au détendeur), formation à la norme habilitation
fluides. 
Chapitre 2 : Procédures complètes d’intervention
Description détaillée d’une intervention de A à Z :
- Accueil client et check-list (symptômes, historique).
- Vérification de l’état initial (charge approximative à la mesure du remplissage d’usine).
- Test d’étanchéité (azote sec ou vide poussé), recherche de fuite (méthode électronique ou traceur UV).
- Dépose/pose éventuelle de composants (compresseur, condenseur endommagé, etc.).
- Vidange et nettoyage du circuit (utilisation de solvant de rinçage).
- Mise en vide prolongée (30 min+) et test d’étanchéité final.
- Rechargement précis (balance de pesée).
- Contrôle fonctionnel (mesure des températures d’air soufflé, lecture des pressions BP/HP en marche). 
Chapitre 3 : Documentation et points de contrôle
Exemple de fiche d’intervention CQP : identification du véhicule, version du système A/C, relevés d’essai,
recommandations au client. Tableaux comparatifs de diagnostic :
- Pression BP stable vs Fluide suffisant (bon fonctionnement) ou vs Fuite en BP (chute rapide).
- Pression HP trop basse : compresseur défaillant ou ventilateur condenseur HS. 
Étude de cas pratique : Réparation complète après accident. Suite à un choc avant, le condenseur et les
durites ont été endommagés. Le technicien doit démonter, remplacer, réaligner le condenseur, purger le
fluide, puis vérifier le bon fonctionnement à plusieurs régimes moteur. Rapports et test sur route sont
réalisés pour valider l’intervention. 
Conclusion du module 8 – Points clés :
- La maintenance requiert rigueur et respect des procédures (vidange, vide, recharge) pour garantir la
pérennité du système.
- Un rapport technique clair et complet est indispensable, comportant relevés précis et conformité
règlementaire (attestation de capacité).
- Les points de contrôle finaux (températures soufflées, pression en statique) confirment l’efficacité de
l’intervention et la sécurité de circulation du véhicule. 
Sources principales : Manuels techniques constructeurs (Valeo, Delphi), fiches AFPA/ANFA, et documents
industriels sur les fluides frigorigènes (Climalife) , ainsi que supports pédagogiques
spécialisés sur la climatisation automobile.', 
'src/assets/images/Maintenance_de_Climatisation_-_Partie_8.jpg'),
('MOD006_CLIM2',7, 'Optimisation de Climatisation – Partie 1', 
'Formation Complète de Climatisation Automobile – CQP Techniciens Confirmés La climatisation automobile est définie comme « l’ensemble des moyens utili...', 
'Formation Complète de Climatisation Automobile
– CQP Techniciens Confirmés
La climatisation automobile est définie comme « l’ensemble des moyens utilisés pour maintenir dans
l’habitacle une atmosphère constante (température, pression et humidité) » . Elle vise à garantir
visibilité, confort et sécurité (absence de buée, maintien de la vigilance du conducteur, etc.) . Les huit
modules ci-dessous (300 h chacun, total 2400 h) couvrent de manière progressive tous les aspects
techniques, réglementaires et pratiques pour un technicien CQP confirmé.
Module 1 : Optimisation de Climatisation – Partie 1
Objectifs pédagogiques :
- Comprendre les enjeux environnementaux liés aux fluides frigorigènes et les impacts énergétiques.
- Savoir analyser et optimiser le cycle frigorifique pour améliorer l’efficacité (COP – coefficient de
performance).
- Maîtriser la sélection et l’adaptation des composants haute-performance (compresseurs variables,
échangeurs à haut rendement). 
Introduction technique :
Ce module aborde l’optimisation des performances du système de climatisation. Il s’agit de réduire la
consommation d’énergie tout en maintenant un confort optimal. On y étudie les paramètres clés du circuit
frigorifique (pression haute/basse, surchauffe, sous-refroidissement, débits d’air) et leur ajustement fin. Les
nouveaux fluides (R-1234yf à bas GWP, etc.) et technologies modernes (compresseurs à cylindrée variable,
régulation électronique) sont également présentés. 
Chapitre 1 : Critères de performance du cycle frigorifique
On décrit le cycle frigorifique complet (compresseur, condenseur, détendeur, évaporateur) et les grandeurs
mesurables (pressions, températures, débits). On étudie notamment :
- Surchauffe (Superheat) : température du gaz à la sortie de l’évaporateur, indicateur de sécurité.
- Sous-refroidissement (Subcooling) : température du liquide après condenseur, indice de charge correcte.
- Équilibre du débit d’air : rôle des ventilateurs cabine et condenseur pour l’évacuation de chaleur.
Cette partie insiste sur les méthodes de mesure et de réglage (capteurs de température à l’évaporateur,
pressostats haute/basse pression, etc.). 
Chapitre 2 : Composants d’optimisation
Focus sur les composants avancés :
- Compresseurs à cylindrée variable ou à commande électrique, permettant d’adapter la puissance
frigorifique selon la charge et de réduire la consommation moteur.
- Condenseurs et évaporateurs haute efficacité (micro-canaux, revêtements améliorant l’échange
thermique).
- Systèmes d’aide au dégivrage (by-pass, chauffage auxiliaire) pour optimiser le fonctionnement en
conditions extrêmes.
Un tableau comparatif peut illustrer les fluides frigorigènes utilisés (ancien R-134a vs nouveau R-1234yf et
CO2) : 
Fluide
frigorigène
PRP
(GWP)
ODP
(appauvrissement
ozone)
Classe A1/A2L Usage actuel (France)
R-134a (HFC)
~1430
0
A1 (non inflammable)
Ancien standard, retiré
(véhicules neufs >2017)
R-1234yf
(HFO)
~4 0
A2L (faiblement
inflammable)
Nouveau standard
(véhicules neufs depuis
2017)
R-744 (CO₂,
naturel) 1 0 A1
Prochaines générations
(systèmes haute
pression)
Tableau comparatif (exemple) : caractéristiques principales des frigorigènes courants. Le
R-1234yf présente un GWP très faible (~4) mais est faiblement inflammable (A2L) . 
Étude de cas pratique : Amélioration de l’efficacité énergétique d’un utilitaire. Analyse d’un cas réel où, en
ajustant les paramètres du compresseur (consigne de pression, gestion PWM), on réduit la consommation
tout en respectant les consignes de confort. Diagnostic de performance au banc climatisation, ajustements
de charge de fluide et bilan avant/après. 
Conclusion du module 1 – Points clés :
- La climatisation doit désormais utiliser des fluides à faible PRP et respecter les normes (véhicules neufs
PRP ≤150 dès 2017 ).
- Optimiser le cycle frigorifique passe par le réglage précis de la surchauffe, du sous-refroidissement et du
débit d’air.
- Les nouvelles technologies (compresseurs variables, échangeurs haut rendement) sont présentées et
comparées pour leur impact sur la consommation.', 
'src/assets/images/Optimisation_de_Climatisation_-_Partie_1.jpg'),
('MOD007_CLIM2',7, 'Optimisation de Climatisation – Partie 5', 
'Module 5 : Optimisation de Climatisation – Partie 5 Objectifs pédagogiques : - Approfondir les techniques de diagnostic avancé (analyse de courbes, ba...', 
'Module 5 : Optimisation de Climatisation – Partie 5
Objectifs pédagogiques :
- Approfondir les techniques de diagnostic avancé (analyse de courbes, bancs d’essai, diag électronique).
- Étudier l’intégration de la climatisation dans le système global du véhicule (effets sur la consommation et
l’autonomie).
- Comprendre la conception des systèmes multi-zones et automatismes climatiques. 
Introduction technique :
Ce module poursuit le thème de l’optimisation, en mettant l’accent sur l’analyse de performance et
l’intégration système. On y explique comment la climatisation impacte la consommation totale : par
exemple, sur une voiture essence, l’A/C peut augmenter la conso de 10–20 % en ville. On étudie les moyens
de limiter ces effets (arrêts auto du compresseur, recyclage intelligent, pré-refroidissement de l’habitacle à
l’arrêt). On introduit également les systèmes multi-zones (2 ou 3 zones) et les régulations automatiques
(climate control) qui équilibrent le confort entre conducteur et passagers. 
Chapitre 1 : Diagnostics sur banc d’essai
Techniques de mesure en laboratoire : mesure des pressions haute/basse en charge, calcul du COP via
rapport chaleur produite/énergie consommée. Utilisation d’un schéma de Mollier (diagramme enthalpiepression) pour visualiser le cycle réel et détecter les écarts par rapport au cycle théorique. On montre
comment interpréter une courbe de pression-temps enregistrée lors d’un cycle de test. 
Chapitre 2 : Impact sur le groupe motopropulseur
Exploration du couplage A/C–moteur. Discussion sur les compresseurs à débattement variable et sur les
entraînements accessoires. Pour les véhicules hybrides/électriques, on aborde l’usage possible du
refroidissement par le circuit de batterie et le rôle du compresseur électrique indépendant. 
Chapitre 3 : Régulation électronique et automatisme
Étude du fonctionnement du climatiseur automatique : algorithmes de contrôle, abaissement de la
consommation en mode Eco (arrêt automatique de l’A/C au freinage régénératif par exemple). Présentation
de capteurs supplémentaires (ensoleillement, CO₂ intérieur) permettant d’affiner la commande. 
Étude de cas pratique : Bilan énergétique d’un véhicule. Sur un véhicule donné, on compare la
consommation de carburant avec climatisation activée/désactivée, sur cycle urbain et autoroute, pour
quantifier l’impact de l’A/C. Le cas met en évidence l’intérêt de stratégies d’optimisation telles que le prérefroidissement (démarrage à distance) ou le recyclage de l’air en ville. 
Conclusion du module 5 – Points clés :
- L’A/C représente une charge non négligeable pour le moteur ; son pilotage intelligent (compresseur
variable, modes Eco) est crucial pour limiter l’impact sur la consommation.
- Les diagnostics avancés sur banc et l’utilisation de diagrammes (Mollier) permettent de vérifier
l’optimisation du cycle.
- L’électronique de contrôle (capteurs et calculateur) offre des automatisations pour maximiser le confort
tout en minimisant l’énergie utilisée.', 
'src/assets/images/Optimisation_de_Climatisation_-_Partie_5.jpg'),
('MOD008_CLIM2',7, 'Optimisation de Climatisation – Partie 7', 
'Module 7 : Optimisation de Climatisation – Partie 7 Objectifs pédagogiques : - Étudier les innovations (HFO de nouvelle génération, fluides naturels)...', 
'Module 7 : Optimisation de Climatisation – Partie 7
Objectifs pédagogiques :
- Étudier les innovations (HFO de nouvelle génération, fluides naturels) et leur mise en œuvre.
- Approfondir les techniques avancées de diagnostic (infiltrométrie, bancs isothermes).
- Connaître les stratégies de recyclage et d’éco-conduite liées à la climatisation. 
Introduction technique :
Ce module final sur l’optimisation porte sur les dernières avancées technologiques et sur l’efficacité
écologique. On y présente les fluides HFO-1234yf « hyper-efficients », ainsi que des mélanges alternatifs
(R-452A, R-454B…). On aborde aussi la récupération de chaleur possible via la climatisation (systèmes
réversibles ou pompe à chaleur) dans les véhicules hybrides. Des études montrent qu’une climatisation
optimisée (captage de chaleur, mode « eco » de clim) peut réduire substantiellement l’empreinte carbone du
véhicule. 
Chapitre 1 : Fluides alternatifs et compatibilité
Analyse des nouvelles molécules (HFO-1234ze, R-290 propane, R-744 CO₂) : leurs propriétés
thermodynamiques, risques (inflammabilité, pression), et adaptabilité aux compresseurs existants.
Exemple : la transition R-134a→R-1234yf nécessite une purge totale du circuit et des composants
9
compatibles (huiles PAG ou POE appropriées) . On fournit un tableau de compatibilité des huiles
lubrifiantes selon le fluide utilisé. 
Chapitre 2 : Diagnostics avancés
Techniques de détection ultrasensible (analyseur de gaz, fibre optique). Description de la technique
d’infiltrométrie pour mesurer les pertes de charge interne (pertes de ligne) et identifier les goulots
d’étranglement (ex. détendeur partiellement obstrué). Utilisation de bancs d’essai isothermes pour
caractériser séparément condenseur et évaporateur. 
Chapitre 3 : Éco-conduite et recyclage d’énergie
Recommandations professionnelles pour les utilisateurs : utilisation du recyclage d’air en ville, entretiens
préventifs, remplacement des joints avant 5 ans. Pour les systèmes hygrothermiques : comment la
climatisation peut pré-refroidir la batterie sur un VE, ou récupérer de l’énergie grâce à des échangeurs
supplémentaires. 
Étude de cas pratique : Conversion d’un système R-12 vers R-1234yf. Bien qu’anciens, certains véhicules R-12
maintenus en circulation peuvent être rétrofits. Analyse des contraintes (changement de joints, huiles,
étiquetage), procédure de vidange du R-12, nettoyage du circuit, et recharge en R-1234yf. On évalue les
gains en efficacité et conformité règlementaire. 
Conclusion du module 7 – Points clés :
- Les fluides de nouvelle génération permettent de très faibles GWP mais impliquent souvent des
contraintes d’inflammabilité et de pression.
- Le diagnostic très fin (pressions, températures, fuites microscopiques) maximise la durabilité du système.
- L’éco-conduite (utilisation judicieuse de la climatisation) complète l’optimisation technique pour réduire
l’impact environnemental.', 
'src/assets/images/Optimisation_de_Climatisation_-_Partie_7.jpg'),
('MOD001_EEMB2',8, 'Module 1 _ Réparer l''Électronique Embarquée', 
'Absolument ! Voici une version développée de chaque point du module, expliquée pour vos apprenants. Module 1 : Réparer l''Électronique Embarquée – Part...', 
'Absolument ! Voici une version développée de chaque point du module, expliquée pour vos apprenants.
Module 1 : Réparer l''Électronique Embarquée – Partie 1 (500h)
Objectif général : Ce module est conçu pour vous permettre d''acquérir une maîtrise solide des techniques indispensables au diagnostic, au contrôle précis et à la réparation efficace des différents systèmes électroniques embarqués que l''on trouve dans les véhicules automobiles modernes. Vous apprendrez à comprendre leur fonctionnement, à identifier les pannes et à intervenir en toute sécurité.

1. Analyse des Circuits Électroniques des Véhicules (environ 120h)
Dans cette première partie, nous allons jeter les bases de votre compréhension de l''électronique automobile.
Fondamentaux de l''électricité et de l''électronique automobile :
Nous commencerons par revoir les grandeurs électriques essentielles : la tension (U), qui est la "force" du courant, mesurée en Volts (V) ; l''intensité (I), qui est le "débit" du courant, mesurée en Ampères (A) ; la résistance (R), qui s''oppose au passage du courant, mesurée en Ohms (Ω) ; et la puissance (P), qui est l''énergie consommée, mesurée en Watts (W). La loi d''Ohm (U = R x I) sera notre outil fondamental pour comprendre la relation entre ces grandeurs.
Ensuite, nous étudierons les composants passifs : les résistances, qui limitent le courant ; les condensateurs, qui stockent de l''énergie électrique ; et les selfs (ou bobines), qui s''opposent aux variations de courant. Puis, nous aborderons les composants actifs, comme les diodes, qui ne laissent passer le courant que dans un sens, et les transistors (de types NPN, PNP, MOSFET), qui agissent comme des interrupteurs ou des amplificateurs commandés. Nous verrons également les principes de base des circuits intégrés, qui regroupent de nombreux composants sur une petite puce.

Lecture et interprétation de schémas électriques :
Savoir lire un schéma électrique est crucial. Vous apprendrez à reconnaître les symboles normalisés qui représentent chaque composant, à comprendre les codes couleurs des fils (même si cela varie entre constructeurs) et à repérer physiquement les composants sur le véhicule ou sur une carte électronique. Nous nous entraînerons à suivre les circuits d''alimentation, les connexions de masse (le retour du courant) et les chemins des signaux entre les différents éléments. L''utilisation de la documentation technique fournie par les constructeurs sera une compétence clé, car elle contient les schémas spécifiques à chaque modèle de véhicule.

Architecture des systèmes électroniques embarqués :
Les voitures modernes sont de véritables réseaux informatiques roulants. Vous découvrirez les systèmes multiplexés, une technologie qui permet à plusieurs calculateurs de communiquer entre eux en utilisant un nombre réduit de fils. Nous étudierons les principes des principaux bus de communication : le bus CAN (Controller Area Network), utilisé pour les informations critiques (moteur, sécurité) et qui existe en versions Low Speed et High Speed ; le bus LIN (Local Interconnect Network), pour les fonctions de confort moins rapides (lève-vitres, rétroviseurs) ; et le bus FlexRay, plus rapide et plus fiable, utilisé pour des systèmes avancés comme la direction ou la suspension active. Vous comprendrez les différentes topologies réseau (comment les calculateurs sont connectés) et le rôle des passerelles (Gateway), qui font le lien entre différents réseaux.

Capteurs et actionneurs :
Les capteurs sont les "sens" du véhicule. Ils mesurent diverses grandeurs physiques (température du moteur, pression d''huile, vitesse des roues, position de l''accélérateur, etc.) et envoient ces informations sous forme de signaux électriques (analogiques, numériques) aux calculateurs. Nous étudierons les différents types de capteurs, leur principe de fonctionnement et les caractéristiques de leurs signaux de sortie.
Les actionneurs, eux, sont les "muscles" du véhicule. Ils reçoivent des commandes des calculateurs et effectuent des actions physiques : les injecteurs pulvérisent le carburant, les électrovannes contrôlent des flux de liquide ou d''air, les moteurs pas-à-pas permettent des positionnements précis. Nous verrons comment ces actionneurs sont commandés et comment diagnostiquer leur bon fonctionnement.


2. Techniques de Soudure CMS et Remplacement de Composants (environ 150h)
Cette section vous apprendra l''art délicat de la micro-soudure, indispensable pour réparer les cartes électroniques.
Introduction aux technologies de montage :
Il existe principalement deux façons de fixer les composants sur un circuit imprimé : les composants traversants (THT - Through-Hole Technology), dont les pattes traversent la carte pour être soudées de l''autre côté, et les Composants Montés en Surface (CMS ou SMD - Surface Mount Device), qui sont soudés directement sur des pistes à la surface de la carte. Les CMS sont plus petits et permettent une plus grande densité de composants. Vous apprendrez à identifier les différents boîtiers CMS (la "carapace" du composant) pour les résistances, condensateurs, circuits intégrés (ICs), y compris les plus complexes comme les QFP (Quad Flat Package) ou les BGA (Ball Grid Array) qui ont des connexions dessous.

Matériel et consommables pour la soudure :
Un bon équipement est essentiel. Nous explorerons les stations de soudage : le fer à souder classique pour les composants traversants et certains CMS, la station à air chaud qui souffle de l''air à température contrôlée pour souder ou dessouder les CMS, et parfois les systèmes à infrarouge. Vous apprendrez à choisir les pannes de fer et les buses d''air chaud adaptées à la taille des composants, ainsi qu''à régler les températures de travail optimales. Le choix des alliages de soudure (avec ou sans plomb, ce dernier étant plus écologique mais plus difficile à travailler) et des flux de soudure (qui facilitent la fusion de l''étain et nettoient les surfaces) sera également abordé.

Techniques de soudure et dessoudure :
La soudure est un savoir-faire qui demande de la pratique. Nous insisterons sur la préparation minutieuse des zones de travail et des composants (nettoyage, étamage si nécessaire). Vous apprendrez les méthodes de soudure manuelle des CMS, qui peuvent être très petits. Les techniques de dessoudure sécurisées pour les CMS (avec air chaud ou des outils spéciaux) et pour les THT (composants traversants) seront enseignées pour éviter d''endommager la carte ou les composants voisins. L''utilisation de la tresse à dessouder (qui absorbe l''étain fondu) et de la pompe à vide (qui l''aspire) sera pratiquée.

Remplacement de composants spécifiques :
Certains composants, comme les connecteurs multi-broches, les microprocesseurs (le "cerveau" du calculateur) ou les mémoires (qui stockent les données et le programme), demandent une attention particulière lors de leur remplacement. L''une des plus grandes menaces pour ces composants est l''électricité statique. Vous apprendrez donc les précautions antistatiques (ESD - ElectroStatic Discharge) indispensables : bracelet antistatique, tapis de travail spécifique, outils adaptés.

Contrôle et nettoyage :
Une fois la soudure effectuée, un contrôle rigoureux s''impose. L''inspection visuelle des soudures, souvent à l''aide d''une loupe ou d''un microscope binoculaire, permet de s''assurer de leur qualité (bonne mouillabilité, absence de ponts de soudure ou de soudures froides). Le nettoyage des résidus de flux avec des produits adaptés est important pour éviter la corrosion et les problèmes à long terme. Enfin, des tests de continuité (pour vérifier que le courant passe où il doit) et d''isolement (pour s''assurer qu''il n''y a pas de courts-circuits) sont effectués après la réparation.


3. Utilisation d''Outils de Diagnostic et de Réparation (environ 130h)
Savoir utiliser les bons outils est la clé d''un diagnostic rapide et précis.
Multimètre numérique automobile :
Le multimètre est l''outil de base de tout électronicien. Vous apprendrez à l''utiliser pour effectuer des mesures de tension (continue DC pour la plupart des circuits automobiles, alternative AC pour certains capteurs ou l''alternateur), de courant (en prenant des précautions particulières pour ne pas griller le fusible du multimètre ou endommager le circuit), et de résistance. Vous saurez également réaliser des tests de continuité (pour vérifier si un fil est coupé), des tests de diodes, et parfois mesurer la fréquence ou le rapport cyclique (pour les signaux PWM). Surtout, vous apprendrez à interpréter ces mesures dans le contexte d''un diagnostic automobile pour déterminer si une valeur est normale ou anormale.

Oscilloscope numérique :
L''oscilloscope est un outil plus avancé qui permet de "voir" l''électricité. Il affiche la forme d''un signal électrique en fonction du temps. Vous comprendrez ses principes de fonctionnement et apprendrez à effectuer les réglages essentiels : la base de temps (pour "zoomer" sur le signal dans le temps), le calibre vertical (pour ajuster l''amplitude du signal à l''écran), et le trigger (pour stabiliser l''image). L''oscilloscope est indispensable pour l''analyse des signaux complexes des capteurs (signaux analogiques variables, signaux numériques carrés, signaux PWM - Modulation de Largeur d''Impulsion), et pour la visualisation et le diagnostic des signaux des bus de données comme le bus CAN, afin de détecter des erreurs de communication. L''utilisation de sondes spécifiques (sondes de courant, sondes différentielles) sera également abordée.

Outils de diagnostic constructeur et multimarques (valises de diagnostic) :
Ces "valises" sont des ordinateurs spécialisés qui se connectent à la prise diagnostic du véhicule (OBD). Vous apprendrez à les utiliser pour la lecture et l''interprétation des codes défauts (DTC - Diagnostic Trouble Codes) enregistrés par les calculateurs. Vous saurez également consulter les paramètres et les données en temps réel (température moteur, régime, position papillon, etc.) pour comprendre le comportement du système. Ces outils permettent aussi de réaliser des tests d''actuateurs (par exemple, commander l''ouverture d''une vanne EGR pour vérifier son fonctionnement) et d''effectuer des procédures d''apprentissage (par exemple, après le remplacement d''une batterie ou d''un capteur) et de codage de base (pour configurer certaines options du véhicule).

Autres outils :
D''autres outils complètent la panoplie du technicien. Le générateur de signaux peut être utilisé pour envoyer un signal connu à un calculateur afin de simuler un capteur et de vérifier la réaction du système. Les boîtiers de dérivation (breakout boxes) s''intercalent sur un connecteur et permettent de mesurer facilement les signaux sans endommager les fils. Les lampes témoins intelligentes (plus sophistiquées qu''une simple lampe témoin) ou les testeurs de batterie et de circuit de charge sont également des aides précieuses.


4. Études de Cas sur la Réparation de Calculateurs (ECU) et Autres Modules (environ 100h)
Ici, nous mettrons en pratique tout ce que vous avez appris en travaillant sur des cas concrets de réparation de calculateurs.
Architecture typique d''un calculateur (ECU, BSI, UCH, etc.) :
Un calculateur (aussi appelé ECU - Electronic Control Unit, BSI - Boîtier de Servitude Intelligent, UCH - Unité de Contrôle Habitacle, selon sa fonction et le constructeur) est une petite merveille de technologie. Vous découvrirez son architecture interne typique : le microcontrôleur (ou microprocesseur), qui est le "cerveau" exécutant le programme ; les mémoires (EPROM, EEPROM, Flash) qui stockent le programme de fonctionnement (firmware) et les données variables (codes défauts, configurations) ; les étages d''entrée qui reçoivent et conditionnent les signaux des capteurs ; et les étages de sortie qui commandent les actionneurs. Les circuits d''alimentation internes et les interfaces de communication (pour les bus CAN, LIN, etc.) sont également des éléments clés.

Pannes courantes et diagnostic des calculateurs :
Malgré leur sophistication, les calculateurs peuvent tomber en panne. Nous étudierons les pannes les plus courantes : les problèmes d''alimentation (absence de tension, mauvaise masse), la défaillance de composants de puissance (drivers) qui commandent les actionneurs (par exemple, un transistor qui grille et empêche un injecteur de fonctionner), les problèmes de communication sur les bus (un calculateur qui n''envoie plus ou ne reçoit plus d''informations), ou encore la corruption de données en mémoire qui peut entraîner un dysfonctionnement général. Vous apprendrez à diagnostiquer ces pannes.

Méthodologies de diagnostic avancé sur modules :
Pour diagnostiquer un calculateur, une méthodologie rigoureuse est nécessaire. Cela inclut des contrôles hors tension (mesure de résistances, vérification de l''absence de courts-circuits) et des contrôles sous tension (mesure des alimentations, des signaux d''entrée et de sortie). Vous apprendrez à identifier les composants potentiellement défectueux sur le circuit imprimé (PCB) en vous basant sur les symptômes et les mesures. L''analyse des datasheets (fiches techniques) des composants vous aidera à comprendre leur fonctionnement normal et leurs caractéristiques électriques.

Études de cas pratiques et guidées :
C''est le moment de mettre les mains dans le cambouis ! À travers des études de cas concrets et supervisés, vous appliquerez vos connaissances. Par exemple, vous pourriez être amené à :

Diagnostiquer et tenter de réparer un calculateur de gestion moteur présentant un problème d''injection ou d''allumage.
Intervenir sur un module de confort (comme celui qui gère les lève-vitres ou la centralisation des portes) défaillant.
Analyser une panne sur un système de sécurité active comme l''ABS ou l''ESP.
Rechercher la cause d''un dysfonctionnement sur un module de tableau de bord. Ces exercices pratiques seront essentiels pour développer votre confiance et vos compétences.
Introduction à la lecture/écriture de mémoires (sensibilisation) :
Dans certains cas très spécifiques de réparation, il peut être nécessaire de lire le contenu d''une mémoire (pour sauvegarder des données de configuration) ou d''écrire un nouveau programme (firmware). Nous aborderons cette technique en insistant sur la sensibilisation aux aspects légaux (droits d''auteur sur les logiciels, interdictions de modification pour certains systèmes de sécurité) et techniques (risques de "briquer" un calculateur si l''opération est mal effectuée). Ce sera une introduction pour comprendre les possibilités et les limites.', 
'src/assets/images/Module_1___Réparer_lÉlectronique_Embarquée.jpg'),
('MOD002_EEMB2', 8, 'Module 2 _ Maintenance de l''Électronique Embarquée', 
'Parfait, continuons avec le développement du Module 2 sur le même principe, en expliquant chaque point pour vos apprenants. Module 2 : Maintenance de...', 
'Parfait, continuons avec le développement du Module 2 sur le même principe, en expliquant chaque point pour vos apprenants.
Module 2 : Maintenance de l''Électronique Embarquée – Partie 2 (500h)
Objectif général : Ce second module vise à vous spécialiser dans la maintenance, à la fois préventive (pour éviter les pannes) et corrective (pour réparer ce qui est défaillant), des systèmes électroniques embarqués complexes. Vous développerez les compétences pour intervenir sur des technologies de pointe et assurer la fiabilité à long terme des véhicules.

1. Procédures de Maintenance des Systèmes ADAS, ABS, ESP, etc. (environ 150h)
Cette section se concentre sur les systèmes d''aide à la conduite et de sécurité active, qui sont de plus en plus présents et sophistiqués.
Comprendre et maintenir les Systèmes d''Aide à la Conduite Avancés (ADAS) :
Les systèmes ADAS (Advanced Driver-Assistance Systems) regroupent une multitude de technologies conçues pour assister le conducteur et améliorer la sécurité. Nous étudierons en détail les plus courants : le freinage d''urgence autonome (AEB) qui peut freiner le véhicule pour éviter une collision, l''aide au maintien dans la voie (LKA) qui corrige la trajectoire, le régulateur de vitesse adaptatif (ACC) qui maintient une distance de sécurité avec le véhicule précédent, la surveillance des angles morts (BSM), ou encore les systèmes d''aide au stationnement (caméras, radars).
La maintenance de ces systèmes est cruciale et très spécifique. Elle inclut souvent des procédures de calibration (ou étalonnage) des capteurs (caméras, radars) qui peuvent être nécessaires après un remplacement de pare-brise, une réparation de carrosserie ou le remplacement d''un capteur. Il existe des calibrations statiques (effectuées en atelier avec des cibles spécifiques) et dynamiques (réalisées en roulant selon un protocole précis). Vous apprendrez également l''importance du nettoyage et de l''inspection régulière des capteurs, de la vérification des connexions électriques et de la nécessité de s''assurer que les logiciels de ces systèmes sont à jour.

Maintenance des systèmes de sécurité active fondamentaux : ABS et ESP :
Le système antiblocage des roues (ABS - Anti-lock Braking System) empêche les roues de se bloquer lors d''un freinage d''urgence, permettant au conducteur de conserver le contrôle de la direction. L''ESP (Electronic Stability Program), ou contrôle électronique de la stabilité, va plus loin en aidant à maintenir le véhicule sur sa trajectoire en cas de perte d''adhérence, par exemple dans un virage pris trop rapidement, en freinant individuellement certaines roues et/ou en réduisant la puissance moteur.
Les procédures de maintenance pour l''ABS et l''ESP comprennent la vérification et le remplacement éventuel des capteurs de vitesse de roue, l''inspection de l''unité hydraulique (bloc ABS/ESP), la vérification du niveau et de la qualité du liquide de frein, ainsi que l''utilisation d''outils de diagnostic pour lire les codes défauts et effectuer des tests. Après le remplacement de certains composants (comme le bloc hydraulique ou certains capteurs d''angle de braquage), une calibration peut également être requise.

Maintenance d''autres systèmes électroniques de sécurité et de confort :
Au-delà des ADAS, de l''ABS et de l''ESP, d''autres systèmes électroniques requièrent une attention particulière. Par exemple, les systèmes d''airbags (SRS - Supplemental Restraint System) nécessitent des diagnostics précis et des précautions de manipulation extrêmes. Les systèmes de surveillance de la pression des pneus (TPMS - Tire Pressure Monitoring System) demandent des procédures de réapprentissage après un changement de roue ou de capteur. Nous aborderons les spécificités de maintenance de ces systèmes.

Importance cruciale du respect des procédures constructeur :
Pour tous ces systèmes, il est absolument impératif de suivre scrupuleusement les procédures et les spécifications fournies par le constructeur du véhicule. Chaque marque et chaque modèle peuvent avoir des particularités. L''utilisation de la documentation technique officielle est donc non négociable pour garantir une intervention sûre et efficace.


2. Mise à Jour des Logiciels des Calculateurs (environ 100h)
Les calculateurs automobiles sont gérés par des logiciels, et comme tout logiciel, ils peuvent nécessiter des mises à jour.
Pourquoi mettre à jour les logiciels des calculateurs ?
Les constructeurs publient régulièrement des mises à jour logicielles pour plusieurs raisons : pour corriger des bugs (erreurs de programmation) qui pourraient affecter le fonctionnement d''un système, pour améliorer les performances (par exemple, optimiser la gestion moteur pour réduire la consommation), pour introduire de nouvelles fonctionnalités mineures, ou pour assurer la compatibilité avec de nouveaux composants ou d''autres systèmes du véhicule. Ces mises à jour sont souvent essentielles pour maintenir le véhicule à son niveau optimal de fonctionnement et de sécurité.

Le processus de mise à jour (flashage ou reprogrammation) :
La mise à jour logicielle, souvent appelée "flashage" ou "reprogrammation", s''effectue généralement à l''aide d''outils de diagnostic spécifiques au constructeur (outils OEM) qui se connectent au véhicule et à internet pour télécharger le logiciel approprié depuis les serveurs du fabricant. Il est primordial d''assurer une alimentation électrique stable et continue au véhicule pendant toute la durée de la mise à jour (souvent via un mainteneur de charge de batterie puissant) pour éviter toute interruption qui pourrait être catastrophique. Il faut suivre méticuleusement les instructions fournies par l''outil et le constructeur.

Risques potentiels et précautions à prendre :
La mise à jour logicielle n''est pas une opération anodine. Le principal risque est de "briquer" le calculateur, c''est-à-dire de le rendre inutilisable si la procédure échoue ou est interrompue. Une perte de données de configuration est également possible. Pour minimiser ces risques, outre une alimentation stable, il est crucial de s''assurer de la compatibilité du logiciel avec le matériel du calculateur, d''utiliser un équipement de diagnostic fiable et de travailler dans un environnement stable. Certains outils permettent de réaliser des sauvegardes de la configuration existante avant de lancer la mise à jour.

Différents types de mises à jour et tendances futures :
Les mises à jour peuvent concerner le firmware (le logiciel de bas niveau qui fait fonctionner le matériel) ou les données de configuration. Une tendance émergente est la mise à jour logicielle à distance (SOTA - Software Over-The-Air), où le véhicule télécharge et installe les mises à jour automatiquement, un peu comme un smartphone. Vous serez sensibilisé à ces évolutions.


3. Gestion des Pannes Récurrentes et Analyse des Causes (environ 150h)
Identifier la véritable cause d''une panne, surtout si elle se répète, est un défi majeur.
Définition et impact des pannes récurrentes :
Une panne récurrente est un défaut qui réapparaît après une ou plusieurs tentatives de réparation. Ces pannes sont particulièrement frustrantes pour les clients et coûteuses pour l''atelier, en plus d''entamer la confiance. L''objectif est donc de les éliminer en traitant la cause profonde, et non uniquement le symptôme.

Introduction aux méthodologies d''analyse des causes profondes (Root Cause Analysis - RCA) :
Pour trouver la source réelle d''un problème, il existe des méthodes structurées. Nous aborderons des approches simplifiées comme la méthode des "5 Pourquoi" (se demander "Pourquoi ?" successivement jusqu''à atteindre la cause fondamentale) ou des concepts issus du diagramme causes-effets (diagramme d''Ishikawa ou en arêtes de poisson) pour explorer toutes les causes potentielles (main d''œuvre, matériel, méthode, milieu, matière).

L''importance d''une documentation détaillée et de la reconnaissance des schémas :
Une documentation méticuleuse de chaque intervention (symptômes décrits par le client, tests effectués, pièces remplacées, résultats observés) est fondamentale. Ces informations, consignées avec rigueur, peuvent aider à reconnaître des schémas de pannes (patterns). Par exemple, on peut constater qu''un type de panne spécifique apparaît fréquemment sur un certain modèle de véhicule, à un certain kilométrage, ou dans certaines conditions d''utilisation.

Utilisation des ressources techniques pour identifier les problèmes connus :
Les constructeurs publient souvent des Bulletins de Service Technique (BST ou TSB - Technical Service Bulletins) qui décrivent des problèmes connus, leurs causes probables et les solutions recommandées. L''accès et la consultation de ces bases de données techniques constructeur ou de forums professionnels peuvent faire gagner un temps précieux et orienter le diagnostic pour des pannes récurrentes ou complexes.

Adopter une approche diagnostique systématique et logique :
Face à une panne récurrente, il est essentiel de ne pas répéter les mêmes erreurs. Cela implique de repartir souvent de zéro dans le diagnostic, de vérifier les hypothèses précédentes, et d''appliquer une démarche logique et systématique, en éliminant les causes possibles une par une, plutôt que de remplacer des pièces au hasard.


4. Normes de Sécurité et de Qualité en Maintenance Électronique (environ 100h)
Intervenir sur des systèmes électroniques complexes exige un respect strict des normes pour garantir la sécurité et la qualité du travail.
Sécurité personnelle et de l''environnement de travail :
Votre sécurité est primordiale. Nous insisterons sur la sécurité électrique, notamment les dangers liés à la haute tension présente dans les véhicules électriques (VE) et hybrides (HEV), qui nécessitent des habilitations spécifiques et des équipements de protection individuelle (EPI) adaptés. Les précautions contre les décharges électrostatiques (ESD), déjà vues dans le module 1, restent cruciales pour protéger les composants électroniques sensibles. La manipulation sûre des composants et des outils pour éviter les blessures ou les dommages sera également couverte, ainsi que les aspects généraux de la sécurité en atelier (ventilation adéquate lors de soudures, prévention des incendies).

Assurer la qualité des interventions de maintenance :
La qualité de votre travail se reflète dans la fiabilité et la satisfaction du client. Cela passe par le strict respect des spécifications et des procédures de réparation édictées par les constructeurs. L''utilisation de pièces de rechange d''origine ou de qualité équivalente (OEM) est fortement recommandée pour garantir la longévité et la performance. Une documentation claire et complète du travail effectué assure la traçabilité de l''intervention. Il est indispensable d''effectuer des tests et des validations post-réparation rigoureux pour s''assurer que le problème initial est résolu et qu''aucun nouveau dysfonctionnement n''a été introduit.

L''importance de la formation continue et du respect de l''environnement :
La technologie automobile évolue à une vitesse fulgurante. Un aspect clé de la qualité est l''engagement dans une formation continue pour rester à jour avec les nouveaux systèmes et les nouvelles techniques de diagnostic et de réparation. Nous aborderons également brièvement les réglementations environnementales concernant la gestion et l''élimination des déchets électroniques et des composants dangereux de manière responsable.', 
'src/assets/images/Module_2___Maintenance_de_lÉlectronique_Embarquée.jpg'),
('MOD003_EEMB2',8, 'Module 3 _ Les Bases de l''Électronique Embarquée', 
'Absolument, voici une version développée pour le Module 3, conçue pour approfondir les connaissances fondamentales de vos apprenants. Module 3 : Les B...', 
'Absolument, voici une version développée pour le Module 3, conçue pour approfondir les connaissances fondamentales de vos apprenants.
Module 3 : Les Bases de l''Électronique Embarquée – Partie 3 (500h)
Objectif général : Ce troisième module est dédié à l''approfondissement de vos connaissances fondamentales en électronique embarquée. Nous allons consolider et étendre votre compréhension des principes qui régissent les systèmes électroniques des véhicules, en allant plus loin dans la théorie et les applications pratiques.

1. Électronique Analogique et Numérique Appliquée à l''Automobile (environ 130h)
Dans cette section, nous allons explorer plus en détail les deux grands domaines de l''électronique et leurs applications spécifiques dans le secteur automobile.
Approfondissement de l''Électronique Analogique Automobile :
L''électronique analogique traite des signaux qui varient de manière continue. Nous reviendrons sur les signaux analogiques de base comme la tension et le courant, mais en nous concentrant sur leurs applications pratiques. Un aspect crucial sera le conditionnement des signaux issus des capteurs : comment amplifier un signal faible à l''aide d''amplificateurs opérationnels (AOP) pour qu''il soit utilisable par un calculateur, ou comment filtrer un signal pour éliminer les bruits parasites et ne conserver que l''information utile. Nous aborderons également les bases de l''électronique de puissance dans le contexte automobile, comme les principes de régulation de tension pour fournir des alimentations stables aux différents modules, et nous pourrons introduire des notions simples sur les convertisseurs DC-DC qui adaptent les niveaux de tension. L''analyse de circuits analogiques typiques que l''on retrouve dans les étages d''entrée des calculateurs (ECU), chargés de recevoir et de préparer les signaux des capteurs, sera une part importante de cette section.

Exploration de l''Électronique Numérique Automobile :
L''électronique numérique, quant à elle, travaille avec des signaux qui ne peuvent prendre que des valeurs discrètes, typiquement deux états (0 ou 1, correspondant à des niveaux de tension bas et haut). Après une révision du système binaire (la base du numérique) et des portes logiques fondamentales (ET, OU, NON, OU-Exclusif, NON-ET, NON-OU), qui sont les briques de base de tout circuit numérique, nous irons plus loin. Vous découvrirez les circuits logiques combinatoires, comme les multiplexeurs (qui sélectionnent une entrée parmi plusieurs), les démultiplexeurs (qui dirigent une entrée vers une sortie parmi plusieurs), les décodeurs et les encodeurs, et verrez leurs applications concrètes dans l''automobile (par exemple, pour la gestion de l''affichage ou la sélection de commandes). Nous introduirons ensuite les circuits logiques séquentiels, tels que les bascules (flip-flops), les verrous (latches), les registres (pour mémoriser des informations binaires) et les compteurs, et leurs rôles, par exemple pour stocker des états de fonctionnement ou compter des impulsions. Un point essentiel sera l''étude des convertisseurs Analogique-Numérique (CAN ou ADC), qui transforment les signaux analogiques des capteurs en données numériques compréhensibles par les microcontrôleurs, et des convertisseurs Numérique-Analogique (CNA ou DAC), qui font l''inverse pour commander certains actionneurs.


2. Architecture des Systèmes Embarqués (environ 120h)
Comprendre comment les différents éléments électroniques d''un véhicule sont organisés et interagissent est fondamental.
Structure interne et organisation des calculateurs (ECU) :
Nous revisiterons la structure interne d''un calculateur (ECU), en détaillant davantage les rôles du microcontrôleur, des mémoires, des interfaces d''entrée/sortie, et des circuits d''alimentation. Vous apprendrez à identifier ces blocs sur une carte électronique et à comprendre leur fonction spécifique.

Niveaux d''intégration et types d''architectures électroniques :
L''architecture électronique d''un véhicule peut varier. Nous discuterons des différents niveaux d''intégration des systèmes, depuis les architectures distribuées (avec de nombreux petits calculateurs spécialisés) jusqu''aux architectures plus centralisées qui utilisent des contrôleurs de domaine (par exemple, un contrôleur pour tout le groupe motopropulseur, un autre pour le châssis, un pour le confort, etc.). Vous comprendrez les avantages et inconvénients de chaque approche.

Interactions et communication entre calculateurs :
Nous approfondirons le fonctionnement des bus de communication (CAN, LIN, FlexRay). Au-delà de leur simple identification, nous nous pencherons sur les protocoles de communication, la structure des trames de messages (comment l''information est formatée et envoyée), et les mécanismes de gestion des erreurs qui assurent la fiabilité des échanges d''informations entre les calculateurs.

Introduction aux systèmes d''exploitation temps réel (RTOS) :
De nombreux calculateurs automobiles, surtout ceux qui gèrent des fonctions critiques, utilisent un système d''exploitation temps réel (RTOS - Real-Time Operating System). Nous introduirons brièvement leur rôle : pourquoi sont-ils nécessaires (pour garantir que les tâches s''exécutent dans des délais stricts) et comment ils gèrent les différentes fonctions logicielles du calculateur.

Gestion de l''énergie dans les systèmes embarqués :
La gestion de l''alimentation électrique est un enjeu majeur dans un véhicule. Nous étudierons comment l''énergie est distribuée et gérée au sein des systèmes embarqués, y compris les modes de veille pour réduire la consommation lorsque le véhicule est à l''arrêt, et les stratégies de réveil.


3. Introduction aux Microcontrôleurs et Microprocesseurs (environ 130h)
Ce sont les cerveaux des systèmes électroniques ; il est donc essentiel de bien les comprendre.
Distinction fondamentale entre Microcontrôleur (MCU) et Microprocesseur (MPU) :
Bien que les termes soient parfois utilisés de manière interchangeable, il existe une différence clé. Vous apprendrez à clairement différencier un microcontrôleur d''un microprocesseur.

Les Microcontrôleurs (MCU) : des systèmes complets sur une puce :
Un microcontrôleur (MCU) est un véritable petit ordinateur intégré sur une seule puce. Il contient une unité centrale de traitement (CPU), de la mémoire vive (RAM) pour les données temporaires, de la mémoire morte ou Flash (ROM/Flash) pour stocker le programme, et de nombreux périphériques d''entrée/sortie (I/O). Nous étudierons les périphériques courants intégrés dans les MCU automobiles, tels que les temporisateurs (timers), les convertisseurs analogique-numérique (ADC), les interfaces de communication série (comme SPI, I2C, UART) et les contrôleurs CAN intégrés. Nous mentionnerons brièvement les types de jeux d''instructions (CISC vs. RISC) pour vous donner une idée de la manière dont ils exécutent les programmes. Vous verrez comment les MCU sont utilisés dans de nombreux calculateurs spécifiques comme ceux qui gèrent les lève-vitres, les rétroviseurs, ou des modules de capteurs simples.

Les Microprocesseurs (MPU) : puissance de calcul pour tâches complexes :
Un microprocesseur (MPU) est principalement une unité centrale de traitement (CPU) qui nécessite des composants externes pour fonctionner, comme de la mémoire RAM, de la mémoire Flash, et des puces pour gérer les périphériques. Les MPU offrent généralement une plus grande puissance de calcul que les MCU et sont utilisés dans des systèmes plus complexes qui demandent beaucoup de traitement, comme les systèmes d''infodivertissement (autoradio, GPS, écran tactile) ou les calculateurs avancés pour les systèmes d''aide à la conduite (ADAS) qui traitent des images ou des données radar. Nous discuterons de leur interaction avec ces composants externes.


4. Étude Approfondie des Capteurs et Actionneurs Utilisés dans les Véhicules (environ 120h)
Nous allons revisiter les capteurs et actionneurs, mais cette fois avec un niveau de détail technique plus poussé.
Capteurs : les organes sensoriels du véhicule (étude approfondie) :
Nous irons au-delà de la simple identification des capteurs. Vous apprendrez à les classifier selon leur principe de fonctionnement physique : par exemple, les capteurs résistifs (dont la résistance varie), capacitifs, inductifs, à effet Hall (sensibles aux champs magnétiques), optiques, ultrasoniques, ou encore les MEMS (Micro-Electro-Mechanical Systems) comme les accéléromètres et gyroscopes.
Pour une sélection de capteurs automobiles courants (par exemple, capteur de pression absolue d''admission - MAP, sonde à oxygène - lambda, capteurs de vitesse de roue, capteurs de position vilebrequin/arbre à cames), nous analyserons en détail leur fonctionnement interne précis, les caractéristiques de leurs signaux de sortie (tension variable, fréquence, rapport cyclique, ou même des protocoles de communication numérique spécifiques comme SENT), ainsi que leurs modes de défaillance les plus courants et comment les diagnostiquer. Nous aborderons également des concepts plus avancés comme les capteurs intelligents (qui intègrent une partie du traitement du signal) et la fusion de capteurs (qui consiste à combiner les informations de plusieurs capteurs pour obtenir une mesure plus fiable ou plus complète).

Actionneurs : les muscles du véhicule (étude approfondie) :
De même pour les actionneurs, nous approfondirons leur étude. Nous les classifierons (par exemple, solénoïdes/électrovannes, moteurs à courant continu (DC), moteurs pas-à-pas, moteurs brushless DC (BLDC), et les actionneurs hydrauliques ou pneumatiques commandés électroniquement).
Pour des actionneurs automobiles typiques (comme les injecteurs de carburant, le moteur du boîtier papillon motorisé, la vanne EGR, les moteurs de ventilateur de refroidissement), nous détaillerons leurs mécanismes de commande (par exemple, la modulation de largeur d''impulsion - PWM - pour faire varier la vitesse des moteurs ou le degré d''ouverture d''une vanne) et les circuits de pilotage (drivers) spécifiques qui les alimentent. Nous expliquerons les mécanismes de retour d''information (feedback) parfois utilisés avec les actionneurs pour que le calculateur puisse vérifier leur position ou leur état (par exemple, les capteurs de position intégrés dans les boîtiers papillon électroniques). Enfin, nous discuterons des stratégies de diagnostic spécifiques aux actionneurs complexes.', 
'src/assets/images/Module_3___Les_Bases_de_lÉlectronique_Embarquée.jpg'),
('MOD004_EEMB2',8, 'Module 4 _ Diagnostiquer l''Électronique Embarquée', 
'C''est parti pour le développement du Module 4, axé sur les compétences avancées en diagnostic ! Module 4 : Diagnostiquer l''Électronique Embarquée – Pa...', 
'C''est parti pour le développement du Module 4, axé sur les compétences avancées en diagnostic !
Module 4 : Diagnostiquer l''Électronique Embarquée – Partie 4 (500h)
Objectif général : L''ambition de ce quatrième module est de vous amener à développer des compétences de diagnostic véritablement avancées pour les systèmes électroniques automobiles. Vous apprendrez à maîtriser les outils les plus pointus, à analyser en profondeur les communications et à appliquer des méthodologies rigoureuses pour résoudre les pannes les plus complexes.

1. Utilisation Avancée des Outils de Diagnostic (Valises, Logiciels Spécialisés) (environ 130h)
Ici, nous allons au-delà de la simple lecture de codes pour exploiter pleinement le potentiel des outils de diagnostic modernes.
Maîtrise des Fonctionnalités Avancées des Outils Constructeur (OEM) :
Les outils de diagnostic fournis par les constructeurs (souvent appelés "valises OEM") offrent bien plus que la lecture et l''effacement des codes défauts. Vous apprendrez à utiliser leurs fonctionnalités avancées, telles que le diagnostic guidé qui propose des étapes de test logiques basées sur les symptômes et les codes. Nous explorerons les tests de composants actifs, permettant de commander directement un actionneur pour vérifier son fonctionnement, et les procédures d''accès aux passerelles de sécurité (Security Gateway) qui protègent certains réseaux du véhicule. La programmation et le codage des calculateurs (ECU), nécessaires lors du remplacement d''un module ou pour activer certaines fonctionnalités, ainsi que les procédures de calibration spécifiques (par exemple pour les systèmes ADAS après un remplacement de caméra, ou pour une suspension pneumatique) seront des compétences clés. Il sera crucial de comprendre l''importance de maintenir à jour les logiciels de ces outils OEM pour bénéficier des dernières fonctionnalités et couvrir les véhicules récents. Nous aborderons également l''utilisation des interfaces Pass-Thru (conformes à la norme J2534), qui permettent d''utiliser le logiciel diagnostic du constructeur sur un ordinateur portable avec une interface de communication compatible.

Exploitation de Logiciels Spécialisés et d''Équipements de Laboratoire en Diagnostic :
Pour les diagnostics les plus pointus, des outils complémentaires sont souvent nécessaires. Vous approfondirez l''utilisation des oscilloscopes numériques dotés de fonctionnalités avancées, comme le décodage en série des protocoles de communication (CAN, LIN, FlexRay), qui permet de visualiser et d''analyser directement les trames de données, ou l''utilisation de bibliothèques de tests automobiles spécifiques préprogrammées. Les enregistreurs de données (data loggers) seront présentés comme des outils précieux pour capturer les pannes intermittentes qui ne se manifestent que dans certaines conditions de conduite. Nous pourrons également introduire des outils plus spécialisés, comme les caméras thermiques pour détecter des surchauffes anormales sur des circuits imprimés (PCB), ou les générateurs de signaux pour simuler des entrées de capteurs de manière contrôlée lors de scénarios de test complexes. L''objectif est d''apprendre à intégrer les informations provenant de multiples outils pour établir un diagnostic complet et fiable.


2. Analyse Approfondie des Réseaux de Communication (CAN, LIN, FlexRay) (environ 130h)
Une compréhension fine des réseaux de communication est indispensable pour diagnostiquer les véhicules modernes, véritables systèmes en réseau.
Diagnostic Avancé des Bus de Données : Couche Physique et Protocolaire :
Nous commencerons par un examen approfondi de la couche physique des réseaux : les niveaux de tension attendus sur les lignes de bus, l''importance et la vérification des résistances de terminaison, et le diagnostic des problèmes de câblage classiques (courts-circuits entre les lignes du bus, coupures, interférences électromagnétiques). Ensuite, nous passerons à l''analyse de la couche protocolaire à l''aide d''un oscilloscope avec capacités de décodage ou d''analyseurs de bus dédiés. Vous apprendrez à distinguer un trafic normal d''un trafic anormal en analysant les identifiants de messages (ID), les données transportées (payloads), et la présence de trames d''erreur qui indiquent des problèmes de communication. L''objectif sera de savoir diagnostiquer des pannes de réseau courantes, comme un "nœud bavard" (un calculateur qui perturbe le bus en émettant en continu), des calculateurs absents du réseau (qui ne communiquent plus), des messages envoyés à une fréquence incorrecte, ou la corruption des données transmises.

Analyse des Topologies Réseau Complexes et Diagnostic des Passerelles (Gateways) :
Les véhicules modernes possèdent des architectures réseau complexes (topologies) avec plusieurs bus interconnectés. Vous apprendrez à lire et interpréter les schémas de topologie réseau pour comprendre comment les données circulent entre les différents calculateurs. Un élément central de ces architectures est la passerelle (Gateway), un calculateur qui sert de pont entre différents réseaux, assure le routage des messages, peut effectuer une traduction de protocole, et joue souvent un rôle de pare-feu. Nous étudierons les méthodes de diagnostic spécifiques aux passerelles, y compris les problèmes liés à leur configuration ou à leur défaillance.

Introduction au Diagnostic des Réseaux Émergents (Ethernet Automobile) :
Pour vous préparer à l''avenir, nous introduirons l''Ethernet automobile, une technologie de communication à plus haut débit qui commence à être déployée pour des applications gourmandes en bande passante comme les systèmes ADAS avancés, les systèmes d''infodivertissement et comme réseau principal (backbone) du véhicule. Nous discuterons de ses particularités diagnostiques par rapport aux bus traditionnels, notamment des vitesses de transmission plus élevées et une couche physique différente.


3. Interprétation Avancée des Codes Défauts et des Données en Temps Réel (environ 120h)
Savoir lire un code défaut est une chose, l''interpréter correctement et utiliser intelligemment les données en temps réel en est une autre, bien plus complexe.
Au-delà des Codes Défauts Génériques : Maîtriser les Codes Constructeur :
Si les codes défauts génériques OBD-II donnent une première indication, les codes défauts spécifiques au constructeur (DTC spécifiques) sont beaucoup plus précis. Vous apprendrez à rechercher et à comprendre leurs descriptions détaillées, à analyser les données figées (freeze frame data) associées (qui capturent l''état du véhicule au moment où le défaut est apparu), et à utiliser les plans de test et les procédures de diagnostic recommandées dans la documentation technique OEM. Il sera important de savoir différencier les types de DTC : actifs (panne actuellement présente), en attente (défaut détecté mais pas encore confirmé), mémorisés/historiques (pannes passées), et permanents (qui ne peuvent être effacés qu''après certaines conditions de réparation et de test). Nous soulignerons l''importance de noter l''historique des DTC et leurs compteurs d''occurrence pour comprendre la fréquence et le contexte d''apparition des pannes.

Analyse Experte des Données en Temps Réel (Live Data / Paramètres PID) :
L''analyse des données en temps réel (aussi appelées "live data" ou "Paramètres IDentifiants - PID") ne se limite pas à l''observation passive d''une seule valeur. Vous développerez la capacité à corréler plusieurs paramètres simultanément pour comprendre les interactions complexes au sein d''un système et identifier des incohérences ou des dérives. L''utilisation des fonctions graphiques des outils de diagnostic sera essentielle pour analyser les tendances des signaux et le comportement dynamique des systèmes (par exemple, la réaction d''un capteur à une sollicitation). Vous apprendrez à repérer des valeurs hors plage, des temps de réponse de capteurs anormalement lents, ou des combinaisons de données qui sont techniquement implausibles. Une compétence clé sera de savoir utiliser les commandes bidirectionnelles (tests d''actuateurs) en conjonction avec l''observation des données en temps réel pour confirmer ou infirmer une hypothèse de panne.


4. Méthodologie de Diagnostic Systématique et Avancée (environ 120h)
Face à une panne complexe, une approche désorganisée est vouée à l''échec. Seule une méthodologie rigoureuse mène à la solution.
Élaboration et Application d''une Stratégie de Diagnostic Logique et Efficiente :
Nous consoliderons et affinerons la méthodologie de diagnostic en plusieurs étapes (par exemple, le "Processus de Diagnostic en Six Étapes" : Vérifier la plainte client, Recueillir les informations, Formuler un plan de diagnostic, Exécuter le plan, Vérifier la réparation, Documenter les résultats). L''accent sera mis sur la capacité à construire des arbres de diagnostic et des logigrammes décisionnels efficaces pour aborder des problèmes complexes de manière structurée. Vous apprendrez à prioriser les tests en fonction de la probabilité de la cause, de la facilité d''exécution du test, et du coût associé.

Techniques de Diagnostic pour les Pannes Intermittentes et les Cas Complexes :
Les pannes intermittentes sont le cauchemar de tout technicien. Nous étudierons des techniques spécifiques pour les capturer, telles que l''utilisation d''enregistreurs de données embarqués, la réalisation de tests de manipulation ("wiggle tests") sur les faisceaux et connecteurs, ou l''utilisation de facteurs environnementaux contrôlés (chaleur, froid, vibrations) pour tenter de reproduire la panne en atelier. Une partie importante sera consacrée au diagnostic des pannes "sans code défaut", où des symptômes sont présents mais aucun DTC n''est enregistré. Dans ces cas, une connaissance approfondie du système, une analyse fine des données en temps réel, et des tests fonctionnels ciblés sont indispensables. L''objectif ultime est d''apprendre à isoler la cause racine réelle de la panne, et non pas seulement à traiter ses symptômes.

Exploitation Optimale de l''Information Technique Avancée et Développement du Raisonnement Clinique :
Un diagnostic avancé repose sur une utilisation efficace de toute l''information technique disponible : schémas électriques détaillés, bulletins de service technique (TSB) des constructeurs, manuels de réparation approfondis, et même les bases de connaissances et communautés professionnelles en ligne. Il est crucial de bien comprendre la théorie de fonctionnement détaillée des systèmes pour pouvoir guider son raisonnement diagnostique. Plus que tout, ce module visera à développer votre esprit critique, vos compétences en résolution de problèmes (problem-solving), et votre capacité à raisonner logiquement face à des situations inconnues, un peu à la manière d''un "clinicien" de l''automobile.', 
'src/assets/images/Module_4___Diagnostiquer_lÉlectronique_Embarquée.jpg'),
('MOD005_EEMB2', 8, 'Module 5 _ Les Bases de l''Électronique Embarquée', 
'Module 5 : Les Bases de l''Électronique Embarquée – Partie 5 (500h) Objectif général : Ce cinquième module a pour but de consolider solidement vos conn...', 
'Module 5 : Les Bases de l''Électronique Embarquée – Partie 5 (500h)
Objectif général : Ce cinquième module a pour but de consolider solidement vos connaissances en électronique embarquée en mettant un accent particulier sur les applications pratiques concrètes. Nous allons approfondir des compétences essentielles pour la conception, l''analyse et la compréhension des défis réels rencontrés dans les systèmes électroniques automobiles.

1. Conception et Lecture Approfondie de Schémas Électroniques (environ 130h)
Savoir lire et créer des schémas est le langage fondamental de l''électronicien.
Lecture Avancée et Interprétation de Schémas Électroniques Complexes :
Nous irons bien au-delà de la simple reconnaissance des symboles. L''objectif ici est de vous rendre capable de comprendre en détail le flux des signaux, la distribution de l''alimentation électrique et les interconnexions complexes entre plusieurs sous-circuits ou même entre différents calculateurs (ECU) au sein des schémas fournis par les constructeurs. Vous apprendrez à naviguer et à analyser des schémas multi-pages, souvent denses, et à interpréter correctement les notes techniques, les indices de révision, et les codifications de variantes qui sont fréquemment présents sur ces documents professionnels. Cette compétence est cruciale pour comprendre le fonctionnement global d''un système électronique automobile.

Principes de Conception et Réalisation de Petits Circuits Électroniques Pratiques :
Après avoir maîtrisé la lecture, vous vous initierez aux principes de base de la conception. Cela commencera par définir clairement les besoins et les spécifications d''un petit circuit, puis à sélectionner les composants appropriés en fonction de leurs caractéristiques techniques (tension et courant admissibles, tolérance, puissance dissipable, etc.). Vous mettrez cela en pratique en concevant et en dessinant des circuits simples mais pertinents pour des applications automobiles, par exemple : une interface basique pour un capteur, un circuit de commande pour une LED de signalisation ou un petit relais, ou encore un filtre simple pour une alimentation. Un point important sera l''apprentissage des bonnes pratiques pour dessiner des schémas clairs, normalisés et facilement compréhensibles, en utilisant les conventions usuelles. Nous introduirons également les premières considérations liées au routage d''un circuit imprimé (PCB) qui découlent logiquement de la conception du schéma, même si la conception de PCB elle-même n''est pas l''objectif principal ici.


2. Simulation de Circuits Électroniques (environ 120h)
La simulation permet de tester et de comprendre le comportement des circuits avant même de les construire.
Introduction aux Logiciels de Simulation de Circuits (par exemple, LTSpice, Multisim ou outils similaires) :
Vous découvrirez l''utilité et les avantages de la simulation électronique : elle permet de tester virtuellement un circuit avant de le fabriquer, de comprendre en détail son comportement dans différentes conditions, et de réaliser des scénarios "what-if" (que se passe-t-il si je change tel composant ou telle valeur ?). Nous explorerons l''interface de base et le flux de travail typique dans un logiciel de simulation : comment dessiner un schéma directement dans le simulateur, placer les composants virtuels issus de bibliothèques, connecter les nœuds du circuit, et configurer les sources de tension ou de courant.

Principaux Types d''Analyses par Simulation et Leurs Applications :
Les simulateurs offrent plusieurs types d''analyses. L''analyse DC (ou point de fonctionnement) permet de vérifier les tensions et les courants continus dans un circuit à l''état stable. L''analyse transitoire (ou temporelle) est cruciale pour observer le comportement d''un circuit au fil du temps, ce qui est indispensable pour analyser des signaux variables comme ceux issus de capteurs, des impulsions de commande, ou la réponse d''un circuit à un échelon de tension. L''analyse AC (ou fréquentielle) aide à comprendre comment un circuit réagit à différentes fréquences, ce qui est par exemple très utile pour vérifier la performance d''un filtre.

Interprétation des Résultats de Simulation et Limites de l''Outil :
Une fois la simulation lancée, il faut savoir lire et interpréter les graphiques et les données générées, comprendre les unités, et surtout comparer les résultats simulés avec les calculs théoriques ou le comportement attendu du circuit. Il est aussi important de comprendre les limites de la simulation : les modèles de composants sont souvent idéalisés et ne reflètent pas toujours parfaitement les imperfections du monde réel. Des exercices pratiques consisteront à simuler les circuits que vous aurez conçus précédemment, ou à analyser le comportement de circuits automobiles typiques préexistants pour valider votre compréhension.


3. Étude Approfondie des Alimentations et Régulations de Tension (environ 130h)
Une alimentation stable et fiable est vitale pour tous les systèmes électroniques.
Les Sources d''Alimentation Primaires et Secondaires dans un Véhicule :
Nous reviendrons sur la batterie et l''alternateur comme sources d''énergie primaires du véhicule, mais en analysant plus en détail leurs caractéristiques et leurs contraintes. Vous étudierez ensuite comment les différents niveaux de tension nécessaires au fonctionnement des calculateurs (par exemple, 12V nominal, mais aussi très souvent 5V ou 3.3V pour les microcontrôleurs et autres circuits intégrés) sont générés et distribués au sein même des modules électroniques.

Principes Fondamentaux et Nécessité de la Régulation de Tension :
La régulation de tension est indispensable pour fournir une tension d''alimentation stable et précise aux composants électroniques sensibles, et ce, malgré les variations importantes de la tension d''entrée (provenant de la batterie/alternateur) ou les changements de charge.
Nous étudierons en détail les régulateurs de tension linéaires, comme les célèbres séries 78xx/79xx ou les LDO (Low Dropout regulators) : leur principe de fonctionnement, leurs avantages (faible bruit, simplicité de mise en œuvre) et leurs inconvénients (dissipation de puissance sous forme de chaleur, faible rendement si la différence de tension entrée/sortie est grande). Le calcul du dimensionnement d''un dissipateur thermique sera abordé.
Ensuite, nous explorerons les régulateurs à découpage (SMPS - Switch-Mode Power Supplies), qui sont beaucoup plus efficaces. Vous serez initié aux topologies de base comme les convertisseurs buck (abaisseur de tension), boost (élévateur de tension), et buck-boost. Leur principe de fonctionnement, basé sur la commutation rapide d''éléments comme des MOSFETs en conjonction avec des inductances, des diodes et des condensateurs, sera expliqué. Leurs avantages (haut rendement) et inconvénients (potentiel de génération de bruit électromagnétique s''ils ne sont pas bien conçus) seront discutés.

Dispositifs de Protection des Circuits d''Alimentation :
Pour assurer la fiabilité et la sécurité, les circuits d''alimentation intègrent diverses protections. Nous étudierons le rôle et le fonctionnement des fusibles, des diodes de protection contre l''inversion de polarité, des varistances (VDR) pour la protection contre les surtensions, et d''autres dispositifs de protection courants.


4. Introduction à la Compatibilité Électromagnétique (CEM) (environ 120h)
Dans un environnement aussi riche en électronique qu''un véhicule, la bonne cohabitation des systèmes est un enjeu majeur.
Définition et Importance de la Compatibilité Électromagnétique (CEM / EMC) :
La Compatibilité Électromagnétique (CEM), ou EMC (ElectroMagnetic Compatibility) en anglais, est l''aptitude d''un appareil ou d''un système électronique à fonctionner de manière satisfaisante dans son environnement électromagnétique sans produire lui-même des perturbations électromagnétiques1 intolérables pour2 d''autres équipements se trouvant dans ce même environnement. Son importance dans le secteur automobile est critique en raison de la forte densité de calculateurs, dont beaucoup gèrent des fonctions de sécurité, qui doivent coexister sans interférences mutuelles.

Identification des Sources de Perturbations Électromagnétiques (EMI) dans un Véhicule :
Un véhicule est une source multiple de perturbations électromagnétiques (EMI - ElectroMagnetic Interference). Celles-ci peuvent provenir des moteurs électriques (démarreur, essuie-glaces, lève-vitres), du système d''allumage, de l''alternateur, des convertisseurs de puissance (dans les régulateurs à découpage, les véhicules électriques/hybrides), ou encore des systèmes de communication sans fil (radio, Bluetooth, GPS, 4G/5G). Il est important de distinguer les perturbations conduites, qui se propagent par le câblage, et les perturbations rayonnées, qui se propagent par l''air sous forme d''ondes électromagnétiques.

Principes de Base et Bonnes Pratiques pour la Protection Contre les EMI :
Pour assurer la CEM, plusieurs techniques de protection sont mises en œuvre dès la conception. Le blindage (Shielding) consiste à utiliser des boîtiers métalliques conducteurs autour des circuits sensibles ou des câbles blindés pour bloquer ou contenir les champs électromagnétiques. Le filtrage (Filtering) utilise des composants comme des condensateurs de découplage, des selfs de mode commun, ou des perles de ferrite pour atténuer ou bloquer les fréquences indésirables sur les lignes d''alimentation ou de signal. Une mise à la masse (Grounding) correcte et bien pensée est fondamentale pour fournir un chemin de faible impédance pour évacuer les courants de perturbation. Enfin, des bonnes pratiques de câblage, comme la séparation physique des câbles de puissance (forts courants) et des câbles de signaux (faibles niveaux), ou l''utilisation de paires torsadées pour les signaux différentiels, contribuent grandement à réduire les interférences.

Comprendre la Susceptibilité Électromagnétique (EMS) et les Tests Associés :
La susceptibilité électromagnétique (EMS - ElectroMagnetic Susceptibility) désigne la manière dont un circuit ou un appareil peut être affecté négativement par des perturbations électromagnétiques externes. Nous aborderons comment une bonne conception peut minimiser cette susceptibilité. Bien que nous n''allions pas réaliser de tests CEM complets, vous serez sensibilisé aux types de tests de base et aux normes qui existent pour qualifier la robustesse électromagnétique des équipements automobiles.', 
'src/assets/images/Module_5___Les_Bases_de_lÉlectronique_Embarquée.jpg'),
('MOD006_EEMB2',8, 'Module 6 _ Réparer l''Électronique Embarquée', 
'Module 6 : Réparer l''Électronique Embarquée – Partie 6 (500h) Objectif général : Ce sixième et dernier module est conçu pour vous faire maîtriser les...', 
'Module 6 : Réparer l''Électronique Embarquée – Partie 6 (500h)
Objectif général : Ce sixième et dernier module est conçu pour vous faire maîtriser les techniques de réparation électronique les plus pointues et les plus complexes. Vous apprendrez à intervenir sur des circuits délicats, à manipuler des composants spécifiques et à utiliser des équipements professionnels pour redonner vie aux systèmes électroniques automobiles les plus sophistiqués.

1. Rétro-ingénierie des Circuits Imprimés (PCB Reverse Engineering) (environ 120h)
Parfois, la documentation est manquante ou insuffisante. La rétro-ingénierie permet de comprendre un circuit en partant de la carte elle-même.
Principes, Objectifs et Éthique de la Rétro-ingénierie :
La rétro-ingénierie d''un circuit imprimé (PCB) consiste à analyser une carte électronique existante pour en comprendre la conception, le schéma et la fonctionnalité, en particulier lorsque la documentation technique originale n''est pas disponible. Dans un contexte de réparation, cela peut être crucial pour identifier des composants inconnus ou brûlés, tracer des pistes endommagées et invisibles à l''œil nu, ou comprendre le fonctionnement d''un sous-circuit spécifique afin de localiser une panne. Il est important de souligner que ces techniques doivent être utilisées dans un cadre légal et éthique, principalement pour la réparation et la compréhension, et non pour la copie illicite de conceptions protégées.

Méthodologies et Outils pour la Rétro-ingénierie de PCB :
Le processus commence par une inspection visuelle méticuleuse, souvent à l''aide de loupes puissantes ou de microscopes, pour identifier chaque composant et rechercher leurs références (part numbers). Ensuite, vient le traçage des connexions électriques entre les composants. Cela peut se faire manuellement avec un multimètre en mode continuité, ou à l''aide d''outils plus spécialisés pour les circuits denses. L''objectif est de reconstituer le schéma électrique (schématique) à partir de la carte physique, soit en le dessinant manuellement, soit en utilisant des logiciels de CAO électronique. Nous aborderons les défis posés par les PCB multicouches (où certaines pistes sont cachées à l''intérieur de la carte) et les techniques de base pour identifier les différentes couches et les vias (les connexions entre couches). Enfin, l''analyse de la fonctionnalité du circuit se base sur les composants identifiés et les connexions établies.


2. Techniques Avancées de Reprogrammation des Calculateurs (environ 130h)
Cette section va au-delà des simples mises à jour logicielles pour explorer des interventions plus profondes sur la mémoire des calculateurs.
Scénarios de Reprogrammation Avancée (au-delà des mises à jour standard) :
Nous distinguerons clairement ces techniques des mises à jour logicielles classiques vues précédemment. Ici, nous nous concentrerons sur des scénarios plus complexes tels que le clonage de calculateurs (ECU). Cette opération, qui consiste à transférer l''intégralité des données d''un calculateur défectueux vers un calculateur de remplacement (neuf ou d''occasion), peut être une solution lorsque les calculateurs neufs sont très coûteux ou indisponibles. Nous aborderons également le "virginizing" de calculateurs d''occasion, c''est-à-dire leur réinitialisation à un état d''usine pour permettre leur adaptation à un nouveau véhicule. La modification de paramètres spécifiques, comme le transfert de données d''antidémarrage ou l''ajustement de configurations, sera aussi étudiée. Pour toutes ces opérations, les aspects légaux et éthiques (risques liés à la modification de systèmes de sécurité, respect de la propriété intellectuelle des logiciels) seront scrupuleusement rappelés.

Outils et Méthodes de Reprogrammation Directe des Mémoires :
Pour ces interventions avancées, des outils spécifiques sont nécessaires. La programmation In-Circuit (ISP) ou In-System Programming (ISP) permet de lire et d''écrire dans les mémoires du calculateur (microcontrôleur, EEPROM, Flash) sans les dessouder, en se connectant directement à des broches spécifiques du microcontrôleur ou à des points de test prévus sur le PCB, via des interfaces comme JTAG, SWD, ou BDM (Background Debug Mode).
Une autre méthode est la programmation "Off-Board", qui implique de dessouder la puce mémoire de la carte électronique pour la lire et la programmer à l''aide d''un programmateur de puces universel ou dédié. Cela nécessite une excellente maîtrise des techniques de dessoudage et de ressoudage. Vous serez initié à l''utilisation de ces matériels et logiciels de programmation spécialisés. La compréhension des fichiers de données mémoire (dumps), le calcul et la vérification des sommes de contrôle (checksums) pour assurer l''intégrité des données seront des points essentiels.


3. Utilisation Experte des Stations de Soudage/Dessoudage Professionnelles (environ 130h)
La manipulation des composants modernes exige des équipements et des techniques de pointe.
Maîtrise des Équipements de Rework Avancés pour Composants Complexes :
Vous apprendrez à utiliser de manière experte les stations de rework professionnelles pour composants BGA (Ball Grid Array) et SMD (Surface Mount Device), qu''elles soient à air chaud ou à infrarouge. Cela inclut la compréhension détaillée de leur fonctionnement, la création et l''utilisation de profils de température précis (contrôlant la température, le débit d''air et la durée pour chaque phase du processus), ainsi que le choix et l''utilisation des buses d''air chaud adaptées et des systèmes de préchauffage du PCB (essentiels pour éviter les chocs thermiques). L''utilisation de fers à souder de haute précision avec contrôle thermostatique et une gamme de pannes spécialisées pour les composants à pas fin sera également approfondie. L''usage de microscopes (stéréo ou numériques) pour l''alignement précis des composants et l''inspection minutieuse des soudures, ainsi que l''importance capitale des systèmes d''extraction des fumées de soudure pour la santé et la propreté, seront des points clés.

Techniques de Rework Spécifiques pour Composants Complexes :
Le "rework" (re-travail) de composants complexes est un art qui demande méthode et précision. Cela commence par la préparation minutieuse du PCB : nettoyage approfondi de la zone, application précise du flux de soudure, et masquage des composants adjacents pour les protéger de la chaleur. Le dessoudage de composants complexes doit être effectué de manière à ne pas endommager ni le PCB (arrachement de pastilles) ni le composant lui-même, surtout s''il doit être réutilisé. Après le retrait du composant, le nettoyage et la préparation des pastilles (pads) sur le PCB sont cruciaux.
Une technique spécifique, le rebillage (Reballing) des composants BGA, pourra être abordée. Elle consiste à reconstituer les billes de soudure sous un composant BGA à l''aide de pochoirs (stencils) et de microbilles de soudure, avant de le ressouder. L''alignement et le placement extrêmement précis des composants à pas fin (comme les QFP) ou des BGA avant la phase de soudure sont critiques et seront pratiqués intensivement. Enfin, un contrôle qualité rigoureux post-rework (inspection visuelle détaillée, tests fonctionnels, et conceptuellement, l''inspection par rayons X pour les BGA) est indispensable.


4. Gestion et Manipulation des Composants Électroniques Spécifiques (BGA, QFP, etc.) (environ 120h)
Les composants modernes sont de plus en plus petits, complexes et sensibles. Leur manipulation exige un savoir-faire particulier.
Identification Approfondie et Caractéristiques des Boîtiers Complexes :
Nous passerons en revue de manière détaillée les caractéristiques des boîtiers de composants les plus délicats. Les BGA (Ball Grid Array), avec leurs connexions par billes de soudure sous le composant, seront étudiés : leurs différents types (plastique, céramique), le pas (distance entre les billes), le nombre de billes, et leurs modes de défaillance courants (comme les fissures des joints de soudure dues aux contraintes thermomécaniques). Les QFP (Quad Flat Package) et leurs variantes plus fines TQFP/LQFP (Thin/Low-profile QFP), avec leurs nombreuses broches très rapprochées et fragiles, seront analysés en termes de pas fin, de formage des broches, et de leur grande vulnérabilité aux déformations. D''autres boîtiers de montage en surface pertinents comme les QFN (Quad Flat No-leads) et DFN (Dual Flat No-leads) qui n''ont pas de broches externes visibles, ou les SOP et SSOP à pas plus fin, seront également couverts.

Précautions Spécifiques pour la Manipulation et le Stockage :
Ces composants sont souvent très sensibles à l''environnement. Une notion capitale est la sensibilité à l''humidité (MSL - Moisture Sensitivity Level). Certains composants absorbent l''humidité de l''air, et s''ils sont soudés sans précaution, cette humidité peut se vaporiser brutalement et endommager le composant (effet "popcorn"). Des procédures d''étuvage ("baking") des composants avant soudure peuvent être nécessaires. Les précautions ESD (Décharges Électrostatiques), déjà vues, doivent être appliquées avec une rigueur extrême dans un environnement de rework avancé, avec des postes de travail et des outils spécifiquement conçus pour la protection ESD. Des règles strictes de stockage et de manipulation seront enseignées pour éviter les dommages physiques (broches tordues, chocs) ou la contamination.

Techniques de Test et de Diagnostic Adaptées aux Composants Complexes :
Tester des composants dont les connexions sont cachées (comme les BGA) ou très nombreuses et rapprochées pose des défis spécifiques. Nous discuterons des difficultés et des approches pour le diagnostic des problèmes liés à ces composants. Conceptuellement, des techniques comme l''inspection par rayons X (pour visualiser les soudures sous les BGA) ou le test par "boundary scan" (JTAG) qui permet de tester les connexions entre composants sans accès direct, pourront être introduites pour illustrer les méthodes industrielles. Des stratégies de tests électriques adaptées aux composants à pas fin seront explorées. Vous apprendrez aussi à identifier les symptômes de pannes courantes qui sont typiquement associés à la défaillance de ces types de composants.', 
'src/assets/images/Module_6___Réparer_lÉlectronique_Embarquée.jpg'),
('MOD007_EEMB2',8, 'Module 7 _ Introduction à l''Électronique Embarquée – Vue d''Ensemble et Perspectives', 
'Absolument ! Concluons avec le développement du Module 7, qui offre une perspective d''ensemble et se tourne vers l''avenir. Module 7 : Introduction à l...', 
'Absolument ! Concluons avec le développement du Module 7, qui offre une perspective d''ensemble et se tourne vers l''avenir.
Module 7 : Introduction à l''Électronique Embarquée – Vue d''Ensemble et Perspectives (500h)
Objectif général : Ce septième module a pour vocation de vous fournir une vue d''ensemble complète et actuelle des systèmes électroniques embarqués modernes. Nous retracerons leur évolution, explorerons les technologies de pointe comme les ADAS et la conduite autonome, aborderons le cadre normatif essentiel, et nous projetterons sur les innovations qui façonneront l''automobile de demain.

1. Historique et Évolution de l''Électronique Embarquée dans l''Automobile (environ 100h)
Comprendre le présent et anticiper l''avenir nécessite de connaître le passé.
Les Premiers Pas de l''Électronique (années 60-70) :
L''électronique automobile a fait ses débuts modestement. Les premiers composants électroniques embarqués incluaient principalement l''autoradio, puis des systèmes plus fonctionnels comme l''allumage électronique, qui a commencé à remplacer les systèmes mécaniques (rupteurs/vis platinées), offrant une meilleure fiabilité et des performances moteur améliorées.

L''Avènement des Calculateurs (ECU) et la Gestion Moteur (années 80) :
La véritable révolution a commencé avec l''introduction des premiers calculateurs de gestion moteur (ECU - Electronic Control Unit). Sous la pression des normes anti-pollution et la recherche de meilleurs rendements, ces calculateurs ont permis de gérer précisément l''injection de carburant et l''allumage. C''est aussi à cette époque quapparaissent les premiers systèmes d''antiblocage des roues (ABS), marquant une avancée majeure pour la sécurité.

L''Ère du Multiplexage, du Confort et de la Sécurité Accrue (années 90-2000) :
Le nombre de calculateurs a explosé, chacun gérant des fonctions de plus en plus nombreuses. Pour éviter un câblage inextricable, le multiplexage est devenu indispensable. Des protocoles de communication comme le bus CAN (Controller Area Network), puis le LIN (Local Interconnect Network) pour des fonctions moins critiques, ont permis aux calculateurs d''échanger des informations efficacement. Parallèlement, l''électronique a envahi les fonctions de confort (lève-vitres électriques, climatisation automatique, systèmes audio sophistiqués, premiers systèmes de navigation) et de sécurité active et passive (ESP, airbags multiples, contrôle de traction).

Vers le Véhicule Connecté et Défini par le Logiciel (années 2010 à aujourd''hui) :
La tendance actuelle est à une complexité logicielle croissante et à une connectivité accrue du véhicule avec son environnement. On observe une évolution vers des architectures électroniques plus centralisées, avec des calculateurs plus puissants gérant de multiples fonctions. Les mises à jour logicielles à distance (OTA - Over-The-Air) commencent à se généraliser, transformant le véhicule en une plateforme évolutive, le concept de "véhicule défini par le logiciel" (Software-Defined Vehicle) devient une réalité.


2. Présentation Détaillée des Systèmes ADAS et de la Conduite Autonome (environ 150h)
Ces technologies sont au cœur des innovations actuelles et futures, redéfinissant notre rapport à la conduite.
Définition des ADAS et Compréhension des Niveaux d''Autonomie (Norme SAE J3016) :
Les Systèmes d''Aide à la Conduite Avancés (ADAS - Advanced Driver-Assistance Systems) regroupent l''ensemble des technologies qui assistent le conducteur dans ses tâches de conduite, améliorant la sécurité et le confort. Pour clarifier les capacités d''automatisation, la norme SAE J3016 définit six niveaux de conduite autonome, allant du Niveau 0 (aucune automatisation) où le conducteur fait tout, jusqu''au Niveau 5 (automatisation complète) où le véhicule peut se conduire seul en toutes circonstances sans intervention humaine. Nous détaillerons chaque niveau avec des exemples concrets de fonctionnalités correspondantes.

Les Technologies Clés au Cœur des ADAS et de la Conduite Autonome :
Pour "voir", "comprendre" et "agir", ces systèmes s''appuient sur plusieurs piliers technologiques.
Les capteurs sont les yeux et les oreilles du véhicule : caméras (monoculaires, stéréoscopiques), radars (courte, moyenne et longue portée), LiDARs (télédétection par laser), capteurs à ultrasons (principalement pour le stationnement), ainsi que les GPS de haute précision et les unités de mesure inertielle (IMU). Nous étudierons leurs principes de fonctionnement, leurs avantages et leurs inconvénients, et le concept crucial de fusion de capteurs qui combine les données de différentes sources pour une perception plus robuste.
Le traitement de l''information et l''intelligence artificielle (IA) sont indispensables pour interpréter les masses de données issues des capteurs et prendre des décisions. Cela implique des processeurs embarqués très puissants, et l''utilisation d''algorithmes d''apprentissage automatique (machine learning), d''apprentissage profond (deep learning) et de vision par ordinateur (computer vision).
Enfin, les actionneurs permettent au système de prendre le contrôle physique du véhicule : direction assistée électrique, systèmes de freinage by-wire, et commande électronique de l''accélérateur.

Panorama des Systèmes ADAS Courants, Leurs Fonctions et Limites :
Nous passerons en revue les ADAS les plus répandus, comme le régulateur de vitesse adaptatif (ACC), l''aide au maintien dans la voie (LKA), le freinage d''urgence automatique (AEB), la surveillance des angles morts (BSM), l''aide au stationnement active, la reconnaissance des panneaux de signalisation, etc. Pour chacun, nous analyserons ses bénéfices en termes de sécurité et de confort, mais aussi ses limites actuelles (conditions météorologiques, complexité de l''environnement).

Les Grands Défis de la Conduite Entièrement Autonome :
Atteindre une autonomie complète (Niveau 5) soulève encore de nombreux défis : techniques (assurer une perception fiable dans toutes les conditions imaginables, gérer la complexité imprévisible des environnements urbains denses), réglementaires et légaux (qui est responsable en cas d''accident ?), d''acceptation par le public, de cybersécurité (protéger ces systèmes contre le piratage), et même des dilemmes éthiques (comment un véhicule autonome doit-il réagir face à un accident inévitable ?).


3. Normes et Réglementations Essentielles en Électronique Embarquée (environ 120h)
L''électronique automobile, surtout lorsqu''elle touche à la sécurité, est encadrée par des normes et réglementations strictes.
La Sécurité Fonctionnelle : Norme ISO 26262 :
La sécurité fonctionnelle vise à garantir que les systèmes électroniques et électriques d''un véhicule ne présentent pas de risques inacceptables en cas de dysfonctionnement. La norme internationale ISO 26262 est la référence en la matière pour l''industrie automobile. Nous expliquerons ses objectifs, son champ d''application, et des concepts clés comme les niveaux d''intégrité de sécurité automobile (ASIL - Automotive Safety Integrity Levels), qui classifient les risques et déterminent les exigences de sécurité à appliquer. Vous comprendrez comment cette norme impacte l''ensemble du cycle de vie d''un système, de sa conception à sa validation et sa production.

La Cybersécurité Automobile : Norme ISO/SAE 21434 et Réglementations UNECE :
Avec la connectivité croissante des véhicules, la cybersécurité est devenue un enjeu majeur pour protéger les systèmes contre les attaques malveillantes. La norme ISO/SAE 21434 fournit un cadre pour la gestion des risques liés à la cybersécurité tout au long du cycle de vie du véhicule. Nous aborderons également les réglementations de la Commission économique pour l''Europe des Nations unies (UNECE WP.29), notamment les règlements UN R155 (sur la cybersécurité et la gestion des systèmes de cybersécurité) et UN R156 (sur les mises à jour logicielles et la gestion des systèmes de mise à jour logicielle), qui sont devenues obligatoires dans de nombreux pays.

Normes Relatives à la Communication et au Diagnostic Embarqué :
Nous reviendrons sur les normes OBD (On-Board Diagnostics), telles que OBD-II (utilisée en Amérique du Nord), EOBD (Europe), et JOBD (Japon), qui imposent des standards pour le diagnostic des systèmes de contrôle des émissions polluantes et fournissent un accès normalisé aux informations de diagnostic. Les standards pour les réseaux de communication embarqués (CAN, LIN, FlexRay, et de plus en plus, l''Ethernet automobile) sont également essentiels pour assurer l''interopérabilité.

Le Processus d''Homologation et de Certification des Véhicules :
Vous aurez un aperçu du processus d''homologation par lequel un nouveau modèle de véhicule doit passer avant d''être autorisé à la vente. Ce processus inclut la vérification de la conformité à une multitude de réglementations, y compris celles relatives à la sécurité et à la performance des systèmes électroniques embarqués.


4. Perspectives d''Avenir et Innovations Technologiques Marquantes (environ 130h)
L''électronique automobile est un domaine en constante et rapide évolution. Quelles sont les grandes tendances ?
Le Véhicule Connecté et la Communication V2X :
Le concept de véhicule connecté s''étend bien au-delà du simple accès à internet. La communication V2X (Vehicle-to-Everything) englobe la communication V2V (Vehicle-to-Vehicle) entre véhicules, V2I (Vehicle-to-Infrastructure) avec les infrastructures routières (feux de signalisation, panneaux), V2P (Vehicle-to-Pedestrian) avec les piétons et cyclistes, et V2N (Vehicle-to-Network) avec le cloud. Les bénéfices attendus sont une sécurité routière grandement améliorée (prévention des collisions), une meilleure efficacité du trafic, et l''émergence de nouveaux services embarqués. Les technologies sous-jacentes comme le DSRC ou le C-V2X (basé sur la 5G) seront discutées.

Les Architectures Électroniques/Électriques (E/E) de Prochaine Génération :
Pour gérer la complexité croissante, les architectures E/E des véhicules évoluent vers plus de centralisation du calcul avec des supercalculateurs embarqués (HPC - High-Performance Computers) ou des contrôleurs de domaine puissants, et des architectures zonales qui regroupent les fonctions par emplacement physique dans le véhicule. Cela a un impact majeur sur la conception des ECU, le développement logiciel, et les réseaux. Le concept de "Software-Defined Vehicle" (SDV), où les fonctionnalités et la performance du véhicule sont de plus en plus définies et améliorées par le logiciel, sera exploré plus en détail.

L''Intelligence Artificielle (IA) et l''Apprentissage Automatique Embarqués :
L''IA continuera de jouer un rôle de plus en plus central, non seulement pour la perception et la prise de décision dans la conduite autonome, mais aussi pour la personnalisation de l''expérience utilisateur, la maintenance prédictive, ou l''optimisation de la consommation d''énergie. Le calcul en périphérie (Edge Computing), où une partie importante du traitement IA se fait directement dans le véhicule plutôt que dans le cloud, sera une tendance forte.

L''Évolution des Interfaces Homme-Machine (IHM / HMI) :
L''interaction entre le conducteur (et les passagers) et le véhicule va continuer à se transformer. On verra une généralisation des écrans tactiles de grande taille et configurables, des affichages tête haute à réalité augmentée (AR-HUD) projetant des informations directement dans le champ de vision du conducteur, des commandes vocales de plus en plus naturelles et intelligentes, la reconnaissance gestuelle, et des systèmes avancés de surveillance du conducteur (DMS) pour détecter la fatigue ou la distraction.

Défis et Opportunités pour l''Industrie et les Professionnels :
Cette transformation rapide apporte son lot de défis : la gestion de la complexité exponentielle des systèmes, la maîtrise des coûts, le besoin crucial en nouvelles compétences pour les techniciens et ingénieurs, et l''impact environnemental de cette prolifération électronique (notamment dans le contexte des véhicules électriques). Mais elle ouvre aussi d''immenses opportunités pour de nouveaux services, de nouveaux modèles économiques, et pour ceux qui sauront s''adapter et innover dans ce secteur passionnant.', 
'src/assets/images/Module_7___Introduction_à_lÉlectronique_Embarquée_-_Vue_dEnsemble_et_Perspectives.jpg'),
('MOD008_EEMB2',8, 'Module 8 _ Finalisation et Intégration Professionnelle en Électronique Embarquée', 
'Absolument ! Voici le développement pour ce Module 8 final, axé sur la consolidation et la préparation au monde professionnel. Module 8 : Finalisation...', 
'Absolument ! Voici le développement pour ce Module 8 final, axé sur la consolidation et la préparation au monde professionnel.
Module 8 : Finalisation et Intégration Professionnelle en Électronique Embarquée (500h)
Objectif général : Ce huitième et dernier module est la pierre angulaire de votre formation. Il vise à consolider l''ensemble des compétences techniques et transversales que vous avez acquises, à travers des mises en situation pratiques d''envergure, et à vous préparer activement à une intégration réussie dans le monde professionnel en tant que technicien spécialisé en électronique embarquée automobile.

1. Projets Pratiques de Synthèse (environ 150h)
Mettre en œuvre l''ensemble de vos connaissances sur des projets concrets et stimulants.
Objectif et Nature des Projets de Synthèse :
Ces projets sont conçus pour être l''aboutissement de votre parcours d''apprentissage. Ils vous demanderont d''intégrer et d''appliquer de manière transversale les connaissances et les savoir-faire acquis dans tous les modules précédents (Modules 1 à 7). La nature des projets pourra varier : il pourra s''agir, par exemple, de prendre en charge le diagnostic complet et la réparation d''un défaut complexe impliquant plusieurs systèmes électroniques interconnectés sur un véhicule d''entraînement ou un banc de test sophistiqué. Un autre projet pourrait consister à concevoir, réaliser et tester un petit sous-système électronique simple ayant une application automobile concrète (par exemple, un système de signalisation spécifique, une interface de capteur basique). Ou encore, vous pourriez être amené à développer une procédure de diagnostic exhaustive et documentée pour un système électronique automobile particulier.

Déroulement Typique et Compétences Mobilisées :
Vous travaillerez généralement individuellement ou en petits groupes, ce qui favorisera l''autonomie et la collaboration. Chaque projet débutera par une phase de planification et de recherche (compréhension du cahier des charges, recherche documentaire). Suivra la phase d''exécution pratique, qui mobilisera vos compétences en diagnostic, en utilisation d''outils, en soudure, en simulation, ou en conception selon la nature du projet. La résolution de problèmes imprévus fera partie intégrante du processus. Enfin, vous devrez présenter vos travaux et vos résultats de manière claire et professionnelle. Au-delà des compétences purement techniques, ces projets évalueront également votre capacité à résoudre des problèmes complexes, votre autonomie, votre gestion du temps et votre aptitude à travailler en équipe si le projet est collaboratif.


2. Études de Cas Réels et Résolution de Problèmes Complexes (environ 150h)
Se confronter à la réalité du terrain à travers des scénarios authentiques et exigeants.
Analyse Approfondie de Scénarios Authentiques et Variés :
Vous travaillerez sur des études de cas réels, tirés d''exemples concrets de l''industrie automobile ou d''expériences vécues en atelier. Ces cas pourront porter sur des pannes intermittentes particulièrement difficiles à cerner, des défaillances impliquant l''interaction de multiples systèmes électroniques, ou des problématiques nécessitant un raisonnement diagnostique très poussé, allant bien au-delà de la simple lecture d''un code défaut. L''objectif est de vous familiariser avec la complexité et la diversité des problèmes que vous rencontrerez dans votre future carrière.

Application Rigoureuse des Méthodologies de Résolution Structurée :
Face à ces problèmes complexes et souvent multi-factoriels, vous devrez appliquer avec rigueur les méthodologies de diagnostic systématique que vous avez apprises (par exemple, le processus de diagnostic en six étapes, les techniques d''analyse des causes racines). L''accent sera mis sur la déduction logique, la formulation et la vérification d''hypothèses, ainsi que sur la collecte et l''analyse efficiente des informations techniques (lecture de schémas complexes, interprétation de bulletins de service technique, exploitation fine des outils de diagnostic).

Développement de l''Esprit Critique, de la Persévérance et de l''Adaptabilité :
Ces études de cas sont conçues pour stimuler votre esprit critique, vous encourager à remettre en question vos premières hypothèses si nécessaire, et à faire preuve de persévérance lorsque vous êtes confronté à des situations diagnostiques difficiles, ambiguës ou frustrantes. Vous serez ainsi préparé à l''environnement professionnel où la capacité à trouver des solutions précises et rapides, même face à l''imprévu, est hautement valorisée.


3. Préparation Intensive à la Certification Professionnelle (environ 100h)
Valider officiellement vos compétences et augmenter votre employabilité.
Comprendre l''Importance et les Différents Types de Certifications :
Nous discuterons de la valeur ajoutée des certifications professionnelles dans le domaine de la maintenance électronique automobile. Elles constituent une reconnaissance officielle de vos compétences et peuvent grandement faciliter votre insertion professionnelle ou votre évolution de carrière. Nous présenterons les différents types de certifications existantes, qu''elles soient généralistes pour techniciens automobiles, spécialisées en électronique, ou même spécifiques à certains constructeurs.

Révision Ciblée des Domaines de Compétences Clés :
Des sessions de révision structurées seront organisées, couvrant l''ensemble des compétences fondamentales et avancées requises par les examens de certification pertinents. Ces révisions s''appuieront sur le contenu de tous les modules précédents, en mettant l''accent sur les sujets et les types de savoir-faire qui sont typiquement évalués lors de ces épreuves.

Mise en Situation avec Examens Blancs et Stratégies d''Examen :
Pour vous familiariser avec les conditions réelles des tests, vous passerez des examens blancs complets, en temps limité. Cela vous permettra non seulement de vous habituer au format des épreuves, mais aussi de gérer votre stress et votre temps. Nous vous fournirons des conseils et des stratégies spécifiques pour aborder efficacement les différents types de questions (questions à choix multiples, analyses de cas, épreuves pratiques si applicable). Ces simulations permettront également d''identifier vos éventuelles zones de faiblesse individuelles, afin que vous puissiez y consacrer un effort de révision plus ciblé.


4. Techniques Essentielles de Communication et de Documentation Technique (environ 100h)
Le savoir-faire technique doit s''accompagner d''un savoir-être et d''une rigueur documentaire.
Maîtriser la Communication Efficace avec les Clients et au Sein de l''Équipe :
Savoir communiquer est une compétence professionnelle essentielle. Avec les clients, vous apprendrez à expliquer des problèmes techniques complexes en des termes clairs, simples et compréhensibles, en évitant le jargon excessif. Vous vous entraînerez à discuter des options de réparation possibles, à fournir des estimations de coûts et de délais précises, et surtout à pratiquer l''écoute active pour bien cerner la nature de la plainte du client.
Envers vos collègues et votre hiérarchie, il est crucial de savoir communiquer vos découvertes techniques de manière concise et précise, de collaborer efficacement sur des diagnostics difficiles, et de savoir demander ou apporter de l''aide de manière constructive.

Produire des Rapports Techniques Clairs, Précis et Professionnels :
La traçabilité et la qualité de la documentation sont fondamentales dans le métier. Vous apprendrez à rédiger des ordres de réparation (OR), des rapports de diagnostic, et des listes de pièces claires et détaillées. Une attention particulière sera portée à la structuration logique des rapports techniques : description des symptômes initiaux, détail des tests effectués et des mesures relevées, identification des causes de la panne, et description précise des actions correctives entreprises. L''utilisation d''une terminologie technique appropriée, la clarté, la lisibilité et le professionnalisme général de vos écrits seront soulignés.

Utilisation Experte et Création de Documentation Technique de Référence :
Vous perfectionnerez votre capacité à naviguer rapidement et efficacement dans les manuels de réparation des constructeurs, les schémas électriques complexes, et les bulletins de service technique (TSB) pour y trouver l''information pertinente. Au-delà de l''utilisation, nous pourrons aborder l''initiation à la création de supports documentaires simples mais utiles pour l''atelier, comme des aides au diagnostic rapides (job aids) ou des logigrammes pour des pannes fréquentes. Enfin, l''importance de tenir à jour vos propres notes techniques et votre base de connaissances personnelle sera encouragée comme une pratique clé pour le développement continu de vos compétences.', 
'src/assets/images/Module_8___Finalisation_et_Intégration_Professionnelle_en_Électronique_Embarquée.jpg'),
('MOD001_SAP', 9, 'Comprendre la sécurité passive et active – Partie 5', 
'Module 5 : Comprendre la sécurité passive et active – Partie 5 Ce module vise à intégrer les notions acquises et à en saisir les interactions. On y ét...', 
'Module 5 : Comprendre la sécurité passive et active – Partie 5
Ce module vise à intégrer les notions acquises et à en saisir les interactions. On y étudie les stratégies
globales de sécurité (par exemple, la déclenchement automatique de la tension de ceinture ou de l’airbag
avant collision détectée). Les stagiaires analysent des cas concrets d’accidents pour comprendre pourquoi
tel système a échoué ou réussi. Le cours aborde aussi l’aspect humain (ergonomie des équipements,
comportement du conducteur face aux aides). 
Structure pédagogique progressive : Après un rappel rapide des systèmes, on présente des
scénarios d’accidents de routes réels. À partir de ceux-ci, on explique le rôle combiné des dispositifs
(ex : comment l’ABS permettait le freinage tout en gardant la trajectoire, protégeant ainsi les
occupants par la suite). On introduit les concepts de sécurité prédictive et intelligente (pre-crash) où
les systèmes actifs et passifs communiquent. On termine par un focus sur les tendances récentes
(véhicule autonome, intelligence artificielle dans la sécurité). 
Sous-thèmes / unités abordées :
Synthèse active/passive : comment les systèmes actifs initient la préparation passive (par ex. préteinture de la ceinture, fermetures de toit ). 
Études de cas : analyse d’accidents de véhicules (Euro NCAP, crash-tests) pour évaluer l’efficacité des
systèmes. 
Ergonomie et comportement : impact des aides électroniques sur l’attention du conducteur. 
Normes et futur : introduction au véhicule autonome, réseaux de sécurité interconnectés (V2V). 
Maintenance prédictive : introduction aux diagnostics avancés (capteurs intelligents) et à la
traçabilité des interventions. 
Activités pédagogiques : Études de cas interactives (travail en groupe sur un dossier d’accident),
présentations d’experts (ingénieur essais sécurité), simulation de conduite assistée (simulateur ou
jeu sérieux). Débats sur les enjeux éthiques et légaux des systèmes avancés. TP de diagnostic «
virtuel » sur incidents simulés. 
Répartition indicative du temps (250 h) :
Cours intégratifs et cas d’étude : ~100 h. 
Ateliers de simulation / études d’accidents : ~80 h. 
Forums et débats encadrés : ~30 h. 
Introduction au futur de la sécurité (autonomie) : ~30 h. 
Évaluations réflexives (exposé, rapport) : ~10 h', 
'src/assets/images/Comprendre_la_sécurité_passive_et_active_-_Partie_5.jpg'),
('MOD002_SAP',9, 'Introduction à la sécurité passive et active – Partie 1', 
'Programme de formation sur la sécurité passive et active automobile Module 1 : Introduction à la sécurité passive et active – Partie 1 Ce module initi...', 
'Programme de formation sur la sécurité passive et
active automobile
Module 1 : Introduction à la sécurité passive et active – Partie 1
Ce module initie les apprentis aux concepts fondamentaux de la sécurité passive et active des véhicules. Il
définit les deux notions clés : la sécurité passive (qui limite les conséquences d’un accident) et la sécurité
active (qui aide à l’éviter) . On y présente l’historique et l’importance de ces systèmes (par exemple,
les progrès du freinage et des structures ont contribué à diviser par plus de 5 la mortalité routière en
France de 1972 à 2018 ). Les apprenants découvrent les principaux équipements : ceintures, airbags,
zones de déformation, freins ABS/ESP, assistances à la conduite, etc. 
Structure pédagogique progressive : Le cours débute par des exposés théoriques sur les lois de la
physique en collision (énergie cinétique, inertie, dynamique du véhicule), puis présente les systèmes
de sécurité passive (ceintures, airbags, structure maître-couple, appuie-têtes) et active (freinage,
contrôles de trajectoire, aides électroniques). Des vidéos de crash-tests et des démonstrations
pratiques illustrent ces notions. On progresse ensuite vers l’étude des interactions entre systèmes
(par exemple, ceintures pré-teinseuses reliées à des capteurs). 
Sous-thèmes / unités abordées :
Définitions et enjeux de la sécurité passive vs active . 
Éléments de la sécurité passive : ceintures (50 % de réduction de mortalité lorsqu’elles sont portées
), airbags (frontaux, latéraux, rideaux), zones de déformation, cellule de survie. 
Éléments de la sécurité active : système de freinage (ABS, répartiteur électronique), ESP, contrôle de
traction, aides à la conduite (régulateurs adaptatifs, détection de collision). 
Rôle des capteurs (vitesse, pression, inertie) et des calculateurs. 
Réglementations et normes (évolution des obligations de sécurité). 
Activités pédagogiques : Cours magistraux illustrés, études de cas d’accidents (analyse vidéo des
phases de collision), démonstrations en atelier (examen de modules d’airbag, test de ceintures),
travaux dirigés (schémas de forces sur véhicules), exercices de calcul de distances d’arrêt. Des quizz
de connaissances et mises en situation (simulation d’accident) favorisent la compréhension. 
Répartition indicative du temps (250 h) :
Théorie générale (lois physiques, définitions) : ~60 h. 
Étude des systèmes passifs (ceintures, airbags, structure) : ~80 h (cours + démonstrations). 
Étude des systèmes actifs (freinage, ESP, capteurs, aides à la conduite) : ~60 h. 
Ateliers pratiques et analyses de cas : ~30 h. 
Évaluations et révisions : ~20 h.', 
'src/assets/images/Introduction_à_la_sécurité_passive_et_active_-_Partie_1.jpg'),
('MOD003_SAP', 9, 'Les bases de la sécurité passive et active – Partie 4', 
'Module 4 : Les bases de la sécurité passive et active – Partie 4 Ce module approfondit les notions fondamentales vues au Module 1, en mettant l’accent...', 
'Module 4 : Les bases de la sécurité passive et active – Partie 4
Ce module approfondit les notions fondamentales vues au Module 1, en mettant l’accent sur les principes
physiques et mécaniques de base. On y étudie la cinématique du véhicule, la répartition des forces en cas
de choc, la mécanique des matériaux de carrosserie, et les principes d’adhérence/adhésion au sol. L’objectif
est de consolider les connaissances physiques sous-jacentes aux systèmes de sécurité. 
Structure pédagogique progressive : On repart des lois de Newton et de l’énergie cinétique
appliquées aux collisions automobiles. Les élèves explorent la déformation des structures (zones de
déformation programmées) et le rôle des triangles avant/arrière comme mini-zones de déformation
. Puis on passe aux fondamentaux du freinage et de la tenue de route (lois de la friction, centre
de gravité), jusqu’aux rudiments de l’électronique de capteurs (principe du capteur piezo, radar). Les
cours sont ponctués de TP simples (ex : lâcher de poids pour étudier l’énergie absorbée). 
Sous-thèmes / unités abordées :
Physique des collisions : conservation de l’énergie, choc élastique vs inélastique. 
Zones de déformation et « cage » rigide : comportement des matériaux (acier renforcé, aluminium),
structures d’absorption . 
Principes du freinage et de l’adhérence : loi d’Ohm appliquée aux circuits de frein (ABS), contrôle de
la dérive (loi de Coulomb pour l’adhérence). 
Bases de la détection des obstacles : fonctionnement des capteurs (ultrasons, radar, caméras,
infrarouge). 
Introduction à l’électronique automobile : architecture CAN bus, modules électroniques de sécurité. 
Activités pédagogiques : Expérimentations en miniatures (chocs sur maquettes, mesure des
distances de freinage sur rampes, essais de pneus sur banc), TP sur banc de test de matériaux
(flexion, torsion). Analyse de schémas électriques simplifiés pour illustrer les capteurs ABS. Cours
dialogués et exercices de calcul (énergie dissipée, intensités de courant). 
Répartition indicative du temps (250 h) :
Théorie physique fondamentale : ~80 h. 
Ateliers expérimentation (chocs, freinage) : ~100 h. 
Cours électronique de base : ~40 h. 
Exercices et études d’applications réelles : ~20 h. 
Contrôle des connaissances : ~10 h.', 
'src/assets/images/Les_bases_de_la_sécurité_passive_et_active_-_Partie_4.jpg'),
('MOD004_SAP',9, 'Les bases de la sécurité passive et active – Partie 7', 
'Module 7 : Les bases de la sécurité passive et active – Partie 7 Ce module revisite les bases avec un focus sur l’électronique et l’informatique embar...', 
'Module 7 : Les bases de la sécurité passive et active – Partie 7
Ce module revisite les bases avec un focus sur l’électronique et l’informatique embarquée. Les stagiaires
consolident leurs connaissances des capteurs, calculateurs et réseaux internes (bus CAN, LIN) qui pilotent
les systèmes de sécurité. On étudie aussi les notions de cyber-sécurité automobile (sécurisation des
systèmes critiques). 
Structure pédagogique progressive : On démarre par les principes électriques fondamentaux
(courant continu, seuils de tension, résistance des capteurs). On détaille ensuite le fonctionnement
des capteurs courants (accéléromètre, gyroscope, lidar basique) et le rôle des unités de contrôle. Des
exercices de câblage et de mesure ponctuent le cours. On conclut par l’introduction aux protocoles
de communication automobile et aux défis de la sécurité informatique (intégrité des données de
sécurité). 
Sous-thèmes / unités abordées :
Électricité de base appliquée : câblage, lectures de schémas, utilisation du multimètre. 
Capteurs de sécurité : principe du capteur piézoélectrique d’airbag, capteurs ABS (magnétiques),
capteurs de proximité (radar, lidar). 
Architecture électronique : le bus CAN carrosserie, calculateur sac de sécurité (ECU AIRBAG), modules 
ESP/ABS. 
Introduction à la sécurité des systèmes : protection contre les interférences, intégrité du CAN. 
Maintenance logicielle : mises à jour de firmware, diagnostics de réseau. 
Activités pédagogiques : Exercices pratiques de câblage sur maquettes électroniques, utilisation de
bancs de test de capteurs (mesure de tensions, fréquences), TP en salle informatique sur simulateur
de CAN (visualisation des trames de données), atelier de « hacking » éthique (simuler une coupure
de capteur pour en voir l’effet). Des cours magistraux sur la logique booleénne utilisée dans la
sécurité (par exemple, algorithme de double fail-safe des airbags). 
Répartition indicative du temps (250 h) :
Électricité et capteurs : ~80 h. 
Atelier électronique et multimètre : ~80 h. 
Informatique embarquée et CAN bus : ~50 h. 
Introduction à la cyber-sécurité : ~30 h. 
Exercices pratiques et contrôles : ~10 h.', 
'src/assets/images/Les_bases_de_la_sécurité_passive_et_active_-_Partie_7.jpg'),
('MOD005_SAP',9, 'Optimisation de la sécurité passive et active – Partie 3', 
'Module 3 : Optimisation de la sécurité passive et active – Partie 3 Ce module vise l’optimisation et le calibrage des systèmes de sécurité. Les appren...', 
'Module 3 : Optimisation de la sécurité passive et active – Partie 3
Ce module vise l’optimisation et le calibrage des systèmes de sécurité. Les apprentis découvrent comment
ajuster et régler les dispositifs pour une performance optimale. Par exemple, on étudie le réglage des
appuis-têtes ou des ceintures pour maximiser la protection, et surtout la calibration des aides à la conduite
(ADAS) : radars, caméras, LiDAR. On aborde aussi l’analyse de données de bord pour affiner les paramètres
(pneumatiques, pression, trajectoire). 
Structure pédagogique progressive : On commence par les principes de calibration et de réglage
(importance de la géométrie des capteurs). Les élèves apprennent à utiliser l’outillage spécialisé
(cibles de calibration, bancs optiques) selon les préconisations constructeurs. Des scénarios
pratiques (calibrage statique et dynamique de radars, réglage de caméras) jalonnent le cours. On
avance vers la compréhension des logiciels de réglage embarqués. 
Sous-thèmes / unités abordées :
Calibration des radars avant/arrière (longue portée et courte portée) statique et dynamique . 
Réglage des caméras (frontale, 360°) avec cibles multimarques . 
Paramétrage des systèmes d’aide : contrôle adaptatif de la vitesse, freinage d’urgence, assistance de
trajectoire . 
Optimisation des ceintures et appuie-têtes : réglages mécaniques pour une efficacité maximale. 
Ajustement pneumatique : pression et choix de pneus pour une tenue de route optimale. 
Activités pédagogiques : Ateliers spécialisés « ADAS » avec équipements de calibrage GNFA (radars,
caméras) . Travaux pratiques sur véhicule (calibrage en statique, tests de conduite pour
calibrage dynamique). Cours interactifs sur les algorithmes d’assistance à la conduite. Études de cas
sur incidents liés à une mauvaise calibration. 
Répartition indicative du temps (250 h) :
Principe de calibrage et outils : ~40 h. 
Atelier calibration radars et caméras : ~100 h (pratique intensive) . 
Réglage des systèmes d’aide (ADAS) : ~50 h (théorie + simulation) . 
Optimisation pneumatique et mécanique : ~30 h. 
Contrôle qualité et tests finaux : ~30 h.', 
'src/assets/images/Optimisation_de_la_sécurité_passive_et_active_-_Partie_3.jpg'),
('MOD006_SAP',9, 'Optimisation de la sécurité passive et active – Partie 8', 
'Module 8 : Optimisation de la sécurité passive et active – Partie 8 Le dernier module porte sur l’optimisation avancée et l’évaluation globale de la s...', 
'Module 8 : Optimisation de la sécurité passive et active – Partie 8
Le dernier module porte sur l’optimisation avancée et l’évaluation globale de la sécurité. Il peut traiter des
technologies émergentes (véhicules semi-autonomes, intelligence embarquée) et de la gestion de la
sécurité du parc (analyse des données de flotte). On y consolide les compétences en calibration avancée et
en audit de sécurité. 
Structure pédagogique progressive : Après un rappel des pratiques vues dans le module 3, on
présente des outils d’analyse de performance (simulateurs, instrumentation à haute vitesse). Les
stagiaires réalisent des évaluations complètes (p. ex. audit Euro NCAP d’un véhicule témoin). On
termine sur les systèmes de sécurité active récents (freinage automatisé d’urgence, détection piéton)
et la façon de les optimiser. 
Sous-thèmes / unités abordées :
Outils de mesure avancés : capteurs inertiels haute précision, caméras 3D, logiciels de calcul de
trajectoire. 
Audit de sécurité : checklist Euro NCAP, tests de protocole (collision frontale, latérale, piétons). 
Systèmes prédictifs : utilisation de l’IA et big data pour anticiper les risques. 
Veille technologique : actualités sur la sécurité passive (nouveaux matériaux, structures) et active
(radars 4D, V2X). 
Stratégies d’optimisation continue : plans d’entretien préventif, capitalisation d’expériences. 
Activités pédagogiques : Projet de fin d’études : évaluation complète d’un véhicule (planification
d’essai, rapport), ateliers d’innovation (prototype d’accessoire de sécurité amélioré), conférences de
professionnels du secteur. Exercices sur simulateurs de collision virtuels. Travaux en groupe pour
proposer des améliorations à des systèmes existants. 
Répartition indicative du temps (250 h) :
Audit et mesure de performance : ~100 h. 
Ateliers simulateur / tests : ~80 h. 
Études de cas avancées et veille : ~50 h. 
Projets d’équipe et présentations : ~20 h. 
Sources : Les définitions et exemples de systèmes de sécurité passive et active sont documentés dans des
ressources pédagogiques spécialisées . Les méthodes de calibrage de systèmes d’aide à la conduite
sont détaillées dans les formations techniques automobile actuelles . Ces bases garantissent la
cohérence technique du programme.', 
'src/assets/images/Optimisation_de_la_sécurité_passive_et_active_-_Partie_8.jpg'),
('MOD007_SAP',9, 'Réparer la sécurité passive et active – Partie 2', 
'Module 2 : Réparer la sécurité passive et active – Partie 2 Ce module se concentre sur la maintenance et la réparation des éléments de sécurité. Les d...', 
'Module 2 : Réparer la sécurité passive et active – Partie 2
Ce module se concentre sur la maintenance et la réparation des éléments de sécurité. Les débutants
apprennent à diagnostiquer et réparer les systèmes passifs (remplacement de ceintures, contrôle des
capteurs d’airbag, rembobinage de prétensionneurs) et actifs (capteurs ABS/ESP, réglages du freinage, mise
à jour des logiciels d’aide). On insiste sur les procédures de sécurité (débrancher les batteries, manipuler les
pyrotechniques d’airbag). 
Structure pédagogique progressive : Après une révision des principes de fonctionnement (vécue
comme bref rappel du Module 1), on aborde les outils et méthodes de diagnostic (testeurs OBD,
multimètres, bancs de test). Les élèves effectuent d’abord des diagnostiques guidés (lecture de
codes défauts, vérification de continuités). Ensuite, on leur confie des tâches pratiques : démonter
un boîtier de ceinture, remplacer un module d’airbag, purger un circuit ABS. La complexité
augmente progressivement (de systèmes simples à plus intégrés). 
Sous-thèmes / unités abordées :
Diagnostic des ceintures de sécurité et prétensionneurs : contrôle des capteurs de position, tests de
blocage. 
Maintenance des airbags et modules électroniques : vérification des connexions, remplacement de
composants pyrotechniques. 
Entretien des dispositifs de retenue : réglage des appuie-têtes, contrôle des rouleaux de ceinture. 
Diagnostic du système de freinage ABS/ESP : contrôleurs électroniques, capteurs de vitesse de roue,
alimentation. 
Réglage des paramètres ABS/ESP (réétalonnage après changement de jante ou de capteur). 
Sécurité en atelier : protocoles avant intervention (inhiber airbags, mise à la masse). 
Activités pédagogiques : Travaux pratiques intensifs en atelier (démontages et remontages sur
véhicules d’exercice), études de cas de pannes réelles (cas rapportés d’atelier), exercices de
diagnostic sur simulateur électronique, démonstrations en binôme pour s’entraider. Des cours
participatifs sur la sécurité en intervention complètent l’atelier. 
Répartition indicative du temps (250 h) :
Théorie du diagnostic : ~50 h (introduction OBD, schémas électriques). 
Atelier Systèmes passifs : ~80 h (démontage de ceintures, tests d’airbags, remplacement de pièces).
Atelier Systèmes actifs : ~80 h (vérification capteurs, réglages ABS/ESP, tests de freinage). 
Etudes de cas et retours d’expérience : ~20 h. 
Évaluations pratiques et sécurité : ~20 h.', 
'src/assets/images/Réparer_la_sécurité_passive_et_active_-_Partie_2.jpg'),
('MOD008_SAP',9, 'Réparer la sécurité passive et active – Partie 6', 
'Module 6 : Réparer la sécurité passive et active – Partie 6 Reprenant le thème de la réparation avec un niveau plus avancé, ce module aborde les opéra...', 
'Module 6 : Réparer la sécurité passive et active – Partie 6
Reprenant le thème de la réparation avec un niveau plus avancé, ce module aborde les opérations
complexes et la fiabilité. On approfondit le diagnostic électronique (utilisation du CAN bus pour la sécurité),
on forme à la maintenance des systèmes modernes (réglages post-collision, reprogrammation d’unités de
contrôle, tests de sécurité). 
Structure pédagogique progressive : Après la théorie, les élèves réalisent des diagnostics sur
véhicules accidentés ou défectueux. Ils apprennent à remplacer et reconfigurer des modules de
sécurité (par ex. ECU d’airbag reprogrammable). La complexité croît vers la maintenance de
systèmes multi-capteurs (traitement de signaux radars, recalibrage complet des caméras). Des
contrôles de qualité terminent chaque séquence. 
Sous-thèmes / unités abordées :
Lecture et interprétation des codes défauts sécurité (airbag, ABS, ESP). 
Remplacement de boîtiers électroniques et adaptation (utilisation d’outils de programmation, 
flashage). 
Réparation de faisceaux et connecteurs spécifiques (câblage d’airbag, circuits haute tension des
capteurs). 
Rétablissement des systèmes pré-collision (capteurs radars/caméras après remplacement de parebrise). 
Vérifications de fin d’intervention (tests de défaillance, essai sur route). 
Activités pédagogiques : En atelier, prise en main de stations diagnostiques constructeur,
interventions encadrées sur véhicules avec défauts prémarqués, workshops « panne mystère » où
les stagiaires doivent identifier et corriger des défaillances cachées. Cours sur les procédures
constructeur et revue de documentation technique. 
Répartition indicative du temps (250 h) :
Théorie avancée de la réparation : ~50 h. 
Ateliers de diagnostic électronique : ~100 h. 
Ateliers de réparation haute technologie : ~80 h. 
Contrôles et tests finaux : ~20 h.', 
'src/assets/images/Réparer_la_sécurité_passive_et_active_-_Partie_6.jpg'),
('MOD001_CLIM3',10, 'Comprendre la climatisation – Partie 1', 
'Formation CQP – Climatisation Automobile (2800 h) Module 1 : Comprendre la climatisation – Partie 1 Objectifs pédagogiques : - Maîtriser le principe d...', 
'Formation CQP – Climatisation Automobile (2800
h)
Module 1 : Comprendre la climatisation – Partie 1
Objectifs pédagogiques :
- Maîtriser le principe de fonctionnement du cycle frigorifique automobile.
- Connaître les paramètres du confort thermique (température, humidité, renouvellement d’air).
- Identifier les composants de base (compresseur, condenseur, évaporateur, détenteur).
- Comprendre l’impact environnemental des fluides frigorigènes. 
Introduction technique :
La climatisation automobile est un système frigorifique à compression de vapeur qui refroidit l’habitacle.
Le cycle se déroule ainsi : un fluide frigorigène circule en circuit fermé – il s’évapore dans l’évaporateur pour
absorber la chaleur de l’air intérieur, puis est comprimé (compresseur), condensé dans le condenseur (rejet
de chaleur à l’air ambiant), détendu (diminution de pression) via un détenteur et de nouveau évaporé
. Ce principe thermodynamique élémentaire (compression/condensation/détente/évaporation) est au
cœur de toutes les climatisations mécaniques . Par ailleurs, la climatisation contribue au confort
(température, humidité) et à la qualité de l’air (filtrage) dans le véhicule. 
Confort thermique : en été, la température doit être abaissée de plusieurs degrés (ex. 35°C → 22°C)
et l’humidité contrôlée. La climatisation extrait la chaleur sensible et latente de l’habitacle. 
Cycle frigorifique : le schéma suivant illustre le fonctionnement de base : 
Figure : Cycle frigorifique à compression de vapeur (climatisation) – le fluide frigorigène passe du compresseur (1)
au condenseur (2), est détendu (3) puis s’évapore dans l’évaporateur (4), d’où il retourne au compresseur .
L’évaporateur absorbe les calories de l’air (fluide passe de liquide à vapeur). 
Le compresseur mécanique (piston ou rotor) élève la pression et la température du fluide (gaz haute
pression). 
Le condenseur (échangeur à air) condense le gaz chaud en liquide, dissipant la chaleur à l’extérieur. 
Le détenteur (détendeur thermostatique ou tube capillaire) fait chuter brusquement la pression/
liquide (baisse la température). 
Le cycle recommence, la chaleur interne étant transmise vers l’extérieur. 
Chapitres clés :
1. Notions de confort thermique – Paramètres (température, humidité, débit d’air). Calculs de charge
frigorifique selon volume habitacle. Facteurs influant : ensoleillement, isolation, nombre de passagers.
Confort et climatisation .
2. Cycle frigorifique de base – Thermodynamique du fluide (lois de la thermodynamique, enthalpie,
pression/température). Description du circuit et fluides. Exemple de rôle des composants .
3. Fluides frigorigènes – Évolution historique : R12 (CFC, ODP>0, interdit) → R134a (HFC, ODP=0) → R1234yf
(HFO, GWP très faible) . Comparatif des propriétés clés (voir tableau ci-dessous). Avantages/
inconvénients (stabilité chimique, température de fonctionnement, inflammabilité, PRG). Réglementation FGaz (abandon progressif des HFC) .
4. Tableau comparatif des fluides frigorifiques :
Fluide Type chimique PRG
(GWP)
Caractéristiques principales
R134a
HFC
(fluorocarb.) ~1430
Remplaçant du R12 (CFC) – non inflammable, ODP=0.
Utilisé jusqu’en 2013 dans l’automobile.
R1234yf HFO
(fluorocarb.) ≈4
Normé depuis 2017 – PRG très faible, mais faiblement
inflammable. Travaille à pression/temp. plus élevées .
R744
(CO₂)
Gaz naturel ≈1
CO₂ – non inflammable, très sûr. Utilisé sur poids lourds et
quelques voitures haut de gamme. Très haute pression.
R12
CFC
(chlorocarb.) ~10900 Ancien fluide (chloré) interdit (dégradation ozone).
Composants principaux – Brève présentation du compresseur (piston/rotor), condenseur
(radiateur), évaporateur (caloduc intérieur), bouteille déshydratante (séparation huile/gaz), capteurs
(pression, température). 
Équipements associés – Compresseur à débit variable (inverter), résistance de chauffage (dans
circuit). Commandes basiques (boutons, cadrans, modes). 
Étude de cas pratique : Régler la climatisation d’un véhicule ancien. Un client se plaint d’un confort
insuffisant malgré un fonctionnement normal (pression). Analyser symptômes (temp. tubulure
évaporateur proche 0°C, bonne commande d’air), vérifier charge de fluide. Simuler recalage de
charge, échanges thermiques, et proposer une action (recharge ou remplacement filtre/courroie). 
Approche réglementaire : La manipulation des fluides frigorigènes est strictement encadrée
(réglementation F-Gas) . L’atelier doit détenir une attestation de capacité (catégorie V) pour
intervenir sur les circuits frigorifiques automobile . Le personnel doit avoir l’attestation d’aptitude
(cat. V). L’outillage (station de charge, détecteur de fuite, bouteille de récupération) doit être adapté,
contrôlé annuellement et les mouvements de fluide tracés et déclarés . Citons aussi les normes
ISO pertinentes (ex. ISO 5149, ISO 817) sur la sécurité des fluides (inflammabilité, toxicité) et la
directive européenne 2006/40/CE sur l’utilisation de frigorigènes dans l’automobile. 
Applications (véhicules thermiques, hybrides, électriques) : Tous les véhicules (diesel/gazole
comme essence) sont désormais équipés de climatisation – régulation via alternateur et courroie
d’accessoire. Les hybrides profitent d’un démarrage autonome du compresseur (batterie 12V) en
mode électrique. Les véhicules 100% électriques utilisent un compresseur électrique (alimenté par
la batterie haute tension) et intègrent souvent une pompe à chaleur pour chauffer l’habitacle
efficacement (ceci sera détaillé dans Modules 4-8). 
Conclusion pédagogique : Ce premier module pose les fondations : définition du système de
climatisation, principes physiques et composants clés. Les notions de confort thermique et d’impact
environnemental des fluides sont établies. Au terme de ce module, l’apprenant doit pouvoir décrire
le fonctionnement global d’un circuit frigorifique automobile et citer les fluides et éléments
réglementaires associés.', 
'src/assets/images/Comprendre_la_climatisation_-_Partie_1.jpg'),
('MOD002_CLIM3', 10, 'Comprendre la climatisation – Partie 8', 
'Module 8 : Comprendre la climatisation – Partie 8 Objectifs pédagogiques : - Consolider la compréhension globale et les enjeux écologiques de la clima...', 
'Module 8 : Comprendre la climatisation – Partie 8
Objectifs pédagogiques :
- Consolider la compréhension globale et les enjeux écologiques de la climatisation automobile.
- Maîtriser les mesures de performance globale du système.
- Connaître les perspectives futures (fluides alternatifs, technologies émergentes).
- Réviser et synthétiser les connaissances (récapitulatif). 
Introduction technique :
Ce dernier module fait la synthèse des acquis et ouvre sur les évolutions à venir. Il rappelle que la
climatisation contribue notablement à la consommation de carburant (jusqu’à 15 % d’augmentation de
conso ) et aux émissions de CO₂ (par la consommation indirecte). Les nouvelles technologies visent à
minimiser cet impact tout en assurant le confort. 
Chapitres structurés :
1. Efficacité énergétique globale – Mesure du COP saisonnier, intégration du bilan global du véhicule.
Exemples de calcul : énergie frigorifique produite par litre d’essence (environ 500 W de froid par 1 kW
moteur). Effet du climatiseur sur l’autonomie (EV) ou sur les rejets de CO₂ (thermique).
2. Solutions alternatives – Fluides de nouvelle génération (ex. R744 (CO₂), R1234ze, ou mélanges à base
d’hydrocarbures (isobutane R600a) qui offrent des PRG très bas sans ODP). Pompe à chaleur intégrant
stockage froid (accumulateur phase-change). Ecran solaire ou vitrages spécifiques pour réduire la charge
calorifique.
3. Régulations avancées – Assistance embarquée (reconnaissance de perte de charge, diagnostic
automatique). Fusion de capteurs (température de l’air, du prélèvement, du tableau de bord) pour optimiser
« l’auto-apprentissage » de la clim. Liaison CAN bus pour pilotage moteur (ralenti auto plus élevé avec clim).
4. Enjeux environnementaux – Suivi des quotas HFC (phase-down des fluides). Évolution de la
réglementation (F-Gas3 mars 2024) avec des limites encore plus strictes sur les PRG des gaz et l’efficacité
énergétique minimale des systèmes . Introduction de nouvelles certifications (par exemple, label Euro
NCAP prenant en compte l’efficacité de la climatisation pour noter la consommation).
5. Étude de cas pratique  : Évaluation comparative thermique vs électrique. On compare deux modèles
équivalents (un thermique et un EV) sur une mission identique (cycle mixte, T ext =35°C). Simulation de la
consommation énergétique totale : carburant vs électricité prélevée pour la clim. Analyse de l’impact de
différents régimes de climatisation (Eco/Confort).
6. Applications (thermiques/hybrides/électriques) : On résume comment chaque type aborde les défis
futurs. Les moteurs thermiques traditionnels doivent mieux optimiser l’ordonnancement clim (arrêt auto
moteur). Les hybrides en profitent pour améliorer le confort sans pénalité majeure. Les VE nécessitent un
design encore plus pointu de la clim pour ne pas sacrifier l’autonomie.
7. Conclusion pédagogique : Ce module permet de boucler la boucle. L’apprenant consolide l’ensemble des
notions (cycle, composants, diagnostics, réglementation) et prend conscience des enjeux écologiques et
futurs de la climatisation automobile. Un récapitulatif sous forme de fiches ou de mind-map pourra être
réalisé pour valider la compréhension globale.', 
'src/assets/images/Comprendre_la_climatisation_-_Partie_8.jpg'),
('MOD003_CLIM3', 10, 'Introduction à la climatisation – Partie 6', 
'Module 6 : Introduction à la climatisation – Partie 6 Objectifs pédagogiques : - Situer la climatisation dans le contexte historique et réglementaire....', 
'Module 6 : Introduction à la climatisation – Partie 6
Objectifs pédagogiques :
- Situer la climatisation dans le contexte historique et réglementaire.
- Connaître les différences entre systèmes manuels et automatiques.
- Maîtriser les normes et certifications (F-Gas, ISO, attestations).
- Comprendre les besoins en formation et compétences (CQP, DIN ISO 15500, etc.). 
Introduction technique :
La climatisation automobile a été introduite en 1939 par Packard aux États-Unis, mais elle s’est généralisée
en Europe dans les années 1990 . Aujourd’hui, environ 9 véhicules sur 10 sont climatisés . En 2017,
l’UE a rendu obligatoire le passage au R1234yf pour tous les véhicules neufs , imposant un
renouvellement massif des équipements (stations de charge, compresseurs adaptés). 
Chapitres structurés :
1. Histoire de la climatisation auto – Première climatisation Airtemp (Chrysler 1953 ), évolution vers les
années 1960 (Nash All-Weather Eye), adoption massive aux USA et entrée tardive en Europe (1990).
2. Typologie des systèmes – Climatisation manuelle (actionneur mécanique, régulateur de température
simple) vs automatique (contrôle électronique, programmes «   Auto   », régulation de débit). Systèmes
double-zones (clavier passager séparé), capteurs d’ensoleillement.
3. Normes et réglementation – Retours sur la réglementation F-Gas (interdiction R12, quotas de HFC,
directives européennes). Arrêtés français (code de l’Environnement R543) et normes ISO (par ex. ISO 5149
sur la sécurité, ISO 817 sur la classification des fluides). Les directives NRMM (non-road mobile machinery)
ont aussi des exigences proches.
4. Sécurité et santé – Principes de sécurité (haute pression, fluide toxique en cas de fuite). Risques
spécifiques au R1234yf (voir commentaires F-Gas 3 sur son inflammabilité minimale). Protocole de secours
en cas de fuite (ventiler le local). Recyclage des fluides usagés.
5. Formation et certification – Présentation du cursus CQP et du rôle des organismes comme AFPA/ANFA.
L’exigence de l’attestation d’aptitude catégorie V est soulignée (elles sont délivrées par certification
organisme agréé) . Les supports pédagogiques incluent fiches AFPA, Climalife, Exxotest, manuals Valeo/
Denso, etc.
6. Applications (véhicules, engins)  : La climatisation auto est réglementée au même titre que sur les
machines agricoles ou engins TP (catégorie V). On étudie les obligations pour les flottes d’entreprise (par ex.
formation continue, maintenance périodique).
7. Conclusion pédagogique : Ce module présente le contexte général de la climatisation automobile.
L’apprenant comprendra le cadre légal, historique et technique des systèmes (manuels vs automatiques),
ainsi que les exigences de formation', 
'src/assets/images/Introduction_à_la_climatisation_-_Partie_6.jpg'),
('MOD004_CLIM3', 10, 'Les bases de la climatisation – Partie 7', 
'Module 7 : Les bases de la climatisation – Partie 7 Objectifs pédagogiques : - Connaître en détail chaque composant du circuit frigorifique. - Compren...', 
'Module 7 : Les bases de la climatisation – Partie 7
Objectifs pédagogiques :
- Connaître en détail chaque composant du circuit frigorifique.
- Comprendre les principes de conception (design).
- Savoir choisir un composant adapté (compresseur, échangeur, détendeur) selon le véhicule.
- Intégrer les principes de la climatisation passive et active. 
Introduction technique :
Ce module approfondit la connaissance des composants individuels. Chaque élément (compresseur,
condenseur, etc.) dispose de variantes et doit être adapté au véhicule : cylindrée du compresseur, surface du
condenseur/évaporateur selon la puissance requise. Les performances globales dépendent directement de
ces choix de conception. 
Chapitres structurés :
1. Compresseurs – Types : pistons alternatifs (simple ou double cylindre), hélicoïdaux (rotor), à palettes,
scroll. Avantages et domaines d’application. Exemple : compresseur à cylindrée variable vs on/off (embrayé/
débrayé). Lubrification interne (POE/PAG) et graissage. Illustration : vue de compresseur alternatif.
2. Condenseurs et évaporateurs – Architecture échangeur : condenseur avant (façade du véhicule) ou
condenseur sur radiateur, évaporateur sous tableau de bord. Matériaux (aluminium tubulaire à ailettes).
Importance de la superficie : débit d’air (débit ventilateur), chocs (protection pare-chocs).
3. Bouteille déshydratante – Rôle (séparation huile/eau, absorption d’humidité via gel Silica). Différences
compresseur électrique (sur certains modèles, un réservoir sec n’est pas nécessaire). Entretien : quel
moment changer le déshydrateur (ex. après conversion ou fuite).
4. Détendeurs – Types : tube capillaire (noeud fixe) vs vanne thermostatique (TXV/détendeur à orifice
thermostatique). Fonctionnement : régulation du débit en fonction de la température d’évaporateur (évite le
givrage). Choix selon application : les longs circuits à basse température favorisent le TXV, circuits courts ou
système R744 peuvent utiliser tube capillaire.
5. Ventilateur d’habitacle et diffuseurs – Gestion de l’air de l’habitacle : caissons, volets de répartition
(haut/bas), options désembuage. Exemple : climatisation auto « sensorice » qui adapte le flux
automatiquement.
6. Illustrations techniques   : Par exemple, on peut intégrer une photographie ou un schéma des
compresseurs scroll vs alternatifs, ou un dessin de l’intérieur (voir Figure ci-dessous). 
Figure   : Ex. commande électronique de climatisation sur tableau de bord d’Alfa Romeo 159 (3 aérateurs
circulaires) – illustration d’une interface moderne « Auto » avec capteur de température d’habitacle (cercle central)
.
Étude de cas pratique : Choix d’un compresseur pour un nouveau modèle. On estime la charge
calorifique de l’habitacle et calcule la capacité nécessaire du compresseur (en kW frigorifique). On
compare deux modèles de compresseur Valeo (p. ex. DCS à cylindrée variable vs DCP fixe), en tenant
compte de la consommation électrique. On remplit un tableau comparatif compresseurs (voir
Tableau ci-dessous). 
Tableau – Comparatif de quelques compresseurs :
Type
Exemples
constructeurs
Avantages Inconvénients
Alternatif Valeo DCP, Delphi Fiable, bon COP à basse
charge.
Vibration, bruyant à l’arrêt/
démarrage.
Rotatif
(hélicoïdal)
Sanden 1100, Valeo
6474
Silencieux, compacité élevée. Performance légèrement
inférieure.
Scroll (rotatif) Valeo 6E, Sanden
508
Peu de pièces mobiles,
silencieux, très efficace.
Sensible aux chocs, coût
plus élevé.
À palettes (peu courants) Compact, peu bruyant. Usure des palettes, moins
courant.
Électrique Denso ECT (electr.
scroll)
Indépendant moteur,
modulation facile.
Nécessite gestion HV,
coût++
Approche réglementaire : Les composants critiques doivent répondre aux normes (par ex. flamme/
étincelle interdite sur les compresseurs pouvant contenir du 1234yf). Les tests de certification (par
Valéo, Delphi, Denso) exigent des essais en température extrême (-40 à +85°C). Les protections
électriques doivent être certifiées (ISO 6469 pour véhicules électriques, etc.). 
Applications (thermiques/hybrides/électriques) : Chaque type de véhicule utilise généralement
les mêmes familles de composants, mais les véhicules électriques ont des compresseurs
spécifiquement conçus pour tourner à hautes RPM sans l’aide du moteur thermique. Sur les bus et
camions, on peut trouver des compresseurs à huile séparée (compresseur multiple), ou des
condenseurs sur le toit. 
Conclusion pédagogique : L’apprenant en ressort avec une connaissance détaillée des organes
élémentaires du circuit frigorifique. Il sait comment chaque composant contribue au
fonctionnement global et comment en choisir un adapté selon les spécifications véhicule (puissance
requise, encombrement, coût).', 
'src/assets/images/Les_bases_de_la_climatisation_-_Partie_7.jpg'),
('MOD005_CLIM3', 10, 'Optimisation de la climatisation – Partie 2', 
'Module 2 : Optimisation de la climatisation – Partie 2 Objectifs pédagogiques : - Comprendre les paramètres d’efficacité (COP, charge frigorifique). -...', 
'Module 2 : Optimisation de la climatisation – Partie 2
Objectifs pédagogiques :
- Comprendre les paramètres d’efficacité (COP, charge frigorifique).
- Optimiser le dimensionnement et le réglage des composants (taille d’évaporateur, vitesse de ventilateur).
- Maîtriser la logique de climatisation automatique (température cible, capteurs, servo-commandes).
- Détecter et corriger les baisses de performances (diagnostic énergétique). 
Introduction technique :
L’optimisation de la climatisation vise à maximiser le rendement (rapports froid fourni / puissance
absorbée). On parle de Coefficient de Performance (COP = Q_cold / W_elec). Un COP typique d’une clim
thermoétatique automobile est de l’ordre de 2 à 4, variable selon conditions d’utilisation (temp. ext., vitesse
du véhicule, charge du fluide). L’objectif est d’obtenir le meilleur compromis confort/consommation. 
Chapitres structurés :
1. Performance énergétique (COP) – Définition du COP et du SEER (Saison Energy Efficiency Ratio).
Influence des températures de condenseur/évaporateur. Exemples de courbes de performance.
2. Capteurs et régulation – Capteurs de pression (HP/LP) et de température (air, fluide) dans le circuit.
Servocommandes (débit de gaz, position de détendeur). Climatisation manuelle vs climatisation automatique
(régulation électronique sur tableau de bord). Impact sur l’optimisation du confort (sonde d’habitacle,
réglage « AUTO »).
3. Dimensionnement des composants – Choix de la puissance et du type de compresseur (par exemple,
compresseur à cylindrée variable, ou système à double circuit). Optimisation de l’évaporateur (surface
d’échange, orientation). Équilibrage de l’air soufflé (multizone).
4. Air ambiant et flux d’air – Gestion du renouvellement d’air (recyclage vs extérieur), filtres à pollen/
climatisation, face avant du condenseur (enjoliveur pour canalisation d’air). Ventilateur(s) condenseur et/ou
auxiliaire pour l’échange thermique (vitesse variable pour réduire la consommation).
5. Tableau comparatif – Capteurs et commandes :
Étude de cas pratique : Optimiser la climatisation d’un monospace chargé. Une famille fait de longs
trajets avec valises : fortes chaleurs, ralentissements en ville. On observe que la clim peine à
maintenir la température réglée. En atelier, mesurer la courbe de pression/température et la
température de sortie d’air habitacle. Proposer des améliorations : ex. nettoyage condenseur
(déchets canalisant), vérification du débit d’air ventilateur, calibrage de la soupape thermostatique.
Calculer l’impact sur le COP et expliquer les gains. 
Approche réglementaire : Vérifier la conformité aux normes d’efficacité énergétique des véhicules
(par exemple la Directive 2006/40/CE impose des exigences minimales de COP pour la climatisation
des véhicules neufs). La loi oblige également l’utilisation de lubrifiants et d’outils certifiés pour
l’entretien. Les points de contrôle obligatoires (attestation d’étanchéité périodique, retenue de
pression maximale) doivent être soulignés. 
Applications (thermiques/hybrides/électriques) : Sur un véhicule thermique, l’optimisation
classique passe par l’amélioration du circuit (comme vu). Sur hybride/électrique, on ajoute la gestion
de l’énergie embarquée. Par exemple, en hybride, la clim peut fonctionner au ralenti grâce au
compresseur électrique du 12V lors de l’arrêt moteur. En électrique, l’optimisation intègre la gestion
de la charge de batterie (quantité d’énergie allouée au compresseur haute tension) et l’utilisation
d’une pompe à chaleur pour améliorer le COP en hiver. 
Conclusion pédagogique : Ce module traite de l’amélioration des performances énergétiques et du
confort. L’apprenant doit savoir choisir et régler les capteurs et composants pour maximiser le
rendement frigorifique (COP) tout en garantissant le confort.', 
'src/assets/images/Optimisation_de_la_climatisation_-_Partie_2.jpg'),
('MOD006_CLIM3', 10, 'Optimisation de la climatisation – Partie 3', 
'Module 3 : Optimisation de la climatisation – Partie 3 Objectifs pédagogiques : - Maîtriser la conversion et compatibilité des systèmes R134a ↔ R1234y...', 
'Module 3 : Optimisation de la climatisation – Partie 3
Objectifs pédagogiques :
- Maîtriser la conversion et compatibilité des systèmes R134a ↔ R1234yf.
- Connaître les lubrifiants spécifiques (PAG/POE) et leur manipulation pour chaque fluide .
- Diagnostiquer et corriger les écarts de performance liés aux fluides ou à la lubrification (vieillissement,
humidité).
- Intégrer les procédures de détection de fuites avancées (traceurs UV, détecteurs électroniques). 
Introduction technique :
Depuis l’avènement du R1234yf, de nombreux systèmes anciens à R134a ont dû être adaptés (parfois via
une conversion de fluide). La compatibilité entre huile et fluide est essentielle . Les huiles PAG
(polyalkylèneglycol) ou POE (polyolester) lubrifient le compresseur et circulent dans le circuit. Les huiles
utilisées sont spécifiques au fluide : par exemple, DENSO préconise la ND-oil 8 (PAG 46) pour R134a et la NDoil 12 (PAG 46 additivée) pour R1234yf . L’huile ND-oil 12 est réversible (compatible R134a et R1234yf),
alors que la ND-oil 8 ne peut pas être utilisée avec le 1234yf . 
Chapitres structurés :
1. Huiles lubrifiantes – Types (PAG, POE, ND-oils) et propriétés (hygroscopie, stabilité thermique,
miscibilité). Gestion de l’humidité : une huile saturée en eau diminue la performance et peut endommager
le compresseur . Stockage des huiles (récipient acier) et précautions (éviter l’exposition à l’air) .
2. Conversion R134a → R1234yf – Procédure et bonnes pratiques. Vidange totale de l’ancienne huile,
rinçage éventuel, choix de la nouvelle huile (voir Tableau comparatif cidessous). Contrôle des soupapes de
compresseur (certaines doivent être modifiées pour le R1234yf).
3. Détection de fuites – Importance du contrôle d’étanchéité (obligatoire périodiquement). Méthodes :
électronique (gaz traceur, sniffers), pompe à vide et mesure du taux de fuite, banc de détection laser
(acétone). Fumigation (brouillard UV) sur certaines bornes de condensateur.
4. Tableau comparatif – Huiles et fluides : 
Fluide et huile
associée Type huile Spécificités
R134a + huile
PAG (ND‑oil 8) PAG 46
Usiné sur compresseur standard. ND-oil 8 est humide (abs. d’eau), à
usage unique pour R134a .
Fluide et huile
associée Type huile Spécificités
R1234yf +
huile ND‑oil 12
PAG 46 +
additifs
Pour les nouveaux compresseurs. Nécessite additifs spéciaux
(antioxidants) . Huile moins hygroscopique que les PAG classiques.
R744 (CO₂) +
huile PAG/PAO POE/PAG
Spécial (très haute pression, comportement lubrifiant différent). Ex.
huile PAG très visqueuse à basse température. Peut être négligeable la
conversion, mais vérif. et vidange recommandées.
Étude de cas pratique : Conversion d’un circuit R134a en R1234yf. Le véhicule est de 2010, équipé
R134a. On souhaite passer au 1234yf pour cause d’exigence légale à venir. En atelier : récupérer
l’ancien fluide, vidanger l’huile usagée, contrôler le filtre déshydrateur, remplir avec l’huile neuve NDoil 12 et chargement du nouveau fluide. Vérifier les pressions de service (gauche très proches).
Mesurer l’efficacité (temp. évaporateur) et s’assurer que l’huile remonte bien au compresseur. 
Approche réglementaire : Outre les obligations F-Gas vues précédemment, noter que la
manipulation du R1234yf nécessite le même niveau de qualification (attestation cat V). Les fiches de
sécurité SDS doivent être actualisées. En cas de contamination ou de mélange impropre (ex.
mélange 134a/1234yf), le système doit être purgé – un test pression d’hélium peut être exigé par la
norme NF EN 378. 
Applications (thermiques/hybrides/électriques) : Les principes de conversion et d’huile sont
identiques quel que soit le type de véhicule. Cependant, sur les hybrides/électriques, l’indication du
fluide (étiquette sous capot) est souvent soulignée pour les techniciens. De plus, sur ces véhicules, le
compresseur électrique ne dépend pas du régime moteur, simplifiant la charge du fluide (chauffe
constante). Noter que l’attestation cat V est nécessaire même pour les stations de charge mobiles
(utilisées en mobilité EV). 
Conclusion pédagogique : Ce module approfondit la chimie et la lubrification du circuit frigorifique.
L’apprenant sait désormais sélectionner les huiles compatibles avec chaque fluide , appliquer les
procédures de conversion R134a/R1234yf et utiliser les outils de détection de fuite avancés. Le
respect de la réglementation lors de ces opérations est également compris.', 
'src/assets/images/Optimisation_de_la_climatisation_-_Partie_3.jpg'),
('MOD007_CLIM3', 10, 'Optimisation de la climatisation – Partie 4', 
'Module 4 : Optimisation de la climatisation – Partie 4 Objectifs pédagogiques : - Comprendre les systèmes de climatisation à pompe à chaleur (réversib...', 
'Module 4 : Optimisation de la climatisation – Partie 4
Objectifs pédagogiques :
- Comprendre les systèmes de climatisation à pompe à chaleur (réversible).
- Étudier les différences de conception pour les véhicules hybrides et électriques (alimentation 12V vs haute
tension).
- Optimiser le confort en modes chauffage (batterie auxiliaire, résistances électriques).
- Intégrer les nouvelles normes de sécurité (haute tension, R1234yf inflammable). 
Introduction technique :
Les véhicules modernes combinent souvent climatisation et chauffage via une pompe à chaleur réversible :
le cycle frigorifique peut être inversé pour chauffer l’habitacle (fonction pompe à chaleur), améliorant ainsi
l’efficacité énergétique par rapport à une résistance pure. Les systèmes thermostatiles classiques sont
complétés de compresseurs électriques et de circuits glycolés pour les batteries. L’optimisation dans ce
contexte implique de gérer l’énergie (batterie) et la sécurité électrique. 
Chapitres structurés :
1. Cycle réversible – pompe à chaleur – Description du cycle frigorifique inversé : l’évaporateur (à
l’extérieur) capte la chaleur ambiante même par temps froid, et le condenseur (dans l’habitacle) libère cette
chaleur. Les détendeurs et vannes 4 voies permettent le basculement froid→chaud. Avantages en
consommation : coefficient de performance très élevé en hiver (jusqu’à COP 4).
2. Compresseur électrique haute tension – Différences avec compresseur entraîné par moteur. Exemples :
compresseur à cylindrée variable entraîné par moteur (thermique) vs compresseur électrique à aimants
permanents. Gestion de la vitesse via électronique. Protection électrique (coupure HV en cas de choc).
3. Circuit de chauffage auxiliaire – Dans les hybrides ou EV, en l’absence de chaleur moteur, on utilise des
résistances électriques ou circulation de liquide (calorstat électrique, pompe, échangeur). Optimiser le
confort implique de couper rapidement sur les résistances ou d’utiliser la chaleur du pack batterie (si
disponible).
4. Système de contrôle climatique avancé – Régulations précises via CAN bus (protocoles
d’ordonnancement), commande électronique des clapets de mélange d’air, gestion du recyclage en fonction
de la qualité de l’air. Intégration BMS (Battery Management System) pour limiter la demande électrique en
chauffage/clim selon l’autonomie restante.
5. Illustrations techniques : On peut illustrer un circuit de pompe à chaleur automobile ou présenter un
écran de commande de climatisation automatique (ex. commandes tactiles modernes).
6. Tableau – Systèmes de climatisation selon le type de véhicule :
Équipement Véhicule thermique Hybride (HEV) Électrique (EV)
Compresseur
Courroie +
embrayage 12V Courroie/électrique Électrique HV (12V
passif)
Pompe à chaleur Souvent non (utilise
résistance) Parfois en option Fréquente (COP>1)
Chauffage
auxiliaire Caloduc eau moteur Résistances 12V + calorstat Résistances HV + pompe
à chaleur
Gestion
énergétique
Aucun dispositif
dédié
Coupure moteur en montée
pour économiser
Recalage pour optimiser
l’autonomie
Étude de cas pratique : Conception du circuit climatique pour un VE. À partir d’un véhicule thermique,
on développe l’architecture de la version électrique. Il faut dimensionner le compresseur électrique
et la pompe à chaleur, prévoir le radiateur additionnel pour le liquide de batterie et le chauffage,
ainsi que la résistance de secours. Vérifier comment l’énergie de la batterie est allouée (calculer la
durée de fonctionnement continu à pleine puissance). 
Approche réglementaire : Outre les aspects F-Gas déjà couverts, le passage à la tension élevée
impose de respecter les normes de sécurité électrique (par ex. ISO 26262 pour la sécurité
fonctionnelle, et les consignes de coupure HV en cas d’accident). Concernant le R1234yf (légèrement
inflammable), des normes d’ingénierie (IATF 16949, SAE J639) fixent des exigences de détection de
fuite rapide et de ventilation appropriée. 
Applications (thermiques/hybrides/électriques) : En thermique classique, le chauffage utilise la
chaleur du moteur (valeur calorifique gratuite). En hybride, cette option est présente mais moins
régulière. En EV, seule la PAC et les résistances sont disponibles. Chaque configuration impose un
arbitrage entre confort et autonomie (on peut réduire la clim en mode “Eco” pour privilégier
l’autonomie). 
Conclusion pédagogique : L’apprenant doit ici savoir optimiser un système de climatisation
réversible, dimensionner un compresseur électrique et intégrer la climatisation dans la gestion
globale du véhicule hybride/électrique. Les principes de base du cycle inversé et de la gestion de
l’énergie embarquée sont assimilés.', 
'src/assets/images/Optimisation_de_la_climatisation_-_Partie_4.jpg'),
('MOD008_CLIM3', 10, 'Réparer la climatisation – Partie 5', 
'Module 5 : Réparer la climatisation – Partie 5 Objectifs pédagogiques : - Diagnostiquer les pannes courantes (fuite, compresseur HS, détendeur grillé)...', 
'Module 5 : Réparer la climatisation – Partie 5
Objectifs pédagogiques :
- Diagnostiquer les pannes courantes (fuite, compresseur HS, détendeur grillé).
- Réaliser l’entretien : récupération, vidange, recharge de fluide frigorigène.
- Appliquer les procédures de remplacement des organes (compresseur, condenseur, évaporateur, bouteille
déshydratante).
- Respecter les règles de sécurité (pression, gaz froids) et les procédures environnementales (récupération,
recyclage). 
Introduction technique :
La réparation et l’entretien d’un circuit de climatisation exigent une approche méthodique. On commence
par un diagnostic (symptômes). Par exemple, faible refroidissement peut indiquer une fuite de fluide, un
compresseur usé ou un filtre/détendeur obstrué. Bruit anormal peut provenir du compresseur ou d’un
organe mobile défectueux. Une fuite de fluide est confirmée par le manque de charge (pression basse,
température d’évap. anormale) ou avec un détecteur de fuite. 
Chapitres structurés :
1. Diagnostic de pannes – Procédures : mesures de pression HP/LP au contacteurs, relevé de température
d’air en bouche et tubulures, écoute de la pompe/compress. Causes typiques : fuite au niveau d’une durite,
condenseur percé (collision), compresseur défectueux (roulements ou valves), filtre déshydrateur saturé.
2. Maintenance préventive et entretien – Importance du nettoyage du condenseur (débiter d’air),
renouvellement du filtre d’habitacle (antipollen) car il peut réduire le débit d’air évaporateur. Vidange de
l’huile (éviter l’emmêlement d’humidité).
3. Procédures d’atelier – Détail du processus de réparation :
- Mise sous vide (vérification d’étanchéité d’abord, puis création du vide pour extraire l’air et l’humidité) –
durée typique 30 min, contrôle d’étanchéité après 10 min hors aspirateur.
- Remplacement éventuel du filtre/détendeur ou compresseur (impliquer vidange de l’huile, nettoyage,
remise en charge de fluide).
- Recharge du circuit : utilisation d’une station de charge avec mesure de la masse (±5 g), ajout de POE/PAG
et traceur UV. Contrôle des capteurs de pression (opération à suivre).
4. Tableau – Symptômes et causes : 
Symptôme
constaté Causes possibles Action corrective
Pas de froid du
tout
Vidange fluide totale, compresseur
HS, condenseur bouché
Recharger fluide, remplacer
compresseur/détendeur filtrants.
Refroidissement
faible
Fuite partielle, fluide trop faible,
condenseur encrassé
Mesurer fuite, compléter fluide,
nettoyer condenseur.
4. 
7
Symptôme
constaté Causes possibles Action corrective
Bruit de
couinement
Poulie ou roulement compresseur
grippé
Remplacer compresseur (vérifier
courroie).
Odeur de moisi Filtre habitacle saturé Remplacer le filtre d’habitacle (pollen,
charbon).
Givre sur
évaporateur
Détendeur bloqué (tout ouvert) ou
fluide saturé
Vérifier régulation du détendeur,
ajuster charge.
Étude de cas pratique : Réparer un circuit fuyard et défectueux. Un véhicule récent ne fait plus de
froid et dégage un bruit de grincement. En atelier : confirmer la fuite (détecteur électronique sur
durites, taches visibles) ; récupérer le gaz restant (nappe de 100 g environ). Retirer le compresseur,
démonter l’embase, vidanger l’huile contaminée (celle-ci devient noire et acide). Contrôler le
condenseur (la collision en façade a pu l’endommager). Installer un compresseur neuf avec huile
neuve ND-oil 12, remplacer le filtre-sécheur. Réaliser une mise sous vide de 30 min, puis recharger le
circuit en R1234yf et huile neuve. Vérifier l’étanchéité (tenue de 15 min à vide), puis tester en marche
(contrôler l’abaissement rapide de la température d’air). 
Approche réglementaire : Lors de l’intervention, respecter la règlementation F-Gas : la récupération
du fluide frigorigène (attention aux normes de collecte et recyclage) est obligatoire avant ouverture
du circuit. L’opérateur doit porter des EPI (lunettes, gants) en raison de la haute pression et du froid
extrême (Brûlures par fluide liquide). La déclaration de l’opération (type d’intervenant, quantité de
fluide récupérée et rechargée) doit être enregistrée dans le registre des fluides de l’entreprise (à
envoyer annuellement aux autorités) . 
Applications (thermiques/hybrides/électriques) : Les procédures de base (diagnostic, mise sous
vide, recharge) sont identiques pour tous types de véhicules. Toutefois, sur hybrides/électriques, on
n’attend pas de chauffage moteur pour décrasser : la clim peut rester activée en mode électrique.
Par ailleurs, sur véhicule électrique, une perte de fluide frigorigène peut diminuer significativement
l’autonomie (car le compresseur électrique consomme de l’énergie précieuse). Il faut aussi veiller à la
sécurité liée au circuit électrique – déconnecter la batterie HV pour certains travaux proches du
compresseur électrique. 
Conclusion pédagogique : Ce module opérationnel permet de diagnostiquer et d’intervenir sur un
système de climatisation défaillant. L’apprenant doit pouvoir établir un plan de réparation (fuite,
remplacement), effectuer les opérations d’atelier (remplacement de composants, recharge de fluide)
en toute sécurité, et documenter l’intervention conformément aux normes.', 
'src/assets/images/Réparer_la_climatisation_-_Partie_5.jpg'),
('MOD001_CPE2', 11, 'Introduction à Carrosserie et Peinture – Partie 4', 
'Module 4 : Introduction à Carrosserie et Peinture – Partie 4 Objectifs pédagogiques : Présenter les fondamentaux du métier de carrossier-peintre et le...', 
'Module 4 : Introduction à Carrosserie et Peinture – Partie 4
Objectifs pédagogiques : Présenter les fondamentaux du métier de carrossier-peintre et les bases de la
carrosserie/peinture. Les stagiaires acquerront une vision globale du secteur (métier, évolution), des
matériels et outils de base, ainsi que des règles de sécurité et environnementales essentielles. Ce module
aborde aussi l’organisation de l’atelier et les normes en vigueur.
Introduction pédagogique : Il est crucial de comprendre le contexte professionnel et réglementaire dès le
début du cursus. Ce module sert de point de départ en rappelant le rôle du carrossier (dans le CQP :
préparer surfaces, réaliser peinture) , les risques de santé (poussières, solvants, bruits) et la chaîne de
valeur dans l’atelier. On présente également le cycle global d’une réparation (de la réception du véhicule à la
restitution au client) et le vocabulaire technique de base.
Chapitre 1 : Métier et chaîne d’intervention
Le métier de carrossier-peintre : Définition, responsabilités (préparation, réparation, peinture).
Passerelle avec la certification (CQP) et perspectives (chef d’atelier, formateur). 
Étapes d’une intervention : Accueil client, diagnostic, devis, démonstration à l’aide d’un exemple de
fiche d’intervention. Chaque étape est expliquée (analyse de la carrosserie, choix de la méthode,
planification). On souligne que la gestion documentaire (compte rendu, Bons de commande) est
aussi une compétence attendue par les référentiels. 
Normes constructeurs et législations : Rôle des normes (ex: ISO 9001 pour la gestion qualité, ISO
14001 pour l’environnement). Importance du respect des préconisations constructeurs (souvent
obligatoires sous peine de garantie). Mention de la récente norme ISO/PAS 11929 sur la mesure
d’épaisseur de couche pour éviter le sur-ponçage . Réglementation COV : obligation d’atelier
fermé à extraction avec seuils max (Directive 2004/42/CE).
Chapitre 2 : Outils et équipements de base
Atelier carrosserie : Liste des équipements standards (banc de redressage, postes de soudage MIG/
MAG, étaux, mâchoires de débosselage). Utilisation de l’outil de traction (mini train) pour les
réparations de tôles. 
Atelier peinture : Présentation de la cabine de peinture (flux laminaire, aspiration), pistolets HVLP/
LVLP, pistolet de finition (pistolet à recouvrement), ponceuses orbitales. Illustration du matériel de
sécurité : filtres à charbon, lunettes, protections respiratoires. 
Matériaux et consommables : Aperçu des principaux matériaux (lame de scie sabre, bandes de
toleuse, disques abrasifs selon Grain) et consommables (rochers à poncer, ruban cache). Les
coefficients d’abrasif (Pxxxx) sont expliqués : plus le nombre est grand, plus le grain est fin. 
Chapitre 3 : Sécurité et environnement
Risques professionnels : Exposition aux poussières de ponçage et aux solvants peintures (benzène,
isocyanates) – rappel des recommandations INRS (gants, masques FFP2/3, ventilation) . Norme
Afnor pour cabine et filtre, gestion des déchets dangereux (filtres saturés, solvants usagés). 
Ergonomie et prévention : Aménagement des postes (établi ajustable, éclairage optimal).
Formations obligatoires (CACES pont élévateur, habilitation électrique B0L pour éclateurs). On cite
des fiches pratiques (INRS, AFNOR) encourageant les pauses actives et la rotation pour limiter les
troubles musculo-squelettiques. 
Réflexion éco-responsable : Introduction au tri des déchets (bidons vides, solvants, vapeurs).
Discussion sur le développement durable en carrosserie : par exemple, la tendance aux vernis à base
aqueuse (90-Line Glasurit à faible COV) . Encouragement à la maîtrise de la consommation
d’énergie (lampes LED pour le contrôle final, optimisation de la cabine).
Illustration : Figure : Atelier de formation carrosserie des années 1950 à Nice. Bien que la technologie ait évolué,
les principes de base restent: travail structuré autour du véhicule avec outils adaptés. (Photo historique, Centre
d’apprentissage Lamarque).
Étude de cas 4 : Réception d’un véhicule accidenté – Mise en situation : accueil d’un client avec voiture
endommagée. Le stagiaire doit repérer les déformations, lister les opérations (remplacement aile,
redressage capot, peinture portière), estimer les temps et coûts. Ce scénario permet de valider la
compréhension du processus global et des termes métier (ex. “nivellement”, “laque”, “lustrage”).
Points clés : connaissance du métier (attentes du client, image de marque de l’atelier) et du cadre
réglementaire est fondamentale. Les outils et matériaux de base sont nombreux ; il faut savoir choisir le
bon équipement pour chaque tâche. Enfin, la sécurité prime : respect strict des consignes (ex. extraction
lors de peinture) et initiation aux bonnes pratiques environnementales constituent la base de tout le reste
de la formation', 
'src/assets/images/Introduction_à_Carrosserie_et_Peinture_-_Partie_4.jpg'),
('MOD002_CPE2', 11, 'Les bases de Carrosserie et Peinture – Partie 6', 
'Module 6 : Les bases de Carrosserie et Peinture – Partie 6 Objectifs pédagogiques : Reprendre et consolider les connaissances fondamentales de la carr...', 
'Module 6 : Les bases de Carrosserie et Peinture – Partie 6
Objectifs pédagogiques : Reprendre et consolider les connaissances fondamentales de la carrosserie peinture. Les techniciens réviseront les notions de bases en mécanique, en dessin technique de carrosserie
(traçage, mesurage), en métrologie simple (outil de mesure), et en procédés initiaux (découpe, formage,
ponçage manuel). Ce module vise à assurer que chaque participant dispose d’une base solide avant
d’aborder les techniques avancées.
Introduction pédagogique : Même confirmés, les techniciens doivent parfois revisiter les fondamentaux –
surtout lors de l’introduction d’un nouveau procédé. Ce module aborde les principes de mécaniques
basiques (levier, contre-levier pour le débosselage), les alliages classiques (tôles acier) et leur mise en forme
(filets, raidisseurs). Il couvre aussi les bases de la peinture : constitution d’une peinture (pigment, liant,
solvant) et cycle conventionnel de remise en peinture après préparation.
Chapitre 1 : Matériaux et outillages initiaux
Les métaux usuels : Identification de l’acier doux, de l’acier galvanisé, et de leurs particularités
(corrosion galvanique, soudabilité). Introduction aux alliages de base (inexistants sur les voitures de
série avant 2000). 
Outils de mesure simples : Règle, pied à coulisse, jauges d’épaisseur. Prise de cotes rapides sur un
panneau (longueur, largeur) et utilisation d’un banc de mesure manuel. 
Outillage de base : Marteaux de carrosserie, maillets caoutchouc, mandrins, extracteurs de bosses
à ventouses. Utilisation de leviers comme le +PION (levier de pied d’éléphant) pour extraire des
bosses. 
Chapitre 2 : Techniques de débosselage fondamentales
Marouflage manuel : Dégrossissage de bosselures sur un banc d’établi. Enfoncer le métal à l’aide de
masse et mandrin, suivi d’un coulage progressif avec pointeaux pour effacer la bosse. 
La réparation au mastic : Apprendre le masticage basique : remplir les creux, lissage initial au
couteau. On explique aussi le concept de “rebouchage autorisé” selon la norme (épaisseur maxi
autorisée sur un panneau). 
Ponçage de base : Ponceuse sur bloc manuel pour aplanir le mastic. Progression de grain grossier
(P60-P80) à moyen (P120-P180). Démonstration du ponçage sous l’eau (à la main) pour le stade final. 
Chapitre 3 : Cycle peinture traditionnel
Préparation avant peinture : Masquage manuel sommaire (feuilles de papier, ruban adhésif) et
dégraissage. 
Apprêt et couche de finition : Application d’un apprêt surfacer à base solvant (couche de fond) en 1
ou 2 couches. Après séchage, ponçage léger (P400) pour planifier la couche finale. 

Peinture : Principes d’une application uniforme de la peinture (même mouvement du pistolet).
Notions d’épaisseur de couche idéale (~25-50 microns pour base, 15-25 pour vernis). Utilisation d’un
bon doigté pour gérer l’alternance de vitesses et éviter les coulures. 
Comparatif des grains abrasifs (tableau simplifié) :
Étude de cas 6 : Réparation simple d’élément métallique – Exercice pratique : retrait d’une bosse superficielle
sur portière en acier. D’abord débosselage manuel (marteau, coussinets), puis finition au mastic. Poncé sous
le contrôle d’un formateur. L’étudiant suit la procédure pas à pas pour reconstituer la surface sans défaut et
applique une sous-couche d’apprêt. 
Points clés : consolider les gestes de base : positionnement du chariot de martelage, tenue correcte de la
ponceuse, mélange mastic-durcisseur. Apprivoiser la notion de grain d’abrasif et savoir quand passer au
grain suivant. Comprendre le cycle standard peinture : préparation – apprêt – finition. Cette assise solide
facilitera l’assimilation des techniques plus complexes dans les modules ultérieurs ', 
'src/assets/images/Les_bases_de_Carrosserie_et_Peinture_-_Partie_6.jpg'),
('MOD003_CPE2', 1, 'Optimisation de Carrosserie et Peinture – Partie 3', 
'Module 3 : Optimisation de Carrosserie et Peinture – Partie 3 Objectifs pédagogiques : Ce module développe les compétences en amélioration continue de...', 
'Module 3 : Optimisation de Carrosserie et Peinture – Partie 3
Objectifs pédagogiques : Ce module développe les compétences en amélioration continue des processus
atelier. Il a pour objectif de montrer comment optimiser les flux de travail, réduire les déchets (matériaux et
temps), améliorer la qualité et intégrer les contraintes économiques et environnementales. Les stagiaires
apprendront à mettre en place des méthodes Lean (5S, SMED), gérer les stocks de manière efficace, et
utiliser des indicateurs de performance adaptés (rendement, taux de rebuts, délai de cycle).
Introduction pédagogique : L’optimisation concerne aussi bien l’atelier carrosserie que l’espace peinture. Il
s’agit d’améliorer sécurité (ergonomie, organisation), qualité (pannes évitées, conformité), et rentabilité
(délais, coût matière) . Les normes environnementales (e.g. directives COV européennes) incitent à
minimiser l’usage de solvants, à recycler l’air extrait des cabines et les eaux usées. Ce chapitre présente
également l’utilisation d’outils numériques (ERP pour la gestion de stock peinture, logiciels de mélange
colorimétrique) pour gagner en précision et réduire le gaspillage.
Chapitre 1 : Lean management et organisation d’atelier
Méthodes 5S et flux Kanban : Aménagement de l’atelier pour éliminer les déplacements inutiles
(station de ponçage, pulvérisation, pièces prêtes). Code couleur, étiquetage, planification visuelle.
Exemple de mise en place d’un Kanban pour réapprovisionner les consommables (microscope visuel,
adhésif, papier masquage). 
Réduction des temps de passage : Analyse SMED (Single-Minute Exchange of Die) appliquée aux
changements de couleur en cabine : pré-mesure des teintes, nettoyage rapide du pistolet, stock
d’apprêt homogène. Établissement d’un mode opératoire standard (diagramme de Gantt pour
chaque processus, depuis l’arrivée du véhicule jusqu’à la livraison) afin de calculer le Lead Time
global. 
Maintenance préventive : Suivi des équipements critiques (cabine de peinture, ponceuses,
compresseur). Planification des contrôles périodiques (calibration des pistolets, vérification des
filtres cabine). Utilisation d’un tableau de bord (graphique d’indicateurs clés : taux de rebus,
rendements, coût à l’heure de main-d’œuvre) pour détecter rapidement les dérives.
Chapitre 2 : Gestion des stocks et des achats
Gestion des peintures et solvants : Stockage conforme (armoire ventilée, filtres à charbon pour
solvants) en respectant les fiches de données de sécurité (FDS). Suivi des dates de péremption des
produits 2K. Chiffrage et contrôle régulier des quantités utilisées. 
Comparaison et choix de fournisseurs : Tableaux comparatifs de fournisseurs (e.g. 3M, PPG/
Glasurit, Axalta) sur les critères prix, qualité, service (exemples de contrats d’approvisionnement).
Exemple de tableau : 
Fournisseur Gammes (Peintures) Avantages Remarques
Glasurit
(BASF)
22-Line, 90-Line, 100-
Line
Large teintes O. / Recyles faibles Adapté gros
volumes
3M (PPG) 2K poly. / Primaires Innovations cabine et durcisseurs
rapides
Support technique
24h
Spies Hecker AquaSys (aqueux)
Respecte norme REACH, émission
COV basse Prix plus élevé
Économie de matériaux : Astuces pour éviter le gaspillage : programmation des couleurs proches
(pour réutiliser l’apprêt ou le vernis), récupération et reconditionnement des peintures partiellement
utilisées (dans les limites des consignes constructeur). Par exemple, usage de pistolets HVLP à faible
turbulence d’air pour limiter les fines projetées.
Chapitre 3 : Qualité et amélioration continue
Contrôles qualité : Normes (ISO9001) pour l’atelier de carrosserie. Mise en place d’audits internes
(checklist de fin de réparation). Contrôle final de la couleur avec spectro, test de corrosion (bain sel),
vérification de l’alignement des joints. 
Traitement des réclamations : Organisation d’une boîte à idées et d’un système de retour client
(feedback) pour identifier les points faibles (rayures sur livraison, différences de teinte). Exemples :
temps supplémentaires, repasse de peinture en Garantie Constructeur. Analyse des pannes (type
PDCA) pour corriger le processus (diagramme d''Ishikawa, 5M). 
Innovation technologique : Intégration des outils récents : logiciels de gestion de teinte (data
analysis des formules), dispositifs de contrôle non destructif (capteurs de couche de peinture pour
vérifier l’épaisseur). Évolution vers les ateliers « papier zéro » (dématérialisation des ordres de
réparation, CV sur tablettes).
Étude de cas 3 : Projet d’optimisation 5S – Examen d’un atelier de carrosserie: réaménagement des zones de
travail, étiquetage des outils et escaliers, implantation de rangements. Résultat : réduction de 15 % du
temps de recherche d’outils, diminution du délai total de réparation d’une demi-journée par véhicule. Le cas
montre l’impact concret sur la productivité et la satisfaction du client.
Points clés : adopter une culture d’amélioration continue (Lean) permet de rationaliser l’atelier, de réduire
les coûts et d’améliorer la qualité. Une gestion rigoureuse des stocks et des consommables (suivi
électronique) évite les ruptures et le surstockage. La traçabilité (logiciel ERP atelier) garantit que chaque
intervention suit bien les préconisations constructeur et la fiche technique du produit. Enfin, la démarche
sécurité-environnement (polluants, recyclage, ergonomie) est intégrée dans toute l’optimisation .', 
'src/assets/images/Optimisation_de_Carrosserie_et_Peinture_-_Partie_3.jpg'),
('MOD004_CPE2', 11, 'Optimisation de Carrosserie et Peinture – Partie 8', 
'Module 8 : Optimisation de Carrosserie et Peinture – Partie 8 Objectifs pédagogiques : Ce dernier module approfondit les pratiques de gestion, qualité...', 
'Module 8 : Optimisation de Carrosserie et Peinture – Partie 8
Objectifs pédagogiques : Ce dernier module approfondit les pratiques de gestion, qualité et
environnement appliquées à un niveau expert. Il se focalise sur l’évaluation du rendement par indicateurs
chiffrés, le management des compétences, et l’intégration de la réglementation la plus récente (bascarbones, normes santé). Les stagiaires seront capables de conduire un audit de performance d’atelier et de
proposer des plans d’action. 
Introduction pédagogique : Suite aux deux modules dédiés à l’optimisation, celui-ci propose une vision
stratégique du secteur. Il inclut l’étude de la satisfaction client (questionnaires, Net Promoter Score),
l’assurance qualité (certification AFNOR/ISO), et la veille technologique/performance (benchmarking,
ateliers visiteurs). On souligne l’importance de l’innovation continue (méthodes agiles, certification
“workshop refinish” 3M/Glasurit) et du respect des dernières obligations légales (directive DEEE sur pièces
auto, obligations de formation continue).
Chapitre 1 : Pilotage et indicateurs avancés
Indicateurs clefs (KPI) : Définition d’un tableau de bord complet (temps moyen de réparation, taux
de conformité, coût matière par véhicule). Utilisation d’outils de Business Intelligence (BI) pour
analyser les données d’atelier (ex. volume de peinture consommé par mois, temps machine cabine). 
Benchmarking interne : Comparaison entre postes (carrossage vs peinture), calcul du TRG (taux de
rendement global) par équipement. Identification des goulets d’étranglement (ex. usage de cabine
sur sollicitations multiples). 
Gestion du capital humain : Formation continue (plan de compétences via Afpa/Anfa), certification
interne des techniciens. Attribution de responsabilités (chef d’atelier, qualité) et partage des retours
terrain lors de réunions périodiques.
Chapitre 2 : Contrôle qualité et certification
Audit qualité : Méthodologie d’audit interne (type checklist ISO 9001 appliquée à l’atelier).
Vérification de la conformité des documents (FDS, certificats de formation habilitation, cahiers de
charge véhicules). 
Certification Éco‐responsable : Présentation de labels possibles (ex. RGE pour durable, Reconnu
Garant Environnement). Moyens de réduire l’impact (récupération des solvants, tri multi-flux), calcul
du bilan carbone (ex. compensation par reforestation). 
Relation client : Amélioration de la transparence (portail web de suivi de réparation). Mise en place
d’un guide 5 étoiles “expérience client” (test drive avant restitution, remise d’un dossier photos).
Impact sur la fidélisation.
Chapitre 3 : Innovations futures et développement durable
Veille technologique : Évaluation des grandes tendances (atelier modulable pour véhicules
autonomes, peinture multi-oxydes, hologrammes intégrés). Participation à des salons professionnels
(Equip Auto, JEVT) pour rester informé. 
Durabilité : Focus sur l’économie circulaire (réutilisation de pièces, peinture BtoB revalorisée).
Travaux pratiques : calculer le retour sur investissement d’un four de cuisson basse énergie ou d’une
aspirateur à haut rendement. 
Projection financière : Estimation du coût d’un “atelier du futur” (robots, IoT, e-formation). Cas
chiffré : simuler une augmentation de productivité de 10 % grâce à l’automatisation d’une cabine, et
chiffrer le gain net.
Points clés : ce module finalise la formation en mettant l’accent sur la perfection du système et sur la
capacité à être un acteur de progrès dans l’atelier. Les notions d’auto-évaluation (audits, indicateurs) et de
qualité totale (ISO, retours clients) sont essentielles. L’adhésion à l’éco-responsabilité (normes COV,
recyclage) et à l’innovation permanente est centrale pour répondre aux évolutions du secteur. On sort de la
formation en sachant non seulement faire techniquement les réparations, mais aussi piloter et améliorer
en continu l’atelier tout entier, conformément aux référentiels métiers .1', 
'src/assets/images/Optimisation_de_Carrosserie_et_Peinture_-_Partie_8.jpg'),
('MOD005_CPE2', 11, 'Réparer Carrosserie et Peinture – Partie 2', 
'Module 2 : Réparer Carrosserie et Peinture – Partie 2 Objectifs pédagogiques : Approfondir les techniques de réparation des éléments de carrosserie et...', 
'Module 2 : Réparer Carrosserie et Peinture – Partie 2
Objectifs pédagogiques : Approfondir les techniques de réparation des éléments de carrosserie et de
peinture. Les participants sauront restaurer entièrement un panneau ou un ensemble endommagé, depuis
le diagnostic initial jusqu’à la livraison. Ils apprendront à choisir entre réparation ou remplacement, à
réaliser des restaurations de composite (renfort fibre/poliester ou fibre/carbone) et à effectuer des raccords
peinture invisibles (mise en teinte, reprise sur peinture).
Introduction pédagogique : Les interventions de réparation exigent une démarche méthodique :
préparation minutieuse du support, choix judicieux des matériaux (mastics, apprêts, vernis), et application
des techniques éprouvées. Selon le référentiel ANFA, le carrossier-pigmente doit “poser le mastic et
appliquer les apprêts” et “poncer la surface” avec des outils adaptés au matériau . Ce module détaille ces
opérations et insiste sur l’importance des étapes intermédiaires (nettoyage/dégraissage, masquage). La
qualité du résultat final dépend aussi de la gestion de la couleur (colorimétrie) pour un raccord parfait.
Chapitre 1 : Préparation de surface et masticage
Inspection et nettoyage : Détection des zones endommagées, élimination de la rouille (brossage
métaux ferreux, sablage localisé), passage d’un dégraissant industriel selon Fiche Technique
Produits (FTP) du constructeur. 
Détourage et ponçage initial : Ponçage manuel ou machine sur la peinture autour de la zone (ex.
disques Cubitron 120+ sur ponceuse 3M) pour dégager la couche endommagée . Masquage des
parties voisines (pare-brise, garnitures) pour protéger. 
Application du mastic de corps : Choix du type de mastic (universel ou fibré pour enfoncements
profonds) selon l’ampleur de la bosse. Préparation : mélange du mastic avec 2–3 % durcisseur .
Étaler en couche régulière, laisser durcir (15–20 min à 20°C). Application d’un guide-coat pour
évaluer la planéité après polymérisation . 
Ponçage du mastic : Travail à l’abrasif de plus en plus fin (P80 à P220) pour façonner la forme ;
usage d’une ponceuse excentrique pour zones larges, d’un bloc abrasif pour courbes. On souligne
l’intérêt des abrasifs nouvelle génération (Cubitron™) pour gagner en efficacité .
Chapitre 2 : Réparation des composites et plastiques
Choix des réparations : Selon les matériaux (fibre de verre, fibre de carbone, SMC,
thermoplastiques), sélectionner le procédé adapté : replaquage polyester, réparation structural
epoxy-carbone, surmoulage plastique par soudure plastique ou colle plastiguide. 
Techniques d’exécution : Par exemple, sur pare-chocs en polypropylène, utilisation de la soudure
plastique (travail à la cagoule thermique) ou application d’un adhésif polyuréthane spécial pour
plastique. Dans les cas de composites charge carbone, on utilise des tissus et résines époxy haute
résistance (manuel Glasurit de réparation composite). 
Finition avant peinture : Ponçage progressif des zones réparées jusqu’à obtention d’un profil
satisfaisant, soufflette d’air pour dépoussiérer, application d’un primaire d’accroche (ex. primaire
epoxy 2K Glasurit) sur les supports neufs afin d’assurer l’adhérence ultérieure du système peinture.
Chapitre 3 : Application peinture et finitions esthétiques
Préparation de la teinte : Selon les données constructeurs, déterminer la recette colorimétrique
exacte. Utilisation d’un spectrophotomètre calibré pour identifier la teinte d’origine et ajuster les
pigments (respecter les fiches techniques constructeurs). Préparation de la peinture dans les
quantités nécessaires pour la zone à recouvrir . 
Peinture de l’élément : Techniques de pulvérisation : répartition correcte du recouvrement
(innocuité des couches), distance et pression du pistolet. Gestion des transparents/vernis 2K :
séchage entre couches, contrôle de rugosité (éviter marques de pulvérisation). 
Ponçage et polissage final : Après polymérisation totale, micro-ponçage au grain fin (ex. P1500
mouillé) pour éliminer les dernières traces. Finition au compound et polish pour retrouver le brillant
et éliminer les légères imperfections de surface. On met en garde contre les ponçages trop
vigoureux qui pourraient attaquer le vernis.
Comparatif de produits de traitement de surface : Exemple de tableaux comparant plusieurs mastics ou
apprêts. 
Produit (marque/fiche) Type Avantages Inconvénients
Mastic polyester
universel (3M)
2K (durcisseur 2–
3%)
Rapide, facile à poncer Pulverisation solvants
modérée
Mastic époxy fibré 2K, renforcé fibre Forte adhérence, comble
les creux
Temps de durcissement
plus long
Apprêt époxy 2K
(Glasurit) 2K époxy Accroche excellente sur
métaux
Usage en cabine,
séchage long
Apprêt surfacer 1K (3M) 1K polyuréthane Application facile,
séchage rapide
Moins dur que 2K, VOC
plus haut
Étude de cas 2 : Remplacement d’aile avant en aluminium – Démontage de l’aile endommagée, dégarniture et
nettoyage, dégraissage des surfaces de raccord. Découpe au gabarit constructeur, ajustage et formation du
pliage. Collage structural (adhésif bicomposant 3M™ Panel-Bonding) et pointage pour maintenir.
Application d’un anti-gravillon par trempage au bas de caisse. Continuation par mastiquage du joint de
collage, ponçage, puis travail sur la teinte pour raccord parfait (fusion polychromie). Ce cas illustre
l’alternance entre remplacement complet et techniques de finition pour assurer un aspect d’origine.
Points clés : rigueur de la préparation (nettoyage et ponçage) pour assurer durabilité de la réparation.
Sélection du mastic et de l’apprêt en fonction du matériau (fibre de verre, métal). Application méthodique
du guide-coat pour contrôler la surface. Approche réglementaire : respect des recommandations de
sécurité (INRS) pour le ponçage et l’application (ventilation, masques) . Chaque étape (masticage,
ponçage, peinture) doit être validée avant de passer à la suivante pour éviter les reprises coûteuses.', 
'src/assets/images/Réparer_Carrosserie_et_Peinture_-_Partie_2.jpg'),
('MOD006_CPE2', 11, 'Techniques avancées pour Carrosserie et Peinture –PARTIE1', 
'Cours de Carrosserie et Peinture Automobile – Formation CQP (800 h) Ce cours approfondi en carrosserie et peinture automobile s’adresse à des technici...', 
'Cours de Carrosserie et Peinture Automobile –
Formation CQP (800 h)
Ce cours approfondi en carrosserie et peinture automobile s’adresse à des techniciens confirmés
préparant le CQP du secteur. Structuré en huit modules de 100 heures chacun, il couvre les procédés
avancés, la réparation complète, les méthodes d’optimisation, ainsi que les fondamentaux et l’introduction
aux métiers de la carrosserie/peinture. Chaque module comprend des objectifs pédagogiques clairs, une
introduction pédagogique, des contenus découpés en chapitres et sous-chapitres, des illustrations
(schémas, photos), des tableaux comparatifs (matériaux, techniques, produits), des études de cas pratiques,
et des points clés en conclusion. Les contenus s’appuient sur les normes constructeurs, les fiches CQP
(ANFA), les manuels AFPA, les préconisations INRS, les guides 3M, Glasurit, etc., afin de garantir un
enseignement conforme aux standards professionnels .
Module 1 : Techniques avancées pour Carrosserie et Peinture –
Partie 1
Objectifs pédagogiques : Ce module vise à faire maîtriser aux participants les procédés avancés de
réparation et de finition en carrosserie/peinture. Ils pourront diagnostiquer et réparer des dommages
complexes, utiliser des matériaux innovants (aciers haute résistance, aluminium, composites) et appliquer
des peintures haut de gamme. À l’issue du module, les stagiaires sauront, par exemple, effectuer un
redressage au banc de mesure électronique, souder ou coller selon spécifications constructeur, et réaliser
un raccord peinture invisible.
Introduction pédagogique : Dans un contexte où les constructeurs imposent des cahiers des charges
précis pour la sécurité et l’esthétique, les techniques de carrosserie évoluent rapidement (allègement,
nouveaux alliages, plans de moulage). Ce module introduit les principales innovations (cadres
multimateriaux, outils de mesure numérique, procédés de soudage par induction ou laser) et rappelle
l’importance de respecter les procédures établies (consignes constructeurs, normes de réemploi). On insiste
également sur la sécurité et l’environnement : les agents cancérogènes présents dans les opérations de
carrosserie/peinture (découpage, ponçage, application de peinture) sont identifiés par l’INRS, qui
recommande des protections adaptées .
Chapitre 1 : Matériaux et structure du véhicule
Alliages et aciers spécialisés : Propriétés des aciers ultra haute résistance (UHSS) et aluminium
utilisés en carrosserie. Méthodes de reconnaissance (aimants, densité), choix des procédés adaptés
(soudage MIG/MAG, adhésifs structuraux, rivetage aveugle). 
Coques et substructures : Repères de mesure des gabarits constructeur (banc de réparation,
gabarits de contrôle). Les cotes critiques d’un habitacle et comment interpréter la documentation
technique constructeur. 
Principe de réparation constructeur : Lecture d’un manuel de réparation OEM. Importance de
suivre la séquence recommandée (démontage, redressage, remplacement, reconstitution
d’étanchéité) pour ne pas compromettre la structure. 
Chapitre 2 : Procédés de redressage et soudage avancés
Diagnostic des déformations : Utilisation de marquages de référence et de scanners 3D pour
localiser précisément les déformations. Techniques de marouflage pneumatique et induction
thermique (chaud/froid) pour corriger les bosses sans fragiliser la tôle . 
Soudage haute technologie : Soudage par résistance (spot‐welding) pour aciers à haute teneur en
carbone, soudage par induction pour alu, soudage laser pour précision. Comparatif des procédés : 
Méthode de
soudage Avantages Limites
Soudage MIG/MAG Polyvalent sur acier et inox Déformation thermique, masquage
Soudage par
résistance Rapide et contrôle d’énergie Usage limité aux points précis
Collage structural
(époxy)
Pas de déformation thermique,
soudable aux rivets
Temps de durcissement,
préparation exigeante
Soudage à l’arc
(autogène) Contrôle manuel fin sur tôles fines Risque d’apport de matériaux
Réparation multimatériau : Ajustement des techniques pour les éléments composites (fibre de
verre, carbone). Par exemple, renforcement epoxy ou remplacement complet de pièces plastiques.
On compare les mastics polyester et epoxy en soulignant leurs utilisations spécifiques (durcisseur 2–
3 % pour mastic 3M, temps de prise et ponçage) . 
Chapitre 3 : Finition avancée et traitement de surface
Équilibrage des assemblages : Contrôle final de la planéité des panneaux assemblés. Utilisation de
guide-coat (couche-guide sèche) pour mettre en évidence les irrégularités avant apprêt . 
Application de l’apprêt et du vernis : Choix des produits haut de gamme (ex. vernis 2K
polyuréthane premium), réglage de gun HVLP/LP pour une atomisation optimale. L’emploi d’un
vernis “premium” 3M peut réduire la quantité d’apprêt nécessaire tout en assurant un fini lisse .
On étudie aussi l’apport des nouvelles gammes Glasurit 100-Line (base aqueuse très basse COV)
pour des performances accrues . 
Techniques de ponçage post-couche : Ponceuses excentriques, blocs abrasifs multi-grains. On
compare les abrasifs Grain P80 vs P180 selon l’étape (façonnage initial ou finition fine) . Tableau
comparatif : 
Abrasif / Grain Usage Remarques
P80–P180 (feuilles) Ponçage grossier de mastic Enlève rapidement matière
P240–P400 (papier mouillé) Affinage avant peinture Élimine rayures sans attaquer
Abrasif / Grain Usage Remarques
Disque Cubitron 3M P120+ Ponçage rapide avec machine Rendement élevé, déchets minimes
Illustration : Figure : Plan de carrosserie type montrant les principales lignes de mesure et gabarits constructeur
(source archive technique). Ce schéma aide à comprendre la structure de référence d’un véhicule et
l’emplacement des points de mesure critiques en réparation carrosserie.
Étude de cas 1 : Collision avant complexe – Diagnostic d’une détérioration frontale (capot, ailes, structure
bouclier). Étapes : démontage des pare‐chocs, mesure sur banc (écart de 15 mm sur longeron mesuré),
redressage à froid, préparation de la tôle (ponçage et anti‐corrosion), soudage de réparation spot‐weld,
rescellage des joints, apprêt et peinture par zone. Ce cas illustre la démarche d’analyse selon le plan
constructeur et les contrôles qualité intermédiaires.
Points clés : maîtrise des procédés structurels (soudage, collage) et des matériaux (hautes résistances,
composites) indispensables pour les réparations avancées. Connaissance approfondie de la séquence
constructeur et des outils de mesure (banc, scanners). Finition rigoureuse : application correcte du mastic,
usage du guide-coat pour détecter les défauts et ponçage adapté des couches. Respect des consignes
sécuritaires et environnementales (gestion des COV, port d’EPI)', 
'src/assets/images/Techniques_avancées_pour_Carrosserie_et_Peinture_-PARTIE1.jpg'),
('MOD007_CPE2', 11, 'Techniques avancées pour Carrosserie et Peinture –PARTIE5', 
'Module 5 : Techniques avancées pour Carrosserie et Peinture – Partie 5 Objectifs pédagogiques : Approfondir les techniques avancées spécifiques à la p...', 
'Module 5 : Techniques avancées pour Carrosserie et Peinture –
Partie 5
Objectifs pédagogiques : Approfondir les techniques avancées spécifiques à la peinture automobile et aux
procédés de finition raffinée. Les techniciens étudieront les dernières innovations en colorimétrie, en
application de vernis haut de gamme et en équipements. Ils apprendront à utiliser des outils numériques
pour la correspondance colorimétrique et à manipuler les nouvelles formules (peintures base aqueuse,
additifs nanotechnologiques). À la fin, ils seront capables de réaliser des finitions “show-car” et de respecter
les procédures sophistiquées des constructeurs de luxe.
Introduction pédagogique : Le secteur de la peinture automobile est en mutation (pression réglementaire
COV, performance). Les constructeurs exigent désormais des finitions irréprochables, adaptées à des
matériaux variés (plastique, fibre de carbone). Ce module met en lumière les produits et équipements de
pointe (pistolets mini HVLP pour détails, systèmes de mélange automatique de pigments, cameras spectro)
et les méthodes de contrôle (méthodes scientifiques de mesure du “Delta E” de différence de couleur). On
aborde également la politique qualité des grands teinteurs (certification ISO).
Chapitre 1 : Colorimétrie et gestion de teintes
Principes de colorimétrie : Mesure de la couleur à l’aide de spectrophotomètre. Calcul de la
différence de couleur ÄE et ajustement. Les stagiaires apprennent à travailler avec des logiciels de
formulation (ex. concept 6 de Glasurit) et à interpréter les fiches constructeurs (nuanciers OEM,
codage MICA/uni). 
Formulation et mélange : Préparation en cabine de la peinture de base (exemple : mélange de
pigments, liants et solvants selon densité prescrite). Contrôle qualité de la teinte par échantillon sur
panneau d’essai. On rappelle l’importance de la quantité de peinture (soigner un multiple de
volumes pour 2K). 
Tableau comparatif (exemple) des systèmes de teintes : 
Système peinture Support prévu Points forts Points faibles
Base/Laque 2K
(polyuréthane)
Métaux, plastiques
renforcés
Finition très brillante,
durcisseur par chaleur
Coût élevé,
préparation stricte
Base/Laque 1K
(acrylique) Petit vernis rapide Application facile, séchage
rapide air
Moins résistante
aux UV
2K Acrylique à l’eau
(couche de base)
Peinture
conformes COV
Très faible émission de COV Sensibilité à la
sécheresse
Guéridon (peinture unie
mono-couche)
Réparations
localisées
Évite couche de vernis
supplémentaire
Durabilité
inférieure au 2K
Chapitre 2 : Équipements de pulvérisation avancés
Pistolets et cabines évoluées : Présentation des pistolets HVLP (High Volume Low Pressure)
dernière génération, offrant plus d’efficacité (moins de brouillard, plus d’accroche). Réglages fins :
choix du numéro de buse, pression et distance optimale. Illustration d’un réglage de pistolet suivant
la viscosité du produit (test cup). 
Techniques de pulvérisation : Méthode en éventail croisé pour couches uniformes, recouvrement
de 50 % à chaque passe. Gestion de la température et de l’hygrométrie en cabine (capteur et V.P.
pour éviter les coulures ou mauvaise polymérisation). 
Innovations : Systèmes de mélange dynamique (ex. 3M Accuspray) qui maintiennent la peinture en
suspension, garantissant une couleur homogène jusqu’à épuisement. Systèmes de codage RFID sur
les flacons pour traçabilité en atelier. 
Chapitre 3 : Finitions haut de gamme et effets spéciaux
Vernis multi-couches et effets : Application de vernis bicomposants à fort lustre et faible taux
d’amincissement. Création d’effets spéciaux (nacré, métallisé, perle). Par exemple, utilisation de
vernis à effet « bicouche » (type 3M™ Flitz pour carrosseries de compétition). 
Optiques et pièces chromées : Techniques de peinture pour éléments chromés (pistolets HVLP
spécialisés, vernis unidose). Réparation d’optiques : traitement du polycarbonate (ponçage et
lustrage) ou remplacement suivant norme constructeur. 
Polissage et lustrage extrêmes : Utilisation de polish abrasifs avancés (ex. 3M Perfect-It) et de
polisseuses orbitales pour obtenir un brillant miroir. Mesure du niveau de brillance (gloss metre).
Mise en garde : éviter le tréfilage de couleur sur les rebords.
Étude de cas 5 : Projet peinture prestige – Rénovation complète d’une voiture ancienne de collection.
Objectif : restaurer la teinte d’origine (code peinture Jame or RN811). Procédure : relevé spectro, formulation
sur mesure en procédant par essais successifs sur panneaux, application d’un vernis 2K super brillant
Glasurit, finition au compound. Le cas illustre la précision exigée pour les teintes rares et la patience
nécessaire pour polir le vernis sans laquer.
Points clés : la peinture automobile de haut niveau exige une maîtrise de la colorimétrie (utilisation
d’instruments pour garantir l’exactitude des teintes). Les équipements doivent être régulièrement calibrés
(pistolets, cabines). Les produits 2K polyuréthane restent la référence pour la durabilité et la qualité de
brillance. Enfin, le contrôle de l’environnement (température, ventilation) et une bonne habitude (masquage
impeccable) sont indispensables pour éviter les défauts (poussières, coulures) sur les finitions finales.', 
'src/assets/images/Techniques_avancées_pour_Carrosserie_et_Peinture_-PARTIE5.jpg'),
('MOD008_CPE2', 11, 'Techniques avancées pour Carrosserie et Peinture –part7', 
'Module 7 : Techniques avancées pour Carrosserie et Peinture – Partie 7 Objectifs pédagogiques : Explorer les procédés de carrosserie et peinture les p...', 
'Module 7 : Techniques avancées pour Carrosserie et Peinture –
Partie 7
Objectifs pédagogiques : Explorer les procédés de carrosserie et peinture les plus techniques, notamment
ceux liés aux véhicules modernes et spécialisations (véhicules électriques/hybrides, carrosseries
composites, design custom). Les stagiaires apprendront, par exemple, l’usage de la soudure par friction malaxage (FSW), le redressage au mag et aux ultrasons, ainsi que la peinture de matériaux non classiques
(plastiques 3D, chrome). Ils seront également sensibilisés aux nouvelles méthodologies (réalité virtuelle
pour la formation, peinture robotisée).
Introduction pédagogique : Ce module fait suite aux précédents et se concentre sur l’état de l’art. Il inclut
des sujets de pointe : la carrosserie des véhicules légers (aluminium, fibres) et la finition esthétique extrême
(héritage, tuning). On couvre des tendances comme le « detailing » intensif, la réparation 100% OEM sur
modules pyrolytics, et des outils innovants (simulation de défauts en RA pour formation). On évoque aussi
la peinture à l’aide de robots collaboratifs et la peinture hydrophobe (auto-nettoyante) pour véhicules de
luxe.
Chapitre 1 : Collage et assemblage hautes performances
Adhésifs structuraux avancés : Mise en pratique du collage époxy 3M Panel-Bonding (cf. [44]). On
apprend à déposer une couche régulière (microbilles de verre intégrées pour assurer l’épaisseur
uniforme ) et à utiliser la presse ou le rivetage mixte pour renforcer l’assemblage. 
Réparation de composites CMC (Composite Matrices Céramiques) : Introduction aux revêtements
céramiques et aux réparations de structures de luxe (p.ex. Porsche, BMW). Usage d’enduits
spécifiques (mastic céramique) et de four de polymérisation à induction. 
Cadres et superstructures électriques : Procédures particulières pour véhicules électriques (e.g.
Tesla, Renault ZOE) : accessibilité de la structure en aluminium (doublage d’acier pour soudures),
conseils du constructeur pour la dépose de composants haute tension.
Chapitre 2 : Finitions et traitements spéciaux
Peinture multi-couches complexes : Maîtrise des laques tricouches (une laque de base opaque +
une laque de finition transparente). Emploi de vernis “durci” aux infrarouges pour accélérer le
séchage dans un cycle intensif (4 min IR). 
Techniques de polissage extrême : Polisseuses orbitales synchronisées pour éviter les rémanences
(cf. finitions concessionnaires). Utilisation de polish diamantés pour supprimer tout voile. On étudie
la microscopie optique du film pour mieux comprendre l’élimination des micro-rayures. 
Matériaux innovants : Peintures électrochromes (transformation de teinte sous courant), peintures
autonettoyantes (superhydrophobes). Impact sur le process (ex. essuyage spécifique en cabine).
Chapitre 3 : Digitalisation et contrôle avancé
Formation immersive : Introduction aux simulateurs de ponçage/peinture en réalité virtuelle
(exercices sans produits, analytiques de mouvement). Utilisation de lunettes à réalité augmentée
pour surimposer les consignes constructeur en atelier. 
Inspection automatisée : Exemple de système de vision robotisé pour détecter lissé de peinture
(caméras à haute résolution). Outils de mesure connectés (app smartphone mesurant l’épaisseur de
vernis ou le contraste de couleur en diff. lumière). 
Éco-innovation : Peinture par électrophorèse (dip painting) sur carrosseries en kit, analyse de cycle
de vie écologique des produits (bilan CO₂). 
Étude de cas 7 : Customisation et detailing avancé – Projet de personnalisation d’un véhicule haut de
gamme : application d’une peinture mat spécifique (paraffine anti-rayure), habillage carbone sur éléments
de carrosserie. Utilisation d’un polissage mat/un-poli (éponge latérale) et contrôle final au gloss metre (cible
de 8–12 GU pour effet satin). Ce cas démontre la précision maximale attendue dans des interventions non
standards, ainsi que l’aspect créatif du métier.
Points clés : ce module introduit les technologies émergentes (collage structural sur aluminium, peinture
hydrophobe, VR). L’essentiel reste l’application stricte des méthodes (ex. épaisseur de colle fixée, respect du
cycle de durcissement). La qualité est contrôlée par des moyens sophistiqués (mesure de teinte, gloss
metre). Enfin, la conscience éco doit suivre : par exemple, on compare l’empreinte environnementale d’une
laque UV versus l’émission COV d’une peinture traditionnelle.', 
'src/assets/images/Techniques_avancées_pour_Carrosserie_et_Peinture_-part7.jpg'),
('MOD001_STR', 12, 'Introduction à Systèmes de-PART2', 
'Module 2 – Introduction à Systèmes de Transmission Titre : Architecture générale et fonctionnement global 2.1 Composition globale du système Un systèm...', 
'Module 2 – Introduction à Systèmes de
Transmission
Titre : Architecture générale et fonctionnement global
2.1 Composition globale du système
Un système de transmission comprend : embrayage, boîte de vitesses, arbre de
transmission, différentiel, et demi-arbres.
2.2 Principe de transmission du couple moteur aux roues
La transmission transforme la rotation rapide du moteur en mouvement plus lent mais plus
puissant aux roues.
2.3 Synchronisation et démultiplication
Chaque vitesse modifie le rapport entre le nombre de tours moteur et celui des roues,
adaptant la puissance et la consommation.
2.4 Interfaces avec moteur et roues
● L’embrayage relie le moteur à la boîte.
● L’arbre relie la boîte aux roues via le différentiel.', 
'src/assets/images/Introduction_à_Systèmes_de-PART2.jpg'),
('MOD002_STR', 12, 'Module 1 – Les bases des Systèmes', 
'Module 1 – Les bases des Systèmes de Transmission Titre : Introduction fondamentale aux systèmes de transmission 1.1 Définition d’un système de transm...', 
'Module 1 – Les bases des Systèmes de
Transmission
Titre : Introduction fondamentale aux systèmes de transmission
1.1 Définition d’un système de transmission
Le système de transmission est un ensemble de composants mécaniques permettant de
transmettre la puissance produite par le moteur aux roues motrices d''un véhicule. Il convertit
l''énergie du moteur en mouvement utile.
1.2 Rôle dans un véhicule ou un système mécanique
Il permet d''adapter la puissance et la vitesse du moteur aux besoins du véhicule
(accélération, montée, démarrage, etc.) en modulant le couple et la vitesse.
1.3 Types de transmissions : manuelle, automatique, CVT
● Transmission manuelle : l’utilisateur change les vitesses manuellement.
● Transmission automatique : les vitesses sont gérées automatiquement par un
système hydraulique/électronique.
● CVT (Continuously Variable Transmission) : transmission à variation continue,
sans vitesses fixes.
1.4 Terminologie de base
● Embrayage : connecte/déconnecte le moteur de la boîte de vitesses.
● Boîte de vitesses : adapte le couple moteur.
● Arbre de transmission : transmet le mouvement vers les roues.', 
'src/assets/images/Module_1_-_Les_bases_des_Systèmes.jpg'),
('MOD003_STR', 12, 'Module 3 – Comprendre Systèmes de Transmission', 
'Module 3 – Comprendre Systèmes de Transmission - Partie 1 Titre : Boîte de vitesses et démultiplication 3.1 Principe de la boîte manuelle Elle contien...', 
'Module 3 – Comprendre Systèmes de Transmission
- Partie 1
Titre : Boîte de vitesses et démultiplication
3.1 Principe de la boîte manuelle
Elle contient des engrenages de tailles différentes pour modifier la vitesse de sortie.
3.2 Fonctionnement des engrenages
Les engrenages tournent ensemble pour transmettre la puissance en modifiant la vitesse et
le couple.
3.3 Arbres primaire, secondaire et intermédiaire
● Primaire : reçoit la puissance du moteur.
● Secondaire : transmet à l’arbre de transmission.
● Intermédiaire : transmet entre les deux.
3.4 Passage de vitesses
Il se fait par déplacement de pignons et synchroniseurs qui s''enclenchent les uns aux
autres.', 
'src/assets/images/Module_3_-_Comprendre_Systèmes_de_Transmission.jpg'),
('MOD004_STR', 12, 'Module 4 – Diagnostiquer Systèmes de', 
'Module 4 – Diagnostiquer Systèmes de Transmission Titre : Identifier les dysfonctionnements courants 4.1 Symptômes de défaillance ● Bruits de craqueme...', 
'Module 4 – Diagnostiquer Systèmes de
Transmission
Titre : Identifier les dysfonctionnements courants
4.1 Symptômes de défaillance
● Bruits de craquement
● Difficulté de passage de vitesse
● A-coups ou glissement
4.2 Outils de diagnostic
● Testeurs OBD
● Multimètres
● Inspection visuelle (huile, câbles, fuites)
4.3 Méthodes d’inspection
Inspection à l’arrêt et en fonctionnement, vérification des niveaux et états des composants.
4.4 Lecture de codes d’erreur
Utilisation de valises de diagnostic pour boîtes automatiques modernes (codes P0700, etc.)', 
'src/assets/images/Module_4_-_Diagnostiquer_Systèmes_de.jpg'),
('MOD005_STR', 12, 'Module 5 – Comprendre Systèmes de Transmission', 
'Module 5 – Comprendre Systèmes de Transmission - Partie 2 Titre : Transmission automatique et hydraulique 5.1 Fonctionnement de la boîte automatique U...', 
'Module 5 – Comprendre Systèmes de Transmission
- Partie 2
Titre : Transmission automatique et hydraulique
5.1 Fonctionnement de la boîte automatique
Utilise un système d’embrayages multiples et un convertisseur de couple.
5.2 Convertisseur de couple
Remplace l’embrayage classique et permet la transmission progressive de puissance.
5.3 Systèmes de commande
Contrôlés par des ECU (unités électroniques), gèrent le moment du changement de vitesse.
5.4 Gestion adaptative
Certains systèmes apprennent le style de conduite pour optimiser les changements.', 
'src/assets/images/Module_5_-_Comprendre_Systèmes_de_Transmission.jpg'),
('MOD006_STR', 12, 'Module 6 – Comprendre Systèmes de Transmission', 
'Module 6 – Comprendre Systèmes de Transmission - Partie 3 Titre : Transmissions spéciales (CVT, doubles embrayages) 6.1 Transmission CVT Sans engrenag...', 
'Module 6 – Comprendre Systèmes de Transmission
- Partie 3
Titre : Transmissions spéciales (CVT, doubles embrayages)
6.1 Transmission CVT
Sans engrenages fixes, fonctionne avec des poulies et courroie pour variation continue.
6.2 Boîte à double embrayage
Deux embrayages gèrent les rapports pairs/impairs pour des changements très rapides.
6.3 Technologies modernes
Intègration dans les véhicules hybrides et électriques avec des logiciels de commande.
6.4 Efficacité énergétique
Ces systèmes réduisent la consommation et augmentent le confort de conduite', 
'src/assets/images/Module_6_-_Comprendre_Systèmes_de_Transmission.jpg'),
('MOD007_STR', 12, 'Module 7 – Réparer Systèmes de Transmission', 
'Module 7 – Réparer Systèmes de Transmission Titre : Interventions courantes et techniques de réparation 7.1 Remplacement d’un embrayage Procédure pas...', 
'Module 7 – Réparer Systèmes de Transmission
Titre : Interventions courantes et techniques de réparation
7.1 Remplacement d’un embrayage
Procédure pas à pas avec sécurité et outils spécifiques (centrage disque, etc.).
7.2 Réfection d’une boîte de vitesses
Démontage, inspection des pignons, roulements, synchroniseurs.
7.3 Changement d’huile de transmission
Fréquence recommandée, types d’huile, procédure de vidange.
7.4 Sécurité lors des réparations
Port des EPI, levage du véhicule en toute sécurité, déconnexion de la batterie', 
'src/assets/images/Module_7_-_Réparer_Systèmes_de_Transmission.jpg'),
('MOD008_STR', 12, 'Module 8 – Maintenance de Systèmes de_transmission', 
'Module 8 – Maintenance de Systèmes de Transmission Titre : Prévenir l’usure et prolonger la durée de vie 8.1 Plan de maintenance préventive Calendrier...', 
'Module 8 – Maintenance de Systèmes de
Transmission
Titre : Prévenir l’usure et prolonger la durée de vie
8.1 Plan de maintenance préventive
Calendrier des interventions selon kilométrage et type de transmission.
8.2 Lubrification et fluides
Types d’huiles, fréquence de remplacement, vérification du niveau.
8.3 Contrôle périodique des joints et câbles
Inspection des fuites, usures et tensions anormales.
8.4 Logiciels de suivi
Utilisation d’outils numériques pour les flottes ou les garages professionnels.', 
'src/assets/images/Module_8_-_Maintenance_de_Systèmes_de_transmission.jpg');

  
  


-- Inserting Quizzes
INSERT INTO quizzes (quiz_id, module_id, question_text, options, correct_answer) VALUES
  (1, 'MOD001_HYBRIDE1', 'Question 1 sur les véhicules hybrides?', 
    ARRAY['Option A pour 1', 'Option B pour 1', 'Option C pour 1', 'Option D pour 1'], 
    'Option C pour 1'),
  (2, 'MOD003_EEMB2', 'Question 2 sur l''électronique embarquée?', 
    ARRAY['Option A pour 2', 'Option B pour 2', 'Option C pour 2', 'Option D pour 2'], 
    'Option C pour 2'),
  (3, 'MOD001_CPE2', 'Question 3 sur la carrosserie et peinture?', 
    ARRAY['Option A pour 3', 'Option B pour 3', 'Option C pour 3', 'Option D pour 3'], 
    'Option A pour 3');

 
  
-- Inserting User Module Progress --
INSERT INTO user_module_progress (user_id, module_id, completed, completion_date) VALUES
  (1, 'MOD001_CLIM1', True, NOW()),
  (1,'MOD002_CLIM1', True, NOW()),
  (1, 'MOD003_CLIM1', True, NOW());


-- Inserting Quiz Results --
INSERT INTO quiz_results (user_id, module_id, score, total_questions, attempted_at) VALUES
  (1, 'MOD001_CLIM1', 1, 6, NOW()),
  (1, 'MOD002_CLIM1', 0, 6, NOW()),
  (1, 'MOD003_CLIM1', 1, 6, NOW());