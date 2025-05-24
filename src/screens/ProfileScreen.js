import React, { useState, useContext, useEffect } from 'react';
import {
  Alert,
  ScrollView,
  StyleSheet,
  View,
  KeyboardAvoidingView,
  Platform,
  ActivityIndicator,
} from 'react-native';
import { Button, Text, TextInput, Surface, Avatar, Divider } from 'react-native-paper';
import colors from '../constants/colors';
import { useAuth } from '../context/AuthContext'; // Import useAuth

const ProfileScreen = ({ navigation }) => {
  const { profile, updateProfile, loading: authLoading } = useAuth(); // Get profile and update function from context
  const [formData, setFormData] = useState({
    name: '',
    email: '', // Email might not be editable, depending on policy
    phone: '',
    speciality: '',
  });
  const [isSubmitting, setIsSubmitting] = useState(false);

  // Initialize form data when profile is loaded
  useEffect(() => {
    if (profile) {
      setFormData({
        name: profile.name || '',
        email: profile.email || '', // Usually email is linked to auth and not directly editable here
        phone: profile.phone || '',
        speciality: profile.speciality || '',
      });
    }
  }, [profile]);

  const handleSubmit = async () => {
    setIsSubmitting(true);
    try {
      // Prepare data for update (exclude email if not editable)
      const profileUpdateData = {
        name: formData.name,
        phone: formData.phone,
        speciality: formData.speciality,
        // Do not include email if it shouldn't be updated via profile form
      };

      const updatedProfile = await updateProfile(profileUpdateData);

      Alert.alert(
        'Succès',
        'Profil mis à jour avec succès',
        [{ 
          text: 'OK', 
          onPress: () => {
            // Navigate back or to UserProfile, potentially passing updated data
            // or relying on context update to refresh UserProfileScreen
            navigation.goBack(); 
          }
        }]
      );
    } catch (error) {
      console.error("Error updating profile:", error);
      Alert.alert(
        'Erreur',
        'Une erreur est survenue lors de la mise à jour du profil. Veuillez réessayer.',
        [{ text: 'OK' }]
      );
    } finally {
      setIsSubmitting(false);
    }
  };

  // Show loading indicator if auth context is loading or profile is not yet available
  if (authLoading || !profile) {
    return (
      <View style={styles.centeredContainer}>
        <ActivityIndicator size="large" color={colors.primary} />
        <Text>Chargement du profil...</Text>
      </View>
    );
  }

  return (
    <KeyboardAvoidingView
      behavior={Platform.OS === 'ios' ? 'padding' : 'height'}
      style={styles.container}
    >
      <ScrollView style={styles.scrollContainer}>
        <Surface style={styles.formCard}>
          <View style={styles.headerSection}>
            <Avatar.Text 
              size={80} 
              // Use profile data for avatar initials
              label={formData.name ? formData.name.split(' ').map(n => n[0]).join('') : '??'} 
              style={{ backgroundColor: colors.primary }} // Use style prop for background color
            />
            <Text style={styles.headerText}>Modifier votre profil</Text>
          </View>
          
          <Divider style={styles.divider} />
          
          <View style={styles.form}>
            <Text style={styles.label}>Nom complet</Text>
            <TextInput
              mode="outlined"
              value={formData.name}
              onChangeText={(text) => setFormData({ ...formData, name: text })}
              placeholder="Entrez votre nom complet"
              style={styles.input}
              left={<TextInput.Icon icon="account" />}
              disabled={isSubmitting}
            />

            <Text style={styles.label}>Email</Text>
            <TextInput
              mode="outlined"
              value={formData.email}
              // onChangeText={(text) => setFormData({ ...formData, email: text })} // Email usually not editable
              placeholder="Email (non modifiable)"
              keyboardType="email-address"
              autoCapitalize="none"
              style={styles.input}
              left={<TextInput.Icon icon="email" />}
              editable={false} // Make email non-editable
              disabled={true}
            />

            <Text style={styles.label}>Téléphone</Text>
            <TextInput
              mode="outlined"
              value={formData.phone}
              onChangeText={(text) => setFormData({ ...formData, phone: text })}
              placeholder="Entrez votre numéro de téléphone (optionnel)"
              keyboardType="phone-pad"
              style={styles.input}
              left={<TextInput.Icon icon="phone" />}
              disabled={isSubmitting}
            />

            <Text style={styles.label}>Spécialité</Text>
            <TextInput
              mode="outlined"
              value={formData.speciality}
              onChangeText={(text) => setFormData({ ...formData, speciality: text })}
              placeholder="Entrez votre spécialité (ex: Mécanicien)"
              style={styles.input}
              left={<TextInput.Icon icon="briefcase" />}
              disabled={isSubmitting}
            />

            <View style={styles.buttonContainer}>
              <Button
                mode="outlined"
                onPress={() => navigation.goBack()}
                style={styles.cancelButton}
                icon="close"
                disabled={isSubmitting}
                textColor={colors.primary} // Ensure text color matches theme
              >
                Annuler
              </Button>
              
              <Button
                mode="contained"
                onPress={handleSubmit}
                style={styles.submitButton}
                icon="content-save"
                loading={isSubmitting}
                disabled={isSubmitting}
              >
                Enregistrer
              </Button>
            </View>
          </View>
        </Surface>
      </ScrollView>
    </KeyboardAvoidingView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: colors.background,
  },
  centeredContainer: { // Added for loading state
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: colors.background,
  },
  scrollContainer: {
    flex: 1,
  },
  formCard: {
    margin: 16,
    borderRadius: 12,
    elevation: 4,
    overflow: 'hidden',
    backgroundColor: colors.surface, // Ensure card background color
  },
  headerSection: {
    padding: 24,
    alignItems: 'center',
    backgroundColor: colors.surface, // Match card background
  },
  headerText: {
    fontSize: 20,
    fontWeight: 'bold',
    marginTop: 16,
    color: colors.text,
  },
  divider: {
    height: 1,
    backgroundColor: colors.border, // Use theme border color
  },
  form: {
    padding: 20,
  },
  label: {
    fontSize: 14, // Slightly smaller label
    fontWeight: '500',
    color: colors.text,
    marginBottom: 6,
    marginTop: 12,
  },
  input: {
    backgroundColor: colors.inputBackground || colors.surface, // Use specific input background or surface
    marginBottom: 10,
  },
  buttonContainer: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    marginTop: 30,
    marginBottom: 10, // Add some bottom margin
  },
  cancelButton: {
    flex: 1,
    marginRight: 8,
    borderColor: colors.primary,
  },
  submitButton: {
    flex: 1,
    marginLeft: 8,
    backgroundColor: colors.primary, // Ensure button color matches theme
  },
});

export default ProfileScreen;

