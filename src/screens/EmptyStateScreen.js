import React from 'react';
import { View, StyleSheet, Image, ScrollView } from 'react-native';
import { Button, Text, Surface } from 'react-native-paper';
import { MaterialCommunityIcons } from '@expo/vector-icons';
import colors from '../constants/colors';

const EmptyStateScreen = ({ 
  navigation, 
  title = "Aucun contenu disponible", 
  message = "Il n'y a rien à afficher pour le moment.",
  icon = "folder-open-outline",
  actionText = "Retour",
  onAction = () => navigation.goBack(),
  secondaryActionText = null,
  onSecondaryAction = null
}) => {
  return (
    <ScrollView contentContainerStyle={styles.container}>
      <Surface style={styles.card}>
        <MaterialCommunityIcons 
          name={icon} 
          size={80} 
          color={colors.lightText} 
        />
        
        <Text style={styles.title}>{title}</Text>
        <Text style={styles.message}>{message}</Text>
        
        <View style={styles.buttonContainer}>
          <Button 
            mode="contained" 
            onPress={onAction}
            style={styles.primaryButton}
          >
            {actionText}
          </Button>
          
          {secondaryActionText && onSecondaryAction && (
            <Button 
              mode="outlined" 
              onPress={onSecondaryAction}
              style={styles.secondaryButton}
            >
              {secondaryActionText}
            </Button>
          )}
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
  title: {
    fontSize: 20,
    fontWeight: 'bold',
    color: colors.text,
    marginTop: 20,
    marginBottom: 10,
    textAlign: 'center',
  },
  message: {
    fontSize: 16,
    color: colors.lightText,
    textAlign: 'center',
    marginBottom: 30,
    lineHeight: 22,
  },
  buttonContainer: {
    width: '100%',
  },
  primaryButton: {
    marginBottom: 12,
  },
  secondaryButton: {
    marginBottom: 12,
  }
});

export default EmptyStateScreen;
