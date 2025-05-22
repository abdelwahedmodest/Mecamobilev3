import React, { useState } from 'react';
import { View, StyleSheet, Image, ScrollView } from 'react-native';
import { Text, Card, ActivityIndicator } from 'react-native-paper';
import { LESSON_CONTENT } from '../data/courseData';

const ImageScreen = ({ route }) => {
  const { moduleId, moduleTitle } = route.params;
  const [loading, setLoading] = useState(true);

  // Get content from LESSON_CONTENT
  const lessonContent = LESSON_CONTENT[moduleId];

  if (!lessonContent || !lessonContent.imageUrl) {
    return (
      <View style={styles.container}>
        <Text style={styles.title}>{moduleTitle}</Text>
        <Text>Aucune image disponible pour ce module.</Text>
      </View>
    );
  }

  const handleImageLoad = () => {
    setLoading(false);
  };

  return (
    <ScrollView style={styles.container}>
      <Text style={styles.title}>{moduleTitle}</Text>
      
      <Card style={styles.card}>
        <View style={styles.imageContainer}>
          {loading && (
            <ActivityIndicator
              style={styles.loader}
              size="large"
              color="#007AFF"
            />
          )}
          <Image
            source={{ uri: lessonContent.imageUrl }}
            style={styles.image}
            onLoad={handleImageLoad}
            resizeMode="contain"
          />
        </View>
        <Card.Content>
          <Text style={styles.imageTitle}>{lessonContent.title}</Text>
          <Text style={styles.description}>
            {lessonContent.textContent.split('\n\n')[0]}
          </Text>
        </Card.Content>
      </Card>
    </ScrollView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#f5f5f5',
    padding: 16,
  },
  title: {
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 16,
    color: '#333',
  },
  card: {
    marginBottom: 16,
    elevation: 4,
    borderRadius: 8,
    overflow: 'hidden',
  },
  imageContainer: {
    width: '100%',
    height: 250,
    backgroundColor: '#f0f0f0',
    justifyContent: 'center',
    alignItems: 'center',
  },
  image: {
    width: '100%',
    height: '100%',
  },
  loader: {
    position: 'absolute',
    zIndex: 1,
  },
  imageTitle: {
    fontSize: 18,
    fontWeight: '600',
    marginTop: 8,
    marginBottom: 8,
    color: '#333',
  },
  description: {
    fontSize: 16,
    color: '#666',
    lineHeight: 24,
    marginBottom: 8,
  },
});

export default ImageScreen;