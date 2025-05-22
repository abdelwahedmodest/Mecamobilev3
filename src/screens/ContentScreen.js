import React, { useState } from 'react';
import { View, StyleSheet, ScrollView } from 'react-native';
import { Text, Card, Title, Paragraph, Button, ProgressBar } from 'react-native-paper';
import { LESSON_CONTENT } from '../data/courseData';

const ContentScreen = ({ route, navigation }) => {
  const { moduleId, moduleTitle } = route.params;
  const [currentIndex, setCurrentIndex] = useState(0);

  // Get content from LESSON_CONTENT
  const lessonContent = LESSON_CONTENT[moduleId];
  
  if (!lessonContent) {
    return (
      <View style={styles.container}>
        <Text style={styles.title}>Contenu non disponible</Text>
        <Text>Le contenu de ce module n'est pas encore disponible.</Text>
      </View>
    );
  }

  // Split content into sections (paragraphs)
  const sections = lessonContent.textContent.split('\n\n').filter(section => section.trim());
  const progress = (currentIndex + 1) / sections.length;

  const handleNext = () => {
    if (currentIndex < sections.length - 1) {
      setCurrentIndex(currentIndex + 1);
    }
  };

  const handlePrevious = () => {
    if (currentIndex > 0) {
      setCurrentIndex(currentIndex - 1);
    }
  };

  return (
    <View style={styles.container}>
      <ScrollView style={styles.scrollView}>
        <Title style={styles.moduleTitle}>{moduleTitle}</Title>
        
        <ProgressBar progress={progress} color="#007AFF" style={styles.progressBar} />
        <Text style={styles.progressText}>
          {currentIndex + 1} / {sections.length}
        </Text>

        <Card style={styles.card}>
          <Card.Content>
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
        >
          Précédent
        </Button>
        <Button 
          mode="contained" 
          onPress={handleNext}
          disabled={currentIndex === sections.length - 1}
          style={[styles.button, styles.nextButton]}
        >
          Suivant
        </Button>
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#f5f5f5',
  },
  scrollView: {
    flex: 1,
    padding: 16,
  },
  moduleTitle: {
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 16,
    color: '#333',
  },
  progressBar: {
    height: 8,
    borderRadius: 4,
    marginBottom: 8,
  },
  progressText: {
    textAlign: 'center',
    marginBottom: 16,
    color: '#666',
  },
  card: {
    marginBottom: 16,
    elevation: 4,
    borderRadius: 8,
  },
  content: {
    fontSize: 16,
    lineHeight: 24,
    color: '#444',
    textAlign: 'justify',
  },
  navigationButtons: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    padding: 16,
    backgroundColor: '#fff',
    borderTopWidth: 1,
    borderTopColor: '#e0e0e0',
  },
  button: {
    flex: 1,
    marginHorizontal: 8,
  },
  previousButton: {
    backgroundColor: '#6c757d',
  },
  nextButton: {
    backgroundColor: '#007AFF',
  },
});

export default ContentScreen;