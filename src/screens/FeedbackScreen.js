import React, { useState } from 'react';
import { View, StyleSheet, Image } from 'react-native';
import { Button, Text, Surface, TextInput, Snackbar } from 'react-native-paper';
import { MaterialCommunityIcons } from '@expo/vector-icons';
import colors from '../constants/colors';

const FeedbackScreen = ({ navigation }) => {
  const [feedback, setFeedback] = useState('');
  const [email, setEmail] = useState('');
  const [category, setCategory] = useState('bug');
  const [snackbarVisible, setSnackbarVisible] = useState(false);
  const [snackbarMessage, setSnackbarMessage] = useState('');
  const [loading, setLoading] = useState(false);

  const handleSubmit = () => {
    if (!feedback.trim()) {
      setSnackbarMessage('Veuillez entrer votre commentaire');
      setSnackbarVisible(true);
      return;
    }

    setLoading(true);
    
    // Simulate API call
    setTimeout(() => {
      setLoading(false);
      setSnackbarMessage('Merci pour votre retour !');
      setSnackbarVisible(true);
      setFeedback('');
      
      // Navigate back after a delay
      setTimeout(() => {
        navigation.goBack();
      }, 2000);
    }, 1500);
  };

  return (
    <View style={styles.container}>
      <Surface style={styles.card}>
        <View style={styles.header}>
          <MaterialCommunityIcons name="message-text-outline" size={40} color={colors.primary} />
          <Text style={styles.title}>Nous apprécions votre retour</Text>
          <Text style={styles.subtitle}>
            Aidez-nous à améliorer Mecamobile en partageant vos commentaires ou en signalant des problèmes
          </Text>
        </View>

        <View style={styles.form}>
          <Text style={styles.label}>Type de retour</Text>
          <View style={styles.categoryContainer}>
            <Button 
              mode={category === 'bug' ? 'contained' : 'outlined'}
              onPress={() => setCategory('bug')}
              style={[styles.categoryButton, category === 'bug' && styles.selectedCategory]}
              icon="bug"
            >
              Bug
            </Button>
            <Button 
              mode={category === 'feature' ? 'contained' : 'outlined'}
              onPress={() => setCategory('feature')}
              style={[styles.categoryButton, category === 'feature' && styles.selectedCategory]}
              icon="lightbulb-on"
            >
              Suggestion
            </Button>
            <Button 
              mode={category === 'other' ? 'contained' : 'outlined'}
              onPress={() => setCategory('other')}
              style={[styles.categoryButton, category === 'other' && styles.selectedCategory]}
              icon="comment-question"
            >
              Autre
            </Button>
          </View>

          <Text style={styles.label}>Votre commentaire</Text>
          <TextInput
            mode="outlined"
            value={feedback}
            onChangeText={setFeedback}
            placeholder="Décrivez votre problème ou suggestion..."
            multiline
            numberOfLines={5}
            style={styles.textArea}
          />

          <Text style={styles.label}>Email (optionnel)</Text>
          <TextInput
            mode="outlined"
            value={email}
            onChangeText={setEmail}
            placeholder="Pour vous contacter si nécessaire"
            keyboardType="email-address"
            autoCapitalize="none"
            style={styles.input}
            left={<TextInput.Icon icon="email" />}
          />

          <Button 
            mode="contained" 
            onPress={handleSubmit}
            style={styles.submitButton}
            loading={loading}
            disabled={loading}
            icon="send"
          >
            {loading ? 'Envoi en cours...' : 'Envoyer le retour'}
          </Button>
        </View>
      </Surface>

      <Snackbar
        visible={snackbarVisible}
        onDismiss={() => setSnackbarVisible(false)}
        duration={3000}
        action={{
          label: 'OK',
          onPress: () => setSnackbarVisible(false),
        }}
      >
        {snackbarMessage}
      </Snackbar>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: colors.background,
    padding: 16,
  },
  card: {
    borderRadius: 12,
    elevation: 4,
    overflow: 'hidden',
  },
  header: {
    padding: 24,
    alignItems: 'center',
    backgroundColor: colors.surface,
    borderBottomWidth: 1,
    borderBottomColor: colors.divider,
  },
  title: {
    fontSize: 20,
    fontWeight: 'bold',
    marginTop: 16,
    marginBottom: 8,
    color: colors.text,
  },
  subtitle: {
    fontSize: 14,
    color: colors.lightText,
    textAlign: 'center',
    lineHeight: 20,
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
  categoryContainer: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    marginBottom: 8,
  },
  categoryButton: {
    flex: 1,
    marginHorizontal: 4,
  },
  selectedCategory: {
    backgroundColor: colors.primary,
  },
  textArea: {
    backgroundColor: colors.surface,
    marginBottom: 8,
    minHeight: 120,
  },
  input: {
    backgroundColor: colors.surface,
    marginBottom: 8,
  },
  submitButton: {
    marginTop: 24,
    paddingVertical: 8,
    borderRadius: 10,
  },
});

export default FeedbackScreen;
