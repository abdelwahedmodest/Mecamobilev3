// Importation des dépendances React nécessaires
import React, { useRef, useState } from 'react';
import {
  Button,
  Dimensions,     // Pour obtenir les dimensions de l'écran
  Image,          // Pour afficher des images
  Linking,        // Pour ouvrir des URLs externes
  ScrollView,     // Pour le défilement
  StyleSheet,     // Pour la stylisation
  Text,           // Pour afficher du texte
  TouchableOpacity, // Pour les boutons personnalisés
  View,           // Pour les conteneurs
  Animated        // Pour les animations
} from 'react-native';
import Icon from 'react-native-vector-icons/MaterialIcons'; // Pour les icônes Material Design
import { LESSON_CONTENT } from '../data/courseData'; // Données des leçons

// Composant principal de l'écran de leçon
const LessonScreen = ({ route, navigation }) => {
  // Extraction des paramètres de navigation
  const { moduleId, moduleTitle } = route.params;
  // Récupération des données de la leçon
  const lesson = LESSON_CONTENT[moduleId];
  
  // Références et états
  const scrollViewRef = useRef(null);                          // Référence pour le ScrollView
  const [imageError, setImageError] = useState(false);         // Gestion des erreurs d'image
  const [scrollViewHeight, setScrollViewHeight] = useState(0); // Hauteur de la vue scrollable
  const [contentHeight, setContentHeight] = useState(0);       // Hauteur du contenu
  const scrollY = useRef(new Animated.Value(0)).current;      // Position de défilement animée

  // Dimensions de l'écran (only keep what's used)
  const windowWidth = Dimensions.get('window').width;

  // Gestion du cas où la leçon n'existe pas
  if (!lesson) {
    return (
      <View style={styles.container}>
        <Text style={styles.lessonTitle}>Contenu non trouvé</Text>
        <Text>Le contenu de cette leçon est pas encore disponible.</Text>
        <Button title="Retour au module" onPress={() => navigation.goBack()} />
      </View>
    );
  }

  // Fonction pour ouvrir les vidéos externes
  const openVideo = () => {
    if (lesson.videoUrl) {
      Linking.canOpenURL(lesson.videoUrl).then(supported => {
        if (supported) {
          Linking.openURL(lesson.videoUrl);
        } else {
          alert("Impossible d'ouvrir le lien vidéo.");
        }
      });
    }
  };

  // Fonctions de défilement
  const scrollToTop = () => {
    scrollViewRef.current?.scrollTo({ y: 0, animated: true });
  };

  const scrollToBottom = () => {
    scrollViewRef.current?.scrollToEnd({ animated: true });
  };

  // Gestionnaire d'événement de défilement pour l'animation
  const handleScroll = Animated.event(
    [{ nativeEvent: { contentOffset: { y: scrollY } } }],
    { useNativeDriver: false }
  );

  // Structure du rendu
  return (
    <View style={styles.mainContainer}>
      <View style={styles.scrollContainer}>
        {/* ScrollView principal avec gestion du défilement */}
        <ScrollView 
          ref={scrollViewRef}
          style={styles.scrollView}
          contentContainerStyle={styles.contentContainer}
          showsVerticalScrollIndicator={false}
          scrollEventThrottle={16}
          onScroll={handleScroll}
          onLayout={(event) => {
            setScrollViewHeight(event.nativeEvent.layout.height);
          }}
          onContentSizeChange={(width, height) => {
            setContentHeight(height);
          }}
        >
          {/* Contenu de la leçon */}
          <View style={styles.content}>
            {/* En-tête de la leçon */}
            <Text style={styles.moduleTitleText}>Module : {moduleTitle}</Text>
            <Text style={styles.lessonTitle}>{lesson.title}</Text>
            
            {/* Contenu textuel */}
            <View style={styles.textWrapper}>
              <Text style={styles.textContent}>
                {lesson.textContent}
              </Text>
            </View>
            
            {/* Image de la leçon avec gestion des erreurs */}
            {lesson.imageUrl && 
              <View style={styles.imageContainer}>
                <Image 
                  source={imageError ? require('../assets/placeholder.png') : { uri: lesson.imageUrl }}
                  style={[styles.image, { width: windowWidth - 32 }]}
                  resizeMode="contain"
                  onError={() => setImageError(true)}
                />
              </View>
            }
            
            {/* Section vidéo si disponible */}
            {lesson.videoUrl && 
              <View style={styles.videoContainer}>
                <TouchableOpacity 
                  style={styles.videoButton} 
                  onPress={openVideo}
                >
                  <Icon name="play-circle-filled" size={50} color="#2196F3" />
                  <Text style={styles.videoButtonText}>Regarder la vidéo</Text>
                </TouchableOpacity>
                <Text style={styles.videoNote}>Remarque : Ceci ouvrira YouTube ou un navigateur.</Text>
              </View>
            }

            {/* Boutons de navigation */}
            <View style={styles.navigationButtons}>
              <Button title="Leçon Précédente" onPress={() => alert('Logique de navigation vers leçon précédente à implémenter')} disabled />
              <Button title="Leçon Suivante" onPress={() => alert('Logique de navigation vers leçon suivante à implémenter')} disabled />
            </View>
            <Button title="Marquer comme terminé et retourner" onPress={() => navigation.goBack()} />
            <View style={styles.quizButtonContainer}>
              <Button title="Passer au Quiz du Module" onPress={() => navigation.navigate('Quiz', { moduleId: moduleId, moduleTitle: moduleTitle })} />
            </View>
          </View>
        </ScrollView>

        {/* Barre de défilement personnalisée */}
        {contentHeight > scrollViewHeight && (
          <Animated.View
            style={[
              styles.customScrollbar,
              {
                height: scrollViewHeight * (scrollViewHeight / contentHeight),
                transform: [{
                  translateY: scrollY.interpolate({
                    inputRange: [0, contentHeight - scrollViewHeight],
                    outputRange: [0, scrollViewHeight - (scrollViewHeight * (scrollViewHeight / contentHeight))],
                    extrapolate: 'clamp'
                  })
                }]
              }
            ]}
          />
        )}
      </View>
      
      {/* Boutons de défilement rapide */}
      <View style={styles.scrollButtons}>
        <TouchableOpacity 
          style={styles.scrollButton} 
          onPress={scrollToTop}
        >
          <Icon name="keyboard-arrow-up" size={24} color="#ffffff" />
        </TouchableOpacity>
        
        <TouchableOpacity 
          style={styles.scrollButton} 
          onPress={scrollToBottom}
        >
          <Icon name="keyboard-arrow-down" size={24} color="#ffffff" />
        </TouchableOpacity>
      </View>
    </View>
  );
};

