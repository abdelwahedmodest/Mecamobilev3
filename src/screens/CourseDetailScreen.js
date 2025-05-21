import React, { useState } from 'react';
import { View, StyleSheet, ScrollView, TouchableOpacity } from 'react-native';
import { Button, Card, Paragraph, Surface, Text, Title, Chip, Divider, ActivityIndicator } from 'react-native-paper';
import { MaterialCommunityIcons } from '@expo/vector-icons';
import colors from '../constants/colors';
import { COURSE_DATA } from '../data/courseData';

const CourseDetailScreen = ({ route, navigation }) => {
  const { courseId, courseTitle } = route.params;
  const [loading, setLoading] = useState(false);
  const [enrolled, setEnrolled] = useState(false);
  
  // Get course data based on courseId
  const course = COURSE_DATA[courseId] || {
    id: courseId,
    title: courseTitle || 'Détail du cours',
    description: 'Description du cours non disponible.',
    instructor: 'Instructeur inconnu',
    duration: 'Non spécifié',
    level: 'Tous niveaux',
    modules: [],
    tags: ['Mécanique'],
    imageUrl: null,
  };

  const handleEnroll = () => {
    setLoading(true);
    // Simulate API call
    setTimeout(() => {
      setEnrolled(true);
      setLoading(false);
    }, 1000);
  };

  const handleStartModule = (moduleId, moduleTitle) => {
    navigation.navigate('Lesson', { moduleId, moduleTitle, courseId });
  };

  return (
    <ScrollView style={styles.container}>
      <Surface style={styles.headerCard}>
        {course.imageUrl ? (
          <Card.Cover 
            source={{ uri: course.imageUrl }} 
            style={styles.courseImage}
          />
        ) : (
          <View style={styles.placeholderImage}>
            <MaterialCommunityIcons name="car-wrench" size={80} color={colors.lightText} />
          </View>
        )}
        
        <View style={styles.headerContent}>
          <Title style={styles.courseTitle}>{course.title}</Title>
          
          <View style={styles.metaContainer}>
            <View style={styles.metaItem}>
              <MaterialCommunityIcons name="account" size={18} color={colors.primary} />
              <Text style={styles.metaText}>{course.instructor}</Text>
            </View>
            
            <View style={styles.metaItem}>
              <MaterialCommunityIcons name="clock-outline" size={18} color={colors.primary} />
              <Text style={styles.metaText}>{course.duration}</Text>
            </View>
            
            <View style={styles.metaItem}>
              <MaterialCommunityIcons name="signal" size={18} color={colors.primary} />
              <Text style={styles.metaText}>{course.level}</Text>
            </View>
          </View>
          
          <View style={styles.tagsContainer}>
            {course.tags.map((tag, index) => (
              <Chip 
                key={index} 
                style={styles.tag}
                textStyle={styles.tagText}
              >
                {tag}
              </Chip>
            ))}
          </View>
        </View>
      </Surface>
      
      <Surface style={styles.sectionCard}>
        <Title style={styles.sectionTitle}>À propos de ce cours</Title>
        <Paragraph style={styles.description}>
          {course.description}
        </Paragraph>
      </Surface>
      
      <Surface style={styles.sectionCard}>
        <Title style={styles.sectionTitle}>Contenu du cours</Title>
        
        {course.modules && course.modules.length > 0 ? (
          course.modules.map((module, index) => (
            <Card key={index} style={styles.moduleCard}>
              <Card.Content>
                <View style={styles.moduleHeader}>
                  <View style={styles.moduleNumberContainer}>
                    <Text style={styles.moduleNumber}>{index + 1}</Text>
                  </View>
                  <View style={styles.moduleTitleContainer}>
                    <Text style={styles.moduleTitle}>{module.title}</Text>
                    <Text style={styles.moduleDuration}>{module.duration || '30 min'}</Text>
                  </View>
                </View>
                
                <Divider style={styles.moduleDivider} />
                
                <Paragraph style={styles.moduleDescription}>
                  {module.description || 'Aucune description disponible pour ce module.'}
                </Paragraph>
                
                <Button 
                  mode="contained" 
                  style={styles.startButton}
                  disabled={!enrolled}
                  onPress={() => handleStartModule(module.id, module.title)}
                >
                  {enrolled ? 'Commencer' : 'Inscrivez-vous pour accéder'}
                </Button>
              </Card.Content>
            </Card>
          ))
        ) : (
          <View style={styles.emptyState}>
            <MaterialCommunityIcons name="book-open-page-variant" size={50} color={colors.lightText} />
            <Text style={styles.emptyStateText}>Aucun module disponible pour ce cours.</Text>
          </View>
        )}
      </Surface>
      
      {!enrolled && (
        <Surface style={styles.enrollCard}>
          <View style={styles.enrollContent}>
            <View>
              <Text style={styles.enrollTitle}>Prêt à commencer?</Text>
              <Text style={styles.enrollSubtitle}>Inscrivez-vous maintenant pour accéder à tous les modules</Text>
            </View>
            
            <Button 
              mode="contained" 
              style={styles.enrollButton}
              loading={loading}
              disabled={loading}
              onPress={handleEnroll}
              icon="check-circle"
            >
              {loading ? 'Inscription...' : "S'inscrire"}
            </Button>
          </View>
        </Surface>
      )}
    </ScrollView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: colors.background,
  },
  headerCard: {
    margin: 16,
    marginBottom: 8,
    borderRadius: 12,
    overflow: 'hidden',
    elevation: 2,
  },
  courseImage: {
    height: 200,
  },
  placeholderImage: {
    height: 200,
    backgroundColor: colors.divider,
    justifyContent: 'center',
    alignItems: 'center',
  },
  headerContent: {
    padding: 16,
  },
  courseTitle: {
    fontSize: 22,
    fontWeight: 'bold',
    marginBottom: 12,
  },
  metaContainer: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    marginBottom: 12,
  },
  metaItem: {
    flexDirection: 'row',
    alignItems: 'center',
    marginRight: 16,
    marginBottom: 8,
  },
  metaText: {
    marginLeft: 4,
    color: colors.lightText,
    fontSize: 14,
  },
  tagsContainer: {
    flexDirection: 'row',
    flexWrap: 'wrap',
  },
  tag: {
    marginRight: 8,
    marginBottom: 8,
    backgroundColor: colors.highlight,
  },
  tagText: {
    color: colors.primary,
  },
  sectionCard: {
    margin: 16,
    marginTop: 8,
    padding: 16,
    borderRadius: 12,
    elevation: 2,
  },
  sectionTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 12,
  },
  description: {
    fontSize: 15,
    lineHeight: 22,
    color: colors.text,
  },
  moduleCard: {
    marginBottom: 12,
    borderRadius: 8,
    elevation: 1,
  },
  moduleHeader: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 12,
  },
  moduleNumberContainer: {
    width: 36,
    height: 36,
    borderRadius: 18,
    backgroundColor: colors.primary,
    justifyContent: 'center',
    alignItems: 'center',
    marginRight: 12,
  },
  moduleNumber: {
    color: 'white',
    fontWeight: 'bold',
    fontSize: 16,
  },
  moduleTitleContainer: {
    flex: 1,
  },
  moduleTitle: {
    fontSize: 16,
    fontWeight: '600',
  },
  moduleDuration: {
    fontSize: 12,
    color: colors.lightText,
    marginTop: 2,
  },
  moduleDivider: {
    marginBottom: 12,
  },
  moduleDescription: {
    fontSize: 14,
    marginBottom: 16,
    color: colors.lightText,
  },
  startButton: {
    alignSelf: 'flex-end',
  },
  emptyState: {
    alignItems: 'center',
    padding: 24,
  },
  emptyStateText: {
    marginTop: 16,
    fontSize: 16,
    color: colors.lightText,
    textAlign: 'center',
  },
  enrollCard: {
    margin: 16,
    borderRadius: 12,
    overflow: 'hidden',
    elevation: 4,
    backgroundColor: colors.primary,
  },
  enrollContent: {
    padding: 16,
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
  },
  enrollTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    color: 'white',
  },
  enrollSubtitle: {
    fontSize: 14,
    color: 'rgba(255, 255, 255, 0.8)',
    marginTop: 4,
    maxWidth: 200,
  },
  enrollButton: {
    backgroundColor: 'white',
  },
});

export default CourseDetailScreen;
