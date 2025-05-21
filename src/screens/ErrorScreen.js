import React from 'react';
import { View, StyleSheet, Image, ScrollView } from 'react-native';
import { Button, Text, Surface } from 'react-native-paper';
import { MaterialCommunityIcons } from '@expo/vector-icons';
import colors from '../constants/colors';

const ErrorScreen = ({ 
  navigation, 
  error = "Une erreur s'est produite", 
  details = "Nous n'avons pas pu charger les données demandées.",
  onRetry = null,
  canGoBack = true
}) => {
  return (
    <ScrollView contentContainerStyle={styles.container}>
      <Surface style={styles.card}>
        <MaterialCommunityIcons 
          name="alert-circle-outline" 
          size={80} 
          color={colors.error} 
        />
        
        <Text style={styles.errorTitle}>{error}</Text>
        <Text style={styles.errorDetails}>{details}</Text>
        
        <View style={styles.buttonContainer}>
          {onRetry && (
            <Button 
              mode="contained" 
              onPress={onRetry}
              style={styles.retryButton}
              icon="refresh"
            >
              Réessayer
            </Button>
          )}
          
          {canGoBack && (
            <Button 
              mode="outlined" 
              onPress={() => navigation.goBack()}
              style={styles.backButton}
              icon="arrow-left"
            >
              Retour
            </Button>
          )}
          
          <Button 
            mode="text" 
            onPress={() => navigation.navigate('Feedback')}
            style={styles.reportButton}
            icon="message-alert"
          >
            Signaler le problème
          </Button>
        </View>
      </Surface>
    </ScrollView>
  );
};

const styles = StyleSheet.create({
  container: {
    flexGrow: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: colors.background,
    padding: 20,
  },
  card: {
    padding: 30,
    borderRadius: 16,
    alignItems: 'center',
    elevation: 4,
    width: '100%',
    maxWidth: 400,
  },
  errorTitle: {
    fontSize: 20,
    fontWeight: 'bold',
    color: colors.text,
    marginTop: 20,
    marginBottom: 10,
    textAlign: 'center',
  },
  errorDetails: {
    fontSize: 16,
    color: colors.lightText,
    textAlign: 'center',
    marginBottom: 30,
    lineHeight: 22,
  },
  buttonContainer: {
    width: '100%',
  },
  retryButton: {
    marginBottom: 12,
  },
  backButton: {
    marginBottom: 12,
  },
  reportButton: {
    marginTop: 8,
  }
});

export default ErrorScreen;
