// Importation des dépendances nécessaires
import React, { useState } from 'react'; // Import de React et du hook useState pour gérer l'état
import { StyleSheet, View } from 'react-native'; // Composants de base de React Native
import { Button, Text, TextInput } from 'react-native-paper'; // Composants UI de React Native Paper
import colors from '../constants/colors'; // Import des couleurs définies dans l'application
import supabase from '../services/supabaseClient'; // Import the supabase client

// Définition du composant RegisterScreen qui reçoit la prop navigation
const RegisterScreen = ({ navigation }) => {
  // Déclaration des états (variables) avec useState
  const [name, setName] = useState(''); // État pour le nom complet
  const [email, setEmail] = useState(''); // État pour l'email
  const [password, setPassword] = useState(''); // État pour le mot de passe
  const [confirmPassword, setConfirmPassword] = useState(''); // État pour la confirmation du mot de passe
  const [loading, setLoading] = useState(false); // État pour gérer le chargement
  const [error, setError] = useState(''); // État pour gérer les messages d'erreur
  const [showPassword, setShowPassword] = useState(false); // État pour afficher/masquer le mot de passe

  // Fonction de gestion de l'inscription
  const handleRegister = async () => {
    // Validation
    if (!name || !email || !password || !confirmPassword) {
      setError('Veuillez remplir tous les champs');
      return;
    }

    if (password !== confirmPassword) {
      setError('Les mots de passe ne correspondent pas');
      return;
    }

    setLoading(true);
    setError('');

    try {
      // Inscription avec Supabase
      const { data, error } = await supabase.auth.signUp({
        email: email,
        password: password,
        options: {
          data: {
            full_name: name,
          }
        }
      });

      if (error) throw error;

      if (data?.user) {
        alert('Vérifiez votre email pour confirmer votre compte');
        navigation.navigate('Login');
      }

    } catch (err) {
      setError(err.message || 'Une erreur est survenue lors de l\'inscription');
      console.error('Registration error:', err);
    } finally {
      setLoading(false);
    }
  };

  // Rendu de l'interface utilisateur
  return (
    <View style={styles.container}>
      {/* Champ de saisie pour le nom complet */}
      <TextInput
        label="Nom complet"
        value={name}
        onChangeText={setName}
        mode="outlined"
        style={styles.input}
      />

      {/* Champ de saisie pour l'email */}
      <TextInput
        label="Email"
        value={email}
        onChangeText={setEmail}
        mode="outlined"
        keyboardType="email-address"
        autoCapitalize="none"
        style={styles.input}
      />

      {/* Champ de saisie pour le mot de passe */}
      <TextInput
        label="Mot de passe"
        value={password}
        onChangeText={setPassword}
        mode="outlined"
        secureTextEntry={!showPassword}
        right={
          <TextInput.Icon
            icon={showPassword ? 'eye-off' : 'eye'}
            onPress={() => setShowPassword(!showPassword)}
          />
        }
        style={styles.input}
      />

      {/* Champ de saisie pour la confirmation du mot de passe */}
      <TextInput
        label="Confirmer le mot de passe"
        value={confirmPassword}
        onChangeText={setConfirmPassword}
        mode="outlined"
        secureTextEntry={!showPassword}
        style={styles.input}
      />

      {/* Affichage conditionnel du message d'erreur */}
      {error ? <Text style={styles.errorText}>{error}</Text> : null}

      {/* Bouton d'inscription */}
      <Button
        mode="contained"
        onPress={handleRegister}
        loading={loading}
        disabled={loading}
        style={styles.button}
      >
        Créer un compte
      </Button>

      {/* Lien vers la page de connexion */}
      <Button
        mode="text"
        onPress={() => navigation.navigate('Login')}
        style={styles.link}
      >
        Déjà un compte ? Se connecter
      </Button>
    </View>
  );
};

// Définition des styles
const styles = StyleSheet.create({
  container: {
    flex: 1, // Prend tout l'espace disponible
    padding: 16, // Espacement interne de 16
    backgroundColor: colors.background, // Couleur de fond
  },
  input: {
    marginBottom: 16, // Marge en bas de 16
  },
  button: {
    marginTop: 8, // Marge en haut de 8
  },
  link: {
    marginTop: 16, // Marge en haut de 16
  },
  errorText: {
    color: colors.error, // Couleur du texte d'erreur
    textAlign: 'center', // Centrage du texte
    marginBottom: 16, // Marge en bas de 16
  },
});

// Export du composant pour pouvoir l'utiliser ailleurs
export default RegisterScreen;