import React, { useState, useEffect, useCallback } from 'react';
import { View, StyleSheet, ActivityIndicator, Alert } from 'react-native';
import { Text, Title } from 'react-native-paper';
import YoutubePlayer from 'react-native-youtube-iframe';
import supabaseService from '../services/supabaseService'; // Import Supabase service
import colors from '../constants/colors';

const VideoScreen = ({ route }) => {
  const { moduleId, moduleTitle } = route.params;
  const [moduleData, setModuleData] = useState(null);
  const [playing, setPlaying] = useState(false);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  // Fetch module data from Supabase
  useEffect(() => {
    const fetchModuleData = async () => {
      try {
        setLoading(true);
        setError(null);
        const data = await supabaseService.getModuleById(moduleId);
        if (!data) {
          throw new Error('Module non trouvé.');
        }
        // Check if video URL exists in the fetched data
        // Adjust 'video_url' if the field name is different in your Supabase table
        if (!data.video_url) {
          setError('Aucune vidéo disponible pour ce module.');
        } else {
          setModuleData(data);
        }
      } catch (err) {
        console.error('Error fetching module data:', err);
        setError(err.message || 'Impossible de charger les informations de la vidéo.');
      } finally {
        setLoading(false);
      }
    };

    fetchModuleData();
  }, [moduleId]);

  // Extract video ID from YouTube URL
  const getYoutubeId = (url) => {
    if (!url) return null;
    const regExp = /^.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|&v=)([^#&?]*).*/;
    const match = url.match(regExp);
    return (match && match[2].length === 11) ? match[2] : null;
  };

  const videoId = moduleData ? getYoutubeId(moduleData.video_url) : null;

  const onStateChange = useCallback((state) => {
    if (state === 'ended') {
      setPlaying(false);
      // Optionally mark module as complete or update progress here
      // Alert.alert("Vidéo terminée", "Vous avez terminé de regarder cette vidéo.");
    }
    // Handle other states if needed (e.g., 'playing', 'paused')
  }, []);

  const onError = useCallback((e) => {
    console.error("YouTube Player Error:", e);
    Alert.alert("Erreur Lecteur Vidéo", "Impossible de charger la vidéo YouTube. Vérifiez votre connexion ou l'URL de la vidéo.");
    setError("Erreur lors du chargement de la vidéo."); // Set error state to show message
  }, []);

  // Render Loading State
  if (loading) {
    return (
      <View style={styles.centeredContainer}>
        <ActivityIndicator size="large" color={colors.primary} />
        <Text style={styles.loadingText}>Chargement de la vidéo...</Text>
      </View>
    );
  }

  // Render Error State (including no video found or player error)
  if (error || !videoId) {
    return (
      <View style={styles.centeredContainer}>
        <Title style={styles.title}>{moduleTitle}</Title>
        <Text style={styles.errorText}>{error || 'Vidéo non trouvée ou ID invalide.'}</Text>
        {/* Optionally add a retry button or go back button */}
      </View>
    );
  }

  // Render Video Player
  return (
    <View style={styles.container}>
      <Title style={styles.title}>{moduleTitle}</Title>
      <View style={styles.videoContainer}>
        {/* Show loader until player is ready */}
        {loading && (
          <ActivityIndicator 
            style={styles.loader} 
            size="large" 
            color={colors.primary} 
          />
        )}
        <YoutubePlayer
          height={220} // Adjust height as needed
          play={playing}
          videoId={videoId}
          onChangeState={onStateChange}
          onError={onError}
          onReady={() => setLoading(false)} // Hide loader when player is ready
          webViewStyle={{ opacity: loading ? 0 : 1 }} // Hide webview until ready
        />
      </View>
      <View style={styles.infoContainer}>
        {/* Display title from module data */}
        <Text style={styles.videoTitle}>{moduleData.title || 'Titre non disponible'}</Text>
        {/* Display description or relevant text from module data */}
        {/* Adjust 'description' or 'text_content' based on your Supabase table */}
        <Text style={styles.description}>
          {moduleData.description || moduleData.text_content || 'Description non disponible.'}
        </Text>
      </View>
      {/* Add playback controls if needed */}
      {/* <Button onPress={() => setPlaying(!playing)}>{playing ? 'Pause' : 'Play'}</Button> */}
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: colors.background,
    padding: 16,
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
    marginTop: 10,
  },
  title: {
    fontSize: 22, // Slightly smaller title
    fontWeight: 'bold',
    marginBottom: 16,
    color: colors.text,
    textAlign: 'center',
  },
  videoContainer: {
    width: '100%',
    aspectRatio: 16 / 9, // Maintain aspect ratio
    backgroundColor: '#000',
    borderRadius: 8,
    overflow: 'hidden',
    marginBottom: 16,
    justifyContent: 'center', // Center loader
    alignItems: 'center', // Center loader
  },
  loader: {
    // Removed absolute positioning, centered by container
    zIndex: 1,
  },
  infoContainer: {
    padding: 16,
    backgroundColor: colors.surface,
    borderRadius: 8,
    elevation: 2,
  },
  videoTitle: {
    fontSize: 18,
    fontWeight: '600',
    marginBottom: 8,
    color: colors.text,
  },
  description: {
    fontSize: 15,
    color: colors.text,
    lineHeight: 22,
  },
});

export default VideoScreen;

