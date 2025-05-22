import React, { useState } from 'react';
import { View, StyleSheet, ScrollView } from 'react-native';
import { Text, Button, Card, RadioButton } from 'react-native-paper';
import { QUIZ_DATA } from '../data/courseData';

const QuizScreen = ({ route, navigation }) => {
  const { moduleId, moduleTitle } = route.params;
  const [currentQuestionIndex, setCurrentQuestionIndex] = useState(0);
  const [selectedAnswer, setSelectedAnswer] = useState('');
  const [score, setScore] = useState(0);
  const [showResults, setShowResults] = useState(false);

  const questions = QUIZ_DATA[moduleId];

  if (!questions || questions.length === 0) {
    return (
      <View style={styles.container}>
        <Text style={styles.errorText}>Aucun quiz disponible pour ce module.</Text>
        <Button 
          mode="contained" 
          onPress={() => navigation.goBack()}
          style={styles.button}
        >
          Retour
        </Button>
      </View>
    );
  }

  const currentQuestion = questions[currentQuestionIndex];

  const handleAnswer = (answer) => {
    setSelectedAnswer(answer);
  };

  const handleNext = () => {
    if (selectedAnswer === currentQuestion.correctAnswer) {
      setScore(score + 1);
    }

    if (currentQuestionIndex < questions.length - 1) {
      setCurrentQuestionIndex(currentQuestionIndex + 1);
      setSelectedAnswer('');
    } else {
      setShowResults(true);
    }
  };

  const handleRetry = () => {
    setCurrentQuestionIndex(0);
    setSelectedAnswer('');
    setScore(0);
    setShowResults(false);
  };

  if (showResults) {
    return (
      <View style={styles.container}>
        <Card style={styles.resultCard}>
          <Card.Content>
            <Text style={styles.resultTitle}>Quiz terminé !</Text>
            <Text style={styles.scoreText}>
              Score: {score}/{questions.length}
            </Text>
            <Text style={styles.percentageText}>
              ({Math.round((score / questions.length) * 100)}%)
            </Text>
          </Card.Content>
        </Card>
        <Button 
          mode="contained" 
          onPress={handleRetry}
          style={styles.button}
        >
          Réessayer
        </Button>
        <Button 
          mode="outlined" 
          onPress={() => navigation.goBack()}
          style={styles.button}
        >
          Retour au module
        </Button>
      </View>
    );
  }

  return (
    <View style={styles.container}>
      <ScrollView>
        <Text style={styles.progress}>
          Question {currentQuestionIndex + 1}/{questions.length}
        </Text>
        
        <Card style={styles.questionCard}>
          <Card.Content>
            <Text style={styles.questionText}>{currentQuestion.question}</Text>
            <RadioButton.Group onValueChange={handleAnswer} value={selectedAnswer}>
              {currentQuestion.options.map((option, index) => (
                <RadioButton.Item
                  key={index}
                  label={option}
                  value={option}
                  style={styles.radioItem}
                />
              ))}
            </RadioButton.Group>
          </Card.Content>
        </Card>
      </ScrollView>

      <Button 
        mode="contained" 
        onPress={handleNext}
        disabled={!selectedAnswer}
        style={styles.button}
      >
        {currentQuestionIndex < questions.length - 1 ? 'Suivant' : 'Terminer'}
      </Button>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 16,
    backgroundColor: '#f5f5f5',
  },
  progress: {
    fontSize: 18,
    marginBottom: 16,
    textAlign: 'center',
  },
  questionCard: {
    marginBottom: 16,
    elevation: 4,
  },
  questionText: {
    fontSize: 18,
    marginBottom: 16,
  },
  radioItem: {
    marginVertical: 4,
  },
  button: {
    marginVertical: 8,
  },
  resultCard: {
    marginBottom: 16,
    elevation: 4,
  },
  resultTitle: {
    fontSize: 24,
    textAlign: 'center',
    marginBottom: 16,
  },
  scoreText: {
    fontSize: 20,
    textAlign: 'center',
  },
  percentageText: {
    fontSize: 18,
    textAlign: 'center',
    color: '#666',
  },
  errorText: {
    fontSize: 16,
    textAlign: 'center',
    marginBottom: 16,
  },
});

export default QuizScreen;