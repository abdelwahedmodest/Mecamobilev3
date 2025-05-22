# Guide d'intégration de Supabase dans Mecamobilev3

## Introduction
Ce document explique comment Supabase a été intégré au projet Mecamobilev3 pour gérer les utilisateurs, les cours, les modules, les badges et les progressions. L'intégration comprend l'authentification des utilisateurs et la sécurisation des données via des règles RLS (Row Level Security).

## Structure des fichiers

1. **supabase_tables.sql** - Script SQL pour créer toutes les tables dans Supabase
2. **supabase_rls.sql** - Script SQL pour configurer les règles de sécurité RLS
3. **supabase_sample_data.sql** - Script SQL pour insérer des données d'exemple
4. **src/services/supabaseClient.js** - Configuration du client Supabase
5. **src/services/supabaseService.js** - Service pour interagir avec Supabase
6. **src/context/AuthContext.js** - Contexte d'authentification mis à jour pour utiliser Supabase

## Configuration de Supabase

### 1. Création des tables

Exécutez le script `supabase_tables.sql` dans l'interface SQL de Supabase pour créer toutes les tables nécessaires :
- Users
- Courses
- Modules
- Badges
- UserCourseEnrollment
- UserBadges
- UserModuleProgress

### 2. Configuration de l'authentification

Dans le dashboard Supabase :
1. Allez dans "Authentication" > "Providers"
2. Activez "Email" avec l'option "Email and Password"
3. Configurez les options de confirmation d'email selon vos besoins

### 3. Application des règles RLS

Exécutez le script `supabase_rls.sql` dans l'interface SQL de Supabase pour configurer les règles de sécurité par ligne (RLS) pour toutes les tables.

### 4. Données d'exemple (optionnel)

Pour tester l'application, vous pouvez exécuter le script `supabase_sample_data.sql` qui insère des données d'exemple dans les tables.

## Intégration dans le code

### 1. Installation des dépendances

```bash
npm install @supabase/supabase-js
```

### 2. Configuration du client Supabase

Le fichier `src/services/supabaseClient.js` contient la configuration du client Supabase avec l'URL et la clé d'API anonyme.

### 3. Service Supabase

Le fichier `src/services/supabaseService.js` fournit toutes les fonctions nécessaires pour interagir avec Supabase :
- Authentification (inscription, connexion, déconnexion)
- Gestion des utilisateurs
- Gestion des cours et modules
- Gestion des badges
- Suivi de la progression

### 4. Contexte d'authentification

Le fichier `src/context/AuthContext.js` a été mis à jour pour utiliser Supabase Auth au lieu du système de mock précédent.

## Utilisation

### Authentification

```javascript
import { useAuth } from '../context/AuthContext';

// Dans un composant React
const { login, register, logout, isAuthenticated, user, profile } = useAuth();

// Connexion
const handleLogin = async () => {
  try {
    await login(email, password);
    // Redirection après connexion réussie
  } catch (error) {
    // Gestion des erreurs
  }
};

// Inscription
const handleRegister = async () => {
  try {
    const userData = { name: 'Nom Utilisateur', phone: '0123456789' };
    await register(email, password, userData);
    // Redirection après inscription réussie
  } catch (error) {
    // Gestion des erreurs
  }
};

// Déconnexion
const handleLogout = () => {
  logout(navigation);
};
```

### Accès aux données

```javascript
import supabaseService from '../services/supabaseService';

// Récupérer tous les cours
const fetchCourses = async () => {
  try {
    const courses = await supabaseService.getAllCourses();
    // Utiliser les données des cours
  } catch (error) {
    // Gestion des erreurs
  }
};

// Inscrire un utilisateur à un cours
const enrollInCourse = async (courseId) => {
  try {
    await supabaseService.enrollUserInCourse(user.id, courseId);
    // Afficher confirmation
  } catch (error) {
    // Gestion des erreurs
  }
};

// Mettre à jour la progression d'un module
const completeModule = async (moduleId) => {
  try {
    await supabaseService.updateModuleProgress(user.id, moduleId, true);
    // Mettre à jour l'interface
  } catch (error) {
    // Gestion des erreurs
  }
};
```

## Sécurité

Les règles RLS configurées garantissent que :
- Les utilisateurs ne peuvent voir et modifier que leurs propres données
- Tous les utilisateurs authentifiés peuvent voir les cours, modules et badges
- Seuls les administrateurs peuvent créer/modifier les cours, modules et badges

## Dépannage

Si vous rencontrez des problèmes :
1. Vérifiez que les identifiants Supabase sont corrects dans `supabaseClient.js`
2. Assurez-vous que toutes les tables ont été créées correctement
3. Vérifiez que les règles RLS sont bien appliquées
4. Consultez les journaux d'erreur dans la console Supabase