// Styles du composant
const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 16,
    backgroundColor: '#ffffff',
  },
  moduleTitleText: {
    fontSize: 16,
    color: '#555',
    marginBottom: 8,
    textAlign: 'center',
  },
  lessonTitle: {
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 16,
    textAlign: 'center',
    color: '#333',
  },
  image: {
    height: 220,
    backgroundColor: '#f5f5f5',
  },
  textContent: {
    fontSize: 16,
    lineHeight: 24,
    color: '#444',
    textAlign: 'justify',
  },
  videoContainer: {
    width: '100%',
    marginVertical: 16,
  },
  videoNote: {
    fontSize: 12,
    color: '#777',
    marginTop: 8,
  },
  navigationButtons: {
    flexDirection: "row",
    justifyContent: "space-between",
    marginBottom: 20,
    marginTop: 10,
  },
  quizButtonContainer: {
    marginTop: 15,
    marginBottom: 20,
  },
  containerWithButtons: {
    flex: 1,
    backgroundColor: '#ffffff',
  },
  scrollButtons: {
    position: 'absolute',
    right: 16,
    bottom: 16,
    flexDirection: 'column',
    gap: 8,
  },
  scrollButton: {
    backgroundColor: '#EA3680',
    width: 40,
    height: 40,
    borderRadius: 20,
    justifyContent: 'center',
    alignItems: 'center',
    elevation: 4,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.25,
    shadowRadius: 4,
  },
  scrollableText: {
    flex: 1,
    paddingBottom: 20,
  },
  scrollView: {
    flex: 1,
    width: '100%',
  },
  contentContainer: {
    flexGrow: 1,
    paddingHorizontal: 16,
    paddingBottom: 80, // Space for scroll buttons
    paddingRight: 20, // Add space for custom scrollbar
  },
  textWrapper: {
    marginVertical: 8,
  },
  mainContainer: {
    flex: 1,
    backgroundColor: '#ffffff',
  },
  content: {
    padding: 16,
  },
  imageContainer: {
    width: '100%',
    alignItems: 'center',
    marginVertical: 16,
    backgroundColor: '#f5f5f5',
    borderRadius: 8,
    overflow: 'hidden',
  },
  videoButton: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: '#f5f5f5',
    padding: 16,
    borderRadius: 8,
    width: '100%',
    justifyContent: 'center',
  },
  videoButtonText: {
    marginLeft: 10,
    fontSize: 16,
    color: '#2196F3',
    fontWeight: 'bold',
  },
  scrollContainer: {
    flex: 1,
    flexDirection: 'row',
  },
  customScrollbar: {
    width: 6,
    backgroundColor: '#EA3680',
    borderRadius: 3,
    position: 'absolute',
    right: 2,
    opacity: 0.7,
  },
});

export default LessonScreen;
