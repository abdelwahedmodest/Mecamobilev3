import React, { useState, useEffect } from 'react';
import { View, StyleSheet, ScrollView, ActivityIndicator, Alert } from 'react-native';
import { Text, Card, Title, Button, ProgressBar } from 'react-native-paper';
import supabaseService from '../services/supabaseService';
import colors from '../constants/colors';
import { useAuth } from '../context/AuthContext';
import AdBanner from '../components/AdBanner';

const ContentScreen = ({ route, navigation }) => {
  const { moduleId, moduleTitle, courseId } = route.params;
  const { user } = useAuth();
  const [moduleData, setModuleData] = useState(null);
  const [sections, setSections] = useState([]);
  const [currentIndex, setCurrentIndex] = useState(0);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [updatingProgress, setUpdatingProgress] = useState(false);

  useEffect(() => {
    const fetchModuleContent = async () => {
      try {
        setLoading(true);
        setError(null);
        const data = await supabaseService.getModuleById(moduleId);
        
        if (!data) {
          throw new Error('Contenu du module non trouvé.');
        }

        setModuleData(data);
        const contentText = data.content || '';
        
        if (!contentText) {
          throw new Error('Aucun contenu disponible pour ce module.');
        }

        // Changed section length to 1000 characters
        const SECTION_LENGTH = 1000;
        const processedSections = [];
        let remainingText = contentText;

        while (remainingText.length > 0) {
          let sectionEnd = SECTION_LENGTH;
          
          // If we're not at the end of the text, find the last sentence break
          if (remainingText.length > SECTION_LENGTH) {
            const lastSentence = remainingText.substring(0, SECTION_LENGTH).match(/[^.!?]*[.!?](?=[^.!?]*$)/);
            if (lastSentence) {
              sectionEnd = remainingText.indexOf(lastSentence[0]) + lastSentence[0].length;
            }
          }

          // Get the current section
          const section = remainingText.substring(0, sectionEnd).trim();
          if (section) {
            processedSections.push(section);
          }

          // Update remaining text
          remainingText = remainingText.substring(sectionEnd).trim();
        }

        if (processedSections.length === 0) {
          throw new Error('Aucun contenu textuel disponible pour ce module.');
        }

        setSections(processedSections);
        setCurrentIndex(0);
        
      } catch (err) {
        console.error('Error fetching module content:', err);
        setError(err.message || 'Impossible de charger le contenu du module.');
      } finally {
        setLoading(false);
      }
    };

    fetchModuleContent();
  }, [moduleId]);

  const handleCompletion = async () => {
    navigation.navigate('CourseDetail', { 
      courseId: courseId
    });
  };

  const progress = sections.length > 0 ? (currentIndex + 1) / sections.length : 0;

  const handleNext = () => {
    if (currentIndex < sections.length - 1) {
      setCurrentIndex(currentIndex + 1);
    } else if (currentIndex === sections.length - 1) {
      handleCompletion();
    }
  };

  const handlePrevious = () => {
    if (currentIndex > 0) {
      setCurrentIndex(currentIndex - 1);
    }
  };

  if (loading) {
    return (
      <View style={styles.centeredContainer}>
        <ActivityIndicator size="large" color={colors.primary} />
        <Text style={styles.loadingText}>Chargement du contenu...</Text>
      </View>
    );
  }

  if (error) {
    return (
      <View style={styles.centeredContainer}>
        <Text style={styles.errorText}>{error}</Text>
        <Button title="Retour" onPress={() => navigation.goBack()} />
      </View>
    );
  }

  return (
    <ScrollView style={styles.mainScrollView}>
      <View style={styles.container}>
        {/* Title Area */}
        <Title style={styles.moduleTitle}>{moduleTitle}</Title>

        {/* Content Card */}
        <Card style={styles.card}>
          <ScrollView style={styles.scrollView}>
            <Card.Content>
              <Text style={styles.content}>{sections[currentIndex]}</Text>
            </Card.Content>
          </ScrollView>
          <View style={styles.progressContainer}>
            <ProgressBar progress={progress} color={colors.primary} style={styles.progressBar} />
            <Text style={styles.progressText}>
              Section {currentIndex + 1} / {sections.length}
            </Text>
          </View>
        </Card>

        {/* Navigation Buttons - Now part of the scrollable content */}
        <View style={styles.navigationButtons}>
          <Button 
            mode="contained" 
            onPress={handlePrevious}
            disabled={currentIndex === 0}
            style={[styles.button, styles.previousButton]}
            labelStyle={styles.buttonLabel}
          >
            Précédent
          </Button>
          <Button 
            mode="contained" 
            onPress={handleNext}
            disabled={updatingProgress}
            style={[styles.button, styles.nextButton]}
            labelStyle={styles.buttonLabel}
          >
            {currentIndex === sections.length - 1 ? 'Terminer' : 'Suivant'}
          </Button>
        </View>

        {/* Ad Banner - Always visible at the bottom */}
        <AdBanner />
      </View>
    </ScrollView>
  );
};

const styles = StyleSheet.create({
  mainScrollView: {
    flex: 1,
    backgroundColor: colors.background,
  },
  container: {
    flex: 1,
    padding: 16,
    paddingBottom: 24, // Add extra padding at bottom
  },
  moduleTitle: {
    fontSize: 24,
    fontWeight: 'bold',
    color: colors.text,
    textAlign: 'center',
    marginBottom: 8,
  },
  card: {
    flex: 1,
    minHeight: 400, // Ensure minimum height for content
    marginBottom: 16, // Reduced margin since buttons are part of scroll
  },
  scrollView: {
    flex: 1,
  },
  content: {
    fontSize: 16,
    lineHeight: 24,
    color: colors.text,
    textAlign: 'justify',
    paddingBottom: 16,
  },
  progressContainer: {
    padding: 16,
    borderTopWidth: 1,
    borderTopColor: colors.border,
  },
  progressBar: {
    height: 8,
    borderRadius: 4,
  },
  progressText: {
    textAlign: 'center',
    marginTop: 8,
    color: colors.lightText,
  },
  navigationButtons: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    paddingVertical: 8,
    backgroundColor: colors.background,
    // Remove position absolute since it's now part of scroll
  },
  button: {
    flex: 1,
    marginHorizontal: 8,
    borderRadius: 20,
  },
  buttonLabel: {
    fontSize: 16,
    fontWeight: '500',
    paddingVertical: 4,
  },
  previousButton: {
    backgroundColor: colors.secondary,
  },
  nextButton: {
    backgroundColor: colors.primary,
  }
});

export default ContentScreen;
