import React, { useState, useEffect, useContext } from 'react';
import { View, StyleSheet, ScrollView, ActivityIndicator, Alert } from 'react-native';
import { Text, Button, Card, RadioButton, Title } from 'react-native-paper';
import supabaseService from '../services/supabaseService'; // Import Supabase service
import { useAuth } from '../context/AuthContext'; // Import useAuth to get user ID
import colors from '../constants/colors';

const QuizScreen = ({ route, navigation }) => {
  const { moduleId, moduleTitle } = route.params;
  const { user } = useContext(useAuth); // Get user from context
  const [questions, setQuestions] = useState([]);
  const [currentQuestionIndex, setCurrentQuestionIndex] = useState(0);
  const [selectedAnswer, setSelectedAnswer] = useState('');
  const [score, setScore] = useState(0);
  const [showResults, setShowResults] = useState(false);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [submittingResult, setSubmittingResult] = useState(false);

  // Fetch quiz questions from Supabase
  useEffect(() => {
    const fetchQuiz = async () => {
      try {
        setLoading(true);
        setError(null);
        const quizQuestions = await supabaseService.getQuizByModuleId(moduleId);
        if (!quizQuestions || quizQuestions.length === 0) {
          setError('Aucun quiz disponible pour ce module.');
        } else {
          // Ensure options are parsed correctly if stored as JSON string
          const parsedQuestions = quizQuestions.map(q => ({
            ...q,
            // Supabase service already handles parsing, but double-check if needed
            options: Array.isArray(q.options) ? q.options : [], 
            // Map Supabase column names if different (e.g., question_text, correct_option)
            question: q.question_text || q.question, 
            correctAnswer: q.correct_answer || q.correctAnswer
          }));
          setQuestions(parsedQuestions);
        }
      } catch (err) {
        console.error('Error fetching quiz:', err);
        setError('Impossible de charger le quiz. Veuillez réessayer.');
      } finally {
        setLoading(false);
      }
    };

    fetchQuiz();
  }, [moduleId]);

  const handleAnswer = (answer) => {
    setSelectedAnswer(answer);
  };

  const handleNext = async () => {
    // Check answer and update score
    if (selectedAnswer === questions[currentQuestionIndex].correctAnswer) {
      setScore(score + 1);
    }

    // Move to next question or show results
    if (currentQuestionIndex < questions.length - 1) {
      setCurrentQuestionIndex(currentQuestionIndex + 1);
      setSelectedAnswer(''); // Reset selected answer for the next question
    } else {
      // End of quiz - save results and show them
      setShowResults(true);
      if (user) {
        setSubmittingResult(true);
        try {
          // Save the final score (including the last question's answer)
          const finalScore = selectedAnswer === questions[currentQuestionIndex].correctAnswer ? score + 1 : score;
          await supabaseService.saveQuizResult(user.id, moduleId, finalScore, questions.length);
          
          // Optionally, mark module as complete based on score
          // const passingScore = questions.length * 0.7; // Example: 70% to pass
          // if (finalScore >= passingScore) {
          //   await supabaseService.updateModuleProgress(user.id, moduleId, true);
          // }
          
        } catch (err) {
          console.error("Error saving quiz result:", err);
          Alert.alert("Erreur", "Impossible d'enregistrer votre score.");
        } finally {
          setSubmittingResult(false);
        }
      }
    }
  };

  const handleRetry = () => {
    setCurrentQuestionIndex(0);
    setSelectedAnswer('');
    setScore(0);
    setShowResults(false);
    setError(null); // Reset error state
    // Re-fetch questions if needed, or just reset state if questions are already loaded
    if (!questions || questions.length === 0) {
       // Trigger fetch again if questions failed to load initially
       const fetchQuiz = async () => { /* ... fetch logic ... */ };
       fetchQuiz();
    }
  };

  // Render Loading State
  if (loading) {
    return (
      <View style={styles.centeredContainer}>
        <ActivityIndicator size="large" color={colors.primary} />
        <Text style={styles.loadingText}>Chargement du quiz...</Text>
      </View>
    );
  }

  // Render Error State
  if (error) {
    return (
      <View style={styles.centeredContainer}>
        <Text style={styles.errorText}>{error}</Text>
        <Button mode="contained" onPress={() => navigation.goBack()} style={styles.button}>
          Retour
        </Button>
      </View>
    );
  }

  // Render Results State
  if (showResults) {
    const finalScore = selectedAnswer === questions[currentQuestionIndex].correctAnswer ? score + 1 : score;
    return (
      <View style={styles.container}>
        <Card style={styles.resultCard}>
          <Card.Content>
            <Title style={styles.resultTitle}>Quiz terminé !</Title>
            <Text style={styles.scoreText}>
              Votre score : {finalScore} / {questions.length}
            </Text>
            <Text style={styles.percentageText}>
              ({questions.length > 0 ? Math.round((finalScore / questions.length) * 100) : 0}%)
            </Text>
            {submittingResult && <ActivityIndicator style={{ marginTop: 10 }} color={colors.primary} />}
          </Card.Content>
        </Card>
        <Button mode="contained" onPress={handleRetry} style={styles.button}>
          Réessayer le Quiz
        </Button>
        <Button mode="outlined" onPress={() => navigation.goBack()} style={styles.button}>
          Retour au Module
        </Button>
      </View>
    );
  }

  // Render Quiz Question State
  const currentQuestion = questions[currentQuestionIndex];
  return (
    <View style={styles.container}>
      <ScrollView>
        <Text style={styles.moduleTitle}>{moduleTitle}</Text>
        <Text style={styles.progress}>
          Question {currentQuestionIndex + 1} / {questions.length}
        </Text>
        
        <Card style={styles.questionCard}>
          <Card.Content>
            <Text style={styles.questionText}>{currentQuestion.question}</Text>
            <RadioButton.Group onValueChange={handleAnswer} value={selectedAnswer}>
              {currentQuestion.options.map((option, index) => (
                <RadioButton.Item
                  key={index}
                  label={option}
                  value={option} // Assuming option value is the string itself
                  style={styles.radioItem}
                  labelStyle={styles.radioLabel}
                  color={colors.primary} // Use theme color for selected radio
                />
              ))}
            </RadioButton.Group>
          </Card.Content>
        </Card>
      </ScrollView>

      <Button 
        mode="contained" 
        onPress={handleNext}
        disabled={!selectedAnswer || submittingResult}
        style={styles.button}
        labelStyle={styles.buttonLabel}
      >
        {currentQuestionIndex < questions.length - 1 ? 'Question Suivante' : 'Terminer le Quiz'}
      </Button>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 16,
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
    color: colors.text,
  },
  errorText: {
    fontSize: 16,
    color: colors.error,
    textAlign: 'center',
    marginBottom: 16,
  },
  moduleTitle: {
    fontSize: 20,
    fontWeight: 'bold',
    textAlign: 'center',
    marginBottom: 10,
    color: colors.text,
  },
  progress: {
    fontSize: 16,
    marginBottom: 16,
    textAlign: 'center',
    color: colors.lightText,
  },
  questionCard: {
    marginBottom: 16,
    elevation: 3,
    backgroundColor: colors.cardBackground,
    borderRadius: 8,
  },
  questionText: {
    fontSize: 18,
    marginBottom: 16,
    lineHeight: 24,
    color: colors.text,
  },
  radioItem: {
    marginVertical: 2,
    paddingVertical: 8, // Add padding for better touch area
    backgroundColor: colors.inputBackground || colors.cardBackground, // Match background
  },
  radioLabel: {
    fontSize: 16,
    color: colors.text,
  },
  button: {
    marginVertical: 8,
    paddingVertical: 6, // Add padding to button
    borderRadius: 20,
  },
  buttonLabel: {
    fontSize: 16,
  },
  resultCard: {
    marginBottom: 20,
    padding: 20,
    elevation: 4,
    backgroundColor: colors.surface,
    borderRadius: 8,
    alignItems: 'center', // Center content within the card
  },
  resultTitle: {
    fontSize: 24,
    fontWeight: 'bold',
    textAlign: 'center',
    marginBottom: 16,
    color: colors.primary,
  },
  scoreText: {
    fontSize: 20,
    textAlign: 'center',
    marginBottom: 8,
    color: colors.text,
  },
  percentageText: {
    fontSize: 18,
    textAlign: 'center',
    color: colors.secondary, // Use a different color for percentage
    marginBottom: 16,
  },
});

export default QuizScreen;

