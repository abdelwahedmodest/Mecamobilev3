import React, { useState } from 'react';
import {
  Alert,
  ScrollView,
  StyleSheet,
  View,
  KeyboardAvoidingView,
  Platform,
} from 'react-native';
import { Button, Text, TextInput, Surface, Avatar, Divider, IconButton } from 'react-native-paper';
import { MaterialCommunityIcons } from '@expo/vector-icons';
import colors from '../constants/colors';
import { updateUserData } from '../data/userData';

const ProfileScreen = ({ navigation, route }) => {
  const [formData, setFormData] = useState({
    name: route.params?.userData?.name || '',
    email: route.params?.userData?.email || '',
    phone: route.params?.userData?.phone || '',
    speciality: route.params?.userData?.speciality || '',
  });

  const handleSubmit = () => {
    try {
      // Update user data
      const updatedData = updateUserData({
        name: formData.name,
        email: formData.email,
        phone: formData.phone,
        speciality: formData.speciality,
      });

      // Show success message and navigate back to UserProfileScreen
      Alert.alert(
        'Succès',
        'Profil mis à jour avec succès',
        [{ 
          text: 'OK', 
          onPress: () => {
            navigation.replace('UserProfile', {
              refresh: true,
              updatedUserData: updatedData
            });
          }
        }]
      );
    } catch (error) {
      Alert.alert(
        'Erreur',
        'Une erreur est survenue lors de la mise à jour du profil',
        [{ text: 'OK' }]
      );
    }
  };

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
              label={formData.name.split(' ').map(n => n[0]).join('')} 
              backgroundColor={colors.primary}
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
            />

            <Text style={styles.label}>Email</Text>
            <TextInput
              mode="outlined"
              value={formData.email}
              onChangeText={(text) => setFormData({ ...formData, email: text })}
              placeholder="Entrez votre email"
              keyboardType="email-address"
              autoCapitalize="none"
              style={styles.input}
              left={<TextInput.Icon icon="email" />}
            />

            <Text style={styles.label}>Téléphone</Text>
            <TextInput
              mode="outlined"
              value={formData.phone}
              onChangeText={(text) => setFormData({ ...formData, phone: text })}
              placeholder="Entrez votre numéro de téléphone"
              keyboardType="phone-pad"
              style={styles.input}
              left={<TextInput.Icon icon="phone" />}
            />

            <Text style={styles.label}>Spécialité</Text>
            <TextInput
              mode="outlined"
              value={formData.speciality}
              onChangeText={(text) => setFormData({ ...formData, speciality: text })}
              placeholder="Entrez votre spécialité"
              style={styles.input}
              left={<TextInput.Icon icon="briefcase" />}
            />

            <View style={styles.buttonContainer}>
              <Button
                mode="outlined"
                onPress={() => navigation.goBack()}
                style={styles.cancelButton}
                icon="close"
              >
                Annuler
              </Button>
              
              <Button
                mode="contained"
                onPress={handleSubmit}
                style={styles.submitButton}
                icon="content-save"
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
  scrollContainer: {
    flex: 1,
  },
  formCard: {
    margin: 16,
    borderRadius: 12,
    elevation: 4,
    overflow: 'hidden',
  },
  headerSection: {
    padding: 24,
    alignItems: 'center',
    backgroundColor: colors.surface,
  },
  headerText: {
    fontSize: 20,
    fontWeight: 'bold',
    marginTop: 16,
    color: colors.text,
  },
  divider: {
    height: 1,
    backgroundColor: colors.divider,
  },
  form: {
    padding: 20,
  },
  label: {
    fontSize: 16,
    fontWeight: '500',
    color: colors.text,
    marginBottom: 8,
    marginTop: 16,
  },
  input: {
    backgroundColor: colors.surface,
    marginBottom: 8,
  },
  buttonContainer: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    marginTop: 30,
  },
  cancelButton: {
    flex: 1,
    marginRight: 8,
    borderColor: colors.primary,
  },
  submitButton: {
    flex: 1,
    marginLeft: 8,
  },
});

export default ProfileScreen;
