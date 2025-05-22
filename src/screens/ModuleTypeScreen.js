import React from 'react';
import { View, StyleSheet, TouchableOpacity } from 'react-native';
import { Card, Title, Text } from 'react-native-paper';
import Icon from 'react-native-vector-icons/MaterialCommunityIcons';

const ModuleTypeScreen = ({ route, navigation }) => {
  const { moduleId, moduleTitle, courseId } = route.params;

  const navigateToContent = (type) => {
    switch (type) {
      case 'text':
        navigation.navigate('ContentScreen', { moduleId, moduleTitle, courseId });
        break;
      case 'image':
        navigation.navigate('ImageScreen', { moduleId, moduleTitle, courseId });
        break;
      case 'video':
        navigation.navigate('VideoScreen', { moduleId, moduleTitle, courseId });
        break;
      case 'quiz':
        navigation.navigate('Quiz', { moduleId, moduleTitle, courseId }); // Changed from 'QuizScreen' to 'Quiz'
        break;
    }
  };

  return (
    <View style={styles.container}>
      <TouchableOpacity onPress={() => navigateToContent('text')}>
        <Card style={styles.card}>
          <Card.Content style={styles.cardContent}>
            <Icon name="text" size={40} color="#007AFF" />
            <Title>Contenu Textuel</Title>
            <Text>Lire le contenu du module</Text>
          </Card.Content>
        </Card>
      </TouchableOpacity>

      <TouchableOpacity onPress={() => navigateToContent('image')}>
        <Card style={styles.card}>
          <Card.Content style={styles.cardContent}>
            <Icon name="image" size={40} color="#007AFF" />
            <Title>Contenu Image</Title>
            <Text>Voir les images du module</Text>
          </Card.Content>
        </Card>
      </TouchableOpacity>

      <TouchableOpacity onPress={() => navigateToContent('video')}>
        <Card style={styles.card}>
          <Card.Content style={styles.cardContent}>
            <Icon name="play-circle" size={40} color="#007AFF" />
            <Title>Contenu Vidéo</Title>
            <Text>Regarder les vidéos du module</Text>
          </Card.Content>
        </Card>
      </TouchableOpacity>

      <TouchableOpacity onPress={() => navigateToContent('quiz')}>
        <Card style={styles.card}>
          <Card.Content style={styles.cardContent}>
            <Icon name="help-circle" size={40} color="#007AFF" />
            <Title>Quiz</Title>
            <Text>Tester vos connaissances</Text>
          </Card.Content>
        </Card>
      </TouchableOpacity>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 16,
    backgroundColor: '#f5f5f5',
  },
  card: {
    marginBottom: 16,
    elevation: 4,
  },
  cardContent: {
    alignItems: 'center',
    padding: 16,
  },
});

export default ModuleTypeScreen;