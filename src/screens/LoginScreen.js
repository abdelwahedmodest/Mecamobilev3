import React, { useState } from 'react';
import { Image, StyleSheet, View, KeyboardAvoidingView, Platform, ScrollView } from 'react-native';
import { Button, Text, TextInput, Surface, ActivityIndicator, Snackbar } from 'react-native-paper';
import colors from '../constants/colors';
import { useAuth } from '../context/AuthContext';
import supabase from '../services/supabaseClient'; // Add this import
import AsyncStorage from '@react-native-async-storage/async-storage';

const LoginScreen = ({ navigation }) => {
  const { login } = useAuth();
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState('');
  const [showPassword, setShowPassword] = useState(false);
  const [snackbarVisible, setSnackbarVisible] = useState(false);

  const handleLogin = async () => {
    // Validate inputs
    const trimmedEmail = email.trim();
    const trimmedPassword = password.trim();

    if (!trimmedEmail || !trimmedPassword) {
      setError('Veuillez remplir tous les champs');
      setSnackbarVisible(true);
      return;
    }

    setLoading(true);
    setError('');
    
    try {
      // Ensure email and password are sent as string values
      const { data, error } = await supabase.auth.signInWithPassword({
        email: String(trimmedEmail),
        password: String(trimmedPassword)
      });

      if (error) {
        throw error;
      }

      if (data?.user) {
        console.log('Connexion réussie:', data.user);
        // Store the session
        const session = data.session;
        await AsyncStorage.setItem('supabase.session', JSON.stringify(session));
        
        await login(data.user);
        navigation.replace('Main');
      }
    } catch (error) {
      console.error('Login error:', error.message);
      setError(
        error.message.includes('Invalid login credentials')
          ? 'Email ou mot de passe incorrect'
          : 'Erreur lors de la connexion'
      );
      setSnackbarVisible(true);
    } finally {
      setLoading(false);
    }
  };

  return (
    <KeyboardAvoidingView 
      behavior={Platform.OS === 'ios' ? 'padding' : 'height'}
      style={styles.container}
    >
      <ScrollView 
        contentContainerStyle={styles.scrollContent}
        keyboardShouldPersistTaps="handled"
      >
        <Surface style={styles.card}>
          <View style={styles.logoContainer}>
            <Image 
              source={require('../assets/logo.png')}
              style={styles.logo}
              resizeMode="contain"
            />
          </View>

          <View style={styles.formContainer}>
            <Text style={styles.welcomeText}>Bienvenue sur Mecamobile</Text>
            
            <TextInput
              label="Email"
              value={email}
              onChangeText={setEmail}
              mode="outlined"
              keyboardType="email-address"
              autoCapitalize="none"
              style={styles.input}
              left={<TextInput.Icon icon="email" />}
              theme={{ roundness: 10 }}
            />

            <TextInput
              label="Mot de passe"
              value={password}
              onChangeText={setPassword}
              mode="outlined"
              secureTextEntry={!showPassword}
              style={styles.input}
              left={<TextInput.Icon icon="lock" />}
              right={
                <TextInput.Icon
                  icon={showPassword ? 'eye-off' : 'eye'}
                  onPress={() => setShowPassword(!showPassword)}
                />
              }
              theme={{ roundness: 10 }}
            />

            <Button
              mode="contained"
              onPress={handleLogin}
              loading={loading}
              disabled={loading}
              style={styles.button}
              contentStyle={styles.buttonContent}
            >
              {loading ? 'Connexion en cours...' : 'Se connecter'}
            </Button>

            <Button
              mode="text"
              onPress={() => navigation.navigate('ForgotPassword')}
              style={styles.link}
            >
              Mot de passe oublié ?
            </Button>

            <View style={styles.divider}>
              <View style={styles.dividerLine} />
              <Text style={styles.dividerText}>OU</Text>
              <View style={styles.dividerLine} />
            </View>

            <Button
              mode="outlined"
              onPress={() => navigation.navigate('Register')}
              style={styles.registerButton}
              contentStyle={styles.buttonContent}
              icon="account-plus"
            >
              Créer un compte
            </Button>
          </View>
        </Surface>
      </ScrollView>
      
      <Snackbar
        visible={snackbarVisible}
        onDismiss={() => setSnackbarVisible(false)}
        duration={3000}
        action={{
          label: 'OK',
          onPress: () => setSnackbarVisible(false),
        }}
      >
        {error}
      </Snackbar>
    </KeyboardAvoidingView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: colors.background,
  },
  scrollContent: {
    flexGrow: 1,
    justifyContent: 'center',
    padding: 16,
  },
  card: {
    padding: 16,
    borderRadius: 16,
    elevation: 4,
    backgroundColor: colors.surface,
  },
  logoContainer: {
    alignItems: 'center',
    marginTop: 20,
    marginBottom: 20,
  },
  logo: {
    width: 180,
    height: 90,
  },
  welcomeText: {
    fontSize: 22,
    fontWeight: 'bold',
    color: colors.primary,
    textAlign: 'center',
    marginBottom: 20,
  },
  formContainer: {
    padding: 16,
  },
  input: {
    marginBottom: 16,
    backgroundColor: colors.surface,
  },
  button: {
    marginTop: 16,
    borderRadius: 10,
    elevation: 2,
  },
  buttonContent: {
    paddingVertical: 8,
  },
  link: {
    marginTop: 16,
  },
  divider: {
    flexDirection: 'row',
    alignItems: 'center',
    marginVertical: 20,
  },
  dividerLine: {
    flex: 1,
    height: 1,
    backgroundColor: colors.divider,
  },
  dividerText: {
    marginHorizontal: 10,
    color: colors.lightText,
  },
  registerButton: {
    borderRadius: 10,
    borderColor: colors.primary,
    borderWidth: 1,
  },
});

export default LoginScreen;
