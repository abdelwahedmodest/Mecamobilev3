import React, { useState, useEffect, useCallback } from 'react';
import { View, StyleSheet, ActivityIndicator, Alert } from 'react-native';
import { Text, Title } from 'react-native-paper';
import YoutubePlayer from 'react-native-youtube-iframe';
import supabaseService from '../services/supabaseService'; // Import Supabase service
import colors from '../constants/colors';

const VideoScreen = ({ route }) => {
  const { moduleId, moduleTitle } = route.params;
  const [moduleData, setModuleData] = useState(null);
  const [playing, setPlaying] = useState(true); // Changed to true for auto-play
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
      <View style={styles.playerWrapper}>
        <YoutubePlayer
          height={250}
          width="100%"
          play={playing}
          videoId={videoId}
          onChangeState={onStateChange}
          onError={onError}
          onReady={() => setLoading(false)}
          initialPlayerParams={{
            preventFullScreen: false,
            controls: true,
            modestbranding: true,
            autoplay: 1,
            rel: 0
          }}
          webViewProps={{
            allowsFullscreenVideo: true,
            androidLayerType: 'hardware'
          }}
        />
      </View>
      <View style={styles.infoContainer}>
        <Text style={styles.videoTitle}>{moduleData.title}</Text>
        <Text style={styles.description}>{moduleData.description}</Text>
      </View>
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
  playerWrapper: {
    width: '100%',
    backgroundColor: '#000',
    borderRadius: 8,
    overflow: 'hidden',
    marginVertical: 16,
    height: 250,
    alignItems: 'center',
    justifyContent: 'center',
    elevation: 4,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.25,
    shadowRadius: 3.84,
  },
  infoContainer: {
    marginTop: 16,
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

