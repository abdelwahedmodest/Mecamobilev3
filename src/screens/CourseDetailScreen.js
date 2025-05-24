import React, { useState, useEffect, useContext } from 'react';
import { View, Text, StyleSheet, ScrollView, Button, Image, ActivityIndicator, Alert } from 'react-native';
import supabaseService from '../services/supabaseService'; // Import Supabase service
import colors from '../constants/colors';
import { AuthContext } from '../context/AuthContext'; // Import AuthContext to get user ID

const CourseDetailScreen = ({ route, navigation }) => {
  const { courseId } = route.params;
  const { user } = useContext(AuthContext); // Get user from context
  const [course, setCourse] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [enrolling, setEnrolling] = useState(false);

  useEffect(() => {
    const fetchCourseDetails = async () => {
      try {
        setLoading(true);
        setError(null);
        const courseData = await supabaseService.getCourseById(courseId);
        
        if (!courseData) {
          throw new Error('Cours non trouvé.');
        }

        // Adapt data structure
        const adaptedCourse = {
          ...courseData,
          id: courseData.course_id,
          image: courseData.image_url ? { uri: courseData.image_url } : null, // Handle potential null image_url
          modules: courseData.Modules.map(mod => ({ // Map Modules array
            ...mod,
            id: mod.module_id, // Map module ID
            duration: mod.duration || 'N/A' // Provide default if duration is null
          }))
        };
        setCourse(adaptedCourse);
      } catch (err) {
        console.error('Error fetching course details:', err);
        setError(err.message || 'Impossible de charger les détails du cours.');
      } finally {
        setLoading(false);
      }
    };

    fetchCourseDetails();
  }, [courseId]);

  const handleEnroll = async () => {
    if (!user) {
      Alert.alert("Erreur", "Vous devez être connecté pour vous inscrire.");
      // Optionally navigate to Login screen
      // navigation.navigate('Login'); 
      return;
    }
    
    setEnrolling(true);
    try {
      // Check if already enrolled (optional but good practice)
      // const enrollments = await supabaseService.getUserEnrollments(user.id);
      // const isEnrolled = enrollments.some(enrollment => enrollment.course_id === courseId);
      // if (isEnrolled) {
      //   Alert.alert("Information", "Vous êtes déjà inscrit à ce cours.");
      //   return;
      // }

      await supabaseService.enrollUserInCourse(user.id, courseId);
      Alert.alert("Succès", `Vous êtes maintenant inscrit au cours : ${course.title}`)
      // Optionally navigate somewhere or update UI state
    } catch (err) {
      console.error("Error enrolling in course:", err);
      Alert.alert("Erreur", "Une erreur est survenue lors de l'inscription. Veuillez réessayer.");
    } finally {
      setEnrolling(false);
    }
  };

  if (loading) {
    return (
      <View style={styles.centeredContainer}>
        <ActivityIndicator size="large" color={colors.primary} />
        <Text style={styles.loadingText}>Chargement des détails...</Text>
      </View>
    );
  }

  if (error || !course) {
    return (
      <View style={styles.centeredContainer}>
        <Text style={styles.errorText}>{error || 'Cours non trouvé'}</Text>
        <Button title="Retour à la liste" onPress={() => navigation.goBack()} />
      </View>
    );
  }

  return (
    <ScrollView style={styles.container}>
      <Text style={styles.title}>{course.title}</Text>
      {course.image && 
        <Image source={course.image} style={styles.courseImage} resizeMode="cover" />
      }
      <Text style={styles.description}>{course.description}</Text>
      
      <Text style={styles.modulesHeader}>Modules du Cours :</Text>
      {course.modules && course.modules.length > 0 ? (
        course.modules.map(module => (
          <View key={module.id} style={styles.moduleItem}>
            <Text style={styles.moduleTitle}>{module.title}</Text>
            <Text style={styles.moduleDuration}>Durée : {module.duration}</Text>
            <Button 
              title="Voir le module"
              onPress={() => navigation.navigate('ModuleType', { 
                moduleId: module.id, // Use mapped module ID
                moduleTitle: module.title, 
                courseId: course.id // Use mapped course ID
              })}
              color={colors.primary} // Use theme color
            />
          </View>
        ))
      ) : (
        <Text style={styles.noModulesText}>Aucun module disponible pour ce cours pour le moment.</Text>
      )}

      <View style={styles.enrollButtonContainer}>
        <Button 
          title={enrolling ? "Inscription en cours..." : "S'inscrire à ce cours"} 
          onPress={handleEnroll} 
          disabled={enrolling} 
          color={colors.secondary} // Use theme color
        />
      </View>
    </ScrollView>
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
    color: colors.text, // Use theme color
  },
  errorText: {
    fontSize: 16,
    color: colors.error, // Use theme color
    textAlign: 'center',
    marginBottom: 15,
  },
  title: {
    fontSize: 26,
    fontWeight: 'bold',
    marginBottom: 12,
    textAlign: 'center',
    color: colors.text, // Use theme color
  },
  courseImage: {
    width: '100%',
    height: 200,
    borderRadius: 8,
    marginBottom: 15,
    backgroundColor: colors.lightGray, // Placeholder background
  },
  description: {
    fontSize: 16,
    color: colors.text, // Use theme color
    marginBottom: 20,
    lineHeight: 22,
    textAlign: 'justify',
  },
  modulesHeader: {
    fontSize: 20,
    fontWeight: 'bold',
    marginBottom: 10,
    color: colors.text, // Use theme color
  },
  moduleItem: {
    backgroundColor: colors.cardBackground, // Use theme color
    padding: 15,
    marginBottom: 10,
    borderRadius: 8,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 1 },
    shadowOpacity: 0.1,
    shadowRadius: 3,
    elevation: 2,
  },
  moduleTitle: {
    fontSize: 18,
    fontWeight: '600',
    marginBottom: 5,
    color: colors.text, // Use theme color
  },
  moduleDuration: {
    fontSize: 14,
    color: colors.lightText, // Use theme color
    marginBottom: 10,
  },
  noModulesText: {
    fontSize: 14,
    color: colors.lightText,
    textAlign: 'center',
    marginTop: 10,
    marginBottom: 20,
  },
  enrollButtonContainer: {
    marginTop: 20,
    marginBottom: 40, // Add more space at the bottom
  },
});

export default CourseDetailScreen;

