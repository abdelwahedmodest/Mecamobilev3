import React, { useState, useEffect, useContext } from 'react';
import { View, StyleSheet, ScrollView, ActivityIndicator, Alert } from 'react-native';
import { Text, Card, Title, Button, ProgressBar } from 'react-native-paper';
import supabaseService from '../services/supabaseService'; // Import Supabase service
import colors from '../constants/colors';
import { AuthContext } from '../context/AuthContext'; // Import AuthContext for user ID

const ContentScreen = ({ route, navigation }) => {
  const { moduleId, moduleTitle, courseId } = route.params; // Added courseId
  const { user } = useContext(AuthContext);
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
        // Assuming content is in a field named 'content' or 'text_content'
        // Adjust 'data.content' if the field name is different in your Supabase table
        const contentText = data.content || data.text_content || ''; 
        const splitSections = contentText.split('\n\n').filter(section => section.trim());
        setSections(splitSections.length > 0 ? splitSections : ['Aucun contenu textuel disponible pour ce module.']);
      } catch (err) {
        console.error('Error fetching module content:', err);
        setError(err.message || 'Impossible de charger le contenu du module.');
      } finally {
        setLoading(false);
      }
    };

    fetchModuleContent();
  }, [moduleId]);

  // Function to update module progress
  const markModuleComplete = async () => {
    if (!user || updatingProgress) return;
    setUpdatingProgress(true);
    try {
      await supabaseService.updateModuleProgress(user.id, moduleId, true);
      Alert.alert("Progression", "Module marqué comme terminé !");
      // Optionally, update course progress as well
      // await supabaseService.updateUserCourseProgressBasedOnModules(user.id, courseId);
    } catch (err) {
      console.error("Error updating module progress:", err);
      Alert.alert("Erreur", "Impossible de mettre à jour la progression.");
    } finally {
      setUpdatingProgress(false);
    }
  };

  const progress = sections.length > 0 ? (currentIndex + 1) / sections.length : 0;

  const handleNext = () => {
    if (currentIndex < sections.length - 1) {
      setCurrentIndex(currentIndex + 1);
    } else if (currentIndex === sections.length - 1) {
      // Reached the end, mark as complete
      markModuleComplete();
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
    <View style={styles.container}>
      <ScrollView style={styles.scrollView}>
        <Title style={styles.moduleTitle}>{moduleTitle}</Title>
        
        <ProgressBar progress={progress} color={colors.primary} style={styles.progressBar} />
        <Text style={styles.progressText}>
          Section {currentIndex + 1} / {sections.length}
        </Text>

        <Card style={styles.card}>
          <Card.Content>
            {/* Display current section */} 
            <Text style={styles.content}>{sections[currentIndex]}</Text>
          </Card.Content>
        </Card>
      </ScrollView>

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
          disabled={updatingProgress} // Disable while updating progress
          style={[styles.button, styles.nextButton]}
          labelStyle={styles.buttonLabel}
        >
          {currentIndex === sections.length - 1 ? (updatingProgress ? 'Terminé...' : 'Terminer') : 'Suivant'}
        </Button>
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: colors.background, // Use theme color
  },
  centeredContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 20,
    backgroundColor: colors.background,
  },
  loadingText: {
    marginTop: 10,
    fontSize: 16,
    color: colors.text, // Use theme color
  },
  errorText: {
    fontSize: 16,
    color: colors.error, // Use theme color
    textAlign: 'center',
    marginBottom: 15,
  },
  scrollView: {
    flex: 1,
    padding: 16,
  },
  moduleTitle: {
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 16,
    color: colors.text, // Use theme color
    textAlign: 'center',
  },
  progressBar: {
    height: 8,
    borderRadius: 4,
    marginBottom: 8,
  },
  progressText: {
    textAlign: 'center',
    marginBottom: 16,
    color: colors.lightText, // Use theme color
  },
  card: {
    marginBottom: 16,
    elevation: 3,
    borderRadius: 8,
    backgroundColor: colors.cardBackground, // Use theme color
  },
  content: {
    fontSize: 16,
    lineHeight: 24,
    color: colors.text, // Use theme color
    textAlign: 'justify',
  },
  navigationButtons: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    paddingVertical: 12,
    paddingHorizontal: 16,
    backgroundColor: colors.background, // Use theme color
    borderTopWidth: 1,
    borderTopColor: colors.border, // Use theme color
  },
  button: {
    flex: 1,
    marginHorizontal: 8,
    borderRadius: 20, // Rounded buttons
  },
  buttonLabel: {
    fontSize: 14, // Smaller text
    marginVertical: 6, // Adjust vertical padding
  },
  previousButton: {
    backgroundColor: colors.secondary, // Use theme color
  },
  nextButton: {
    backgroundColor: colors.primary, // Use theme color
  },
});

export default ContentScreen;

