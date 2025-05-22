import React, { useState, useEffect } from 'react';
import { View, StyleSheet, Image, Dimensions } from 'react-native';
import { Button, Text, Surface, ProgressBar } from 'react-native-paper';
import { MaterialCommunityIcons } from '@expo/vector-icons';
import colors from '../constants/colors';
import AsyncStorage from '@react-native-async-storage/async-storage';

const OnboardingScreen = ({ navigation }) => {
  const [currentPage, setCurrentPage] = useState(0);
  const { width } = Dimensions.get('window');

  const onboardingData = [
    {
      title: "Bienvenue sur Mecamobile",
      description: "Votre plateforme d'apprentissage pour la mécanique automobile",
      icon: "car-wrench",
    },
    {
      title: "Apprenez à votre rythme",
      description: "Des cours structurés avec des vidéos, des textes et des quiz interactifs",
      icon: "book-open-variant",
    },
    {
      title: "Suivez votre progression",
      description: "Visualisez votre avancement et gagnez des badges de compétence",
      icon: "chart-line",
    },
    {
      title: "Prêt à commencer ?",
      description: "Créez un compte ou connectez-vous pour accéder à tous les cours",
      icon: "rocket-launch",
    }
  ];

  const handleNext = async () => {
    if (currentPage < onboardingData.length - 1) {
      setCurrentPage(currentPage + 1);
    } else {
      await AsyncStorage.setItem('hasSeenOnboarding', 'true');
      navigation.replace('Auth');
    }
  };

  const handleSkip = async () => {
    await AsyncStorage.setItem('hasSeenOnboarding', 'true');
    navigation.replace('Auth');
  };

  return (
    <View style={styles.container}>
      <View style={styles.skipContainer}>
        {currentPage < onboardingData.length - 1 && (
          <Button 
            mode="text" 
            onPress={handleSkip}
            labelStyle={styles.skipText}
          >
            Passer
          </Button>
        )}
      </View>

      <View style={styles.contentContainer}>
        <Surface style={styles.iconContainer}>
          <MaterialCommunityIcons 
            name={onboardingData[currentPage].icon} 
            size={100} 
            color={colors.primary} 
          />
        </Surface>

        <Text style={styles.title}>{onboardingData[currentPage].title}</Text>
        <Text style={styles.description}>{onboardingData[currentPage].description}</Text>
      </View>

      <View style={styles.paginationContainer}>
        <View style={styles.paginationDots}>
          {onboardingData.map((_, index) => (
            <View 
              key={index} 
              style={[
                styles.dot, 
                { backgroundColor: index === currentPage ? colors.primary : colors.divider }
              ]} 
            />
          ))}
        </View>

        <Button 
          mode="contained" 
          onPress={handleNext}
          style={styles.nextButton}
          contentStyle={styles.nextButtonContent}
        >
          {currentPage === onboardingData.length - 1 ? "Commencer" : "Suivant"}
        </Button>
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: colors.background,
    justifyContent: 'space-between',
  },
  skipContainer: {
    alignItems: 'flex-end',
    padding: 16,
  },
  skipText: {
    color: colors.lightText,
  },
  contentContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    paddingHorizontal: 32,
  },
  iconContainer: {
    width: 160,
    height: 160,
    borderRadius: 80,
    justifyContent: 'center',
    alignItems: 'center',
    marginBottom: 40,
    elevation: 4,
  },
  title: {
    fontSize: 24,
    fontWeight: 'bold',
    textAlign: 'center',
    marginBottom: 16,
    color: colors.text,
  },
  description: {
    fontSize: 16,
    textAlign: 'center',
    color: colors.lightText,
    lineHeight: 24,
  },
  paginationContainer: {
    padding: 24,
  },
  paginationDots: {
    flexDirection: 'row',
    justifyContent: 'center',
    marginBottom: 20,
  },
  dot: {
    width: 10,
    height: 10,
    borderRadius: 5,
    marginHorizontal: 5,
  },
  nextButton: {
    borderRadius: 10,
  },
  nextButtonContent: {
    paddingVertical: 8,
  },
});

export default OnboardingScreen;
