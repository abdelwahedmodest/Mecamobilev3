import React, { useState, useCallback } from 'react';
import { View, StyleSheet, Dimensions } from 'react-native';
import { Text } from 'react-native-paper';
import YoutubePlayer from 'react-native-youtube-iframe';
import { ActivityIndicator } from 'react-native-paper';
import { LESSON_CONTENT } from '../data/courseData';

const VideoScreen = ({ route }) => {
  const { moduleId, moduleTitle } = route.params;
  const [playing, setPlaying] = useState(false);
  const [loading, setLoading] = useState(true);

  // Get content from LESSON_CONTENT
  const lessonContent = LESSON_CONTENT[moduleId];

  if (!lessonContent || !lessonContent.videoUrl) {
    return (
      <View style={styles.container}>
        <Text style={styles.title}>{moduleTitle}</Text>
        <Text>Aucune vidéo disponible pour ce module.</Text>
      </View>
    );
  }

  // Extract video ID from YouTube URL
  const getYoutubeId = (url) => {
    const regExp = /^.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|&v=)([^#&?]*).*/;
    const match = url.match(regExp);
    return (match && match[2].length === 11) ? match[2] : null;
  };

  const videoId = getYoutubeId(lessonContent.videoUrl);

  const onStateChange = useCallback((state) => {
    if (state === 'ended') {
      setPlaying(false);
    }
  }, []);

  return (
    <View style={styles.container}>
      <Text style={styles.title}>{moduleTitle}</Text>
      <View style={styles.videoContainer}>
        {loading && (
          <ActivityIndicator 
            style={styles.loader} 
            size="large" 
            color="#007AFF" 
          />
        )}
        <YoutubePlayer
          height={220}
          play={playing}
          videoId={videoId}
          onChangeState={onStateChange}
          onReady={() => setLoading(false)}
        />
      </View>
      <View style={styles.infoContainer}>
        <Text style={styles.videoTitle}>{lessonContent.title}</Text>
        <Text style={styles.description}>
          {lessonContent.textContent.split('\n\n')[0]}
        </Text>
      </View>
    </View>
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
  videoContainer: {
    width: '100%',
    backgroundColor: '#000',
    borderRadius: 8,
    overflow: 'hidden',
    marginBottom: 16,
  },
  loader: {
    position: 'absolute',
    top: '50%',
    left: '50%',
    transform: [{ translateX: -15 }, { translateY: -15 }],
    zIndex: 1,
  },
  infoContainer: {
    padding: 16,
    backgroundColor: '#fff',
    borderRadius: 8,
  },
  videoTitle: {
    fontSize: 18,
    fontWeight: '600',
    marginBottom: 8,
    color: '#333',
  },
  description: {
    fontSize: 16,
    color: '#666',
    lineHeight: 24,
  },
});

export default VideoScreen;