import React from 'react';
import { View, Text, StyleSheet, ScrollView, TouchableOpacity } from 'react-native';
import { Card, Title, Paragraph, ProgressBar, Surface, Avatar, Divider, Button, IconButton } from 'react-native-paper';
import { MaterialCommunityIcons } from '@expo/vector-icons';
import colors from '../constants/colors';

// Exemple de données utilisateur - À remplacer par des données réelles plus tard
const USER_DATA = {
  name: 'abdelwahed samil',
  coursesEnrolled: [
    { id: '1', title: 'Introduction à la Mécanique Moteur', progress: 0.75 },
    { id: '2', title: 'Systèmes de Freinage : Théorie et Pratique', progress: 0.40 },
  ],
};

const HomeScreen = ({ navigation }) => {
  return (
    <ScrollView style={styles.container}>
      <Surface style={styles.welcomeSection}>
        <View style={styles.welcomeHeader}>
          <View>
            <Text style={styles.welcomeText}>Bienvenue,</Text>
            <Text style={styles.userName}>{USER_DATA.name}</Text>
          </View>
          <Avatar.Text 
            size={50} 
            label={USER_DATA.name.split(' ').map(n => n[0]).join('')} 
            backgroundColor={colors.primary}
            color={colors.surface}
          />
        </View>
        
        <View style={styles.statsContainer}>
          <Surface style={styles.statCard}>
            <Text style={styles.statNumber}>{USER_DATA.coursesEnrolled.length}</Text>
            <Text style={styles.statLabel}>Cours</Text>
          </Surface>
          <Surface style={styles.statCard}>
            <Text style={styles.statNumber}>2</Text>
            <Text style={styles.statLabel}>En cours</Text>
          </Surface>
          <Surface style={styles.statCard}>
            <Text style={styles.statNumber}>0</Text>
            <Text style={styles.statLabel}>Terminés</Text>
          </Surface>
        </View>
      </Surface>
      
      <View style={styles.sectionHeader}>
        <Text style={styles.sectionTitle}>Vos cours en cours</Text>
        <Button 
          mode="text" 
          compact 
          onPress={() => navigation.navigate('Courses')}
        >
          Voir tout
        </Button>
      </View>
      
      {USER_DATA.coursesEnrolled.length > 0 ? (
        USER_DATA.coursesEnrolled.map((course) => (
          <Card 
            key={course.id} 
            style={styles.courseCard}
            onPress={() => navigation.navigate('CourseDetail', { 
              courseId: course.id, 
              courseTitle: course.title 
            })}
          >
            <Card.Content>
              <View style={styles.courseHeader}>
                <Title style={styles.courseTitle}>{course.title}</Title>
                <IconButton 
                  icon="arrow-right" 
                  size={20} 
                  color={colors.primary}
                />
              </View>
              <Paragraph style={styles.progressText}>
                Progression: {Math.round(course.progress * 100)}%
              </Paragraph>
              <ProgressBar 
                progress={course.progress} 
                color={colors.primary} 
                style={styles.progressBar} 
              />
              <View style={styles.courseFooter}>
                <View style={styles.courseStatus}>
                  <MaterialCommunityIcons 
                    name="clock-outline" 
                    size={16} 
                    color={colors.lightText} 
                  />
                  <Text style={styles.statusText}>En cours</Text>
                </View>
                <Button 
                  mode="text" 
                  compact 
                  onPress={() => navigation.navigate('Lesson', { 
                    moduleId: '1', 
                    moduleTitle: 'Module 1' 
                  })}
                >
                  Continuer
                </Button>
              </View>
            </Card.Content>
          </Card>
        ))
      ) : (
        <Surface style={styles.emptyState}>
          <MaterialCommunityIcons 
            name="book-open-variant" 
            size={50} 
            color={colors.lightText} 
          />
          <Text style={styles.emptyStateText}>
            Vous n'êtes pas encore inscrit à aucun cours
          </Text>
        </Surface>
      )}
      
      <View style={styles.sectionHeader}>
        <Text style={styles.sectionTitle}>Cours recommandés</Text>
      </View>
      
      <Card style={styles.recommendedCard}>
        <Card.Cover 
          source={{ uri: 'https://images.unsplash.com/photo-1486262715619-67b85e0b08d3?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60' }} 
          style={styles.recommendedCardImage}
        />
        <Card.Content>
          <Title style={styles.recommendedCardTitle}>Diagnostic Électronique Avancé</Title>
          <Paragraph style={styles.recommendedCardDescription}>
            Apprenez à utiliser les outils de diagnostic modernes pour résoudre les problèmes électroniques complexes.
          </Paragraph>
        </Card.Content>
        <Card.Actions style={styles.recommendedCardActions}>
          <Button 
            mode="contained" 
            onPress={() => navigation.navigate('CourseDetail', { 
              courseId: '3', 
              courseTitle: 'Diagnostic Électronique Avancé' 
            })}
          >
            Découvrir
          </Button>
        </Card.Actions>
      </Card>
      
      <TouchableOpacity 
        style={styles.exploreCourses}
        onPress={() => navigation.navigate('Courses')}
      >
        <Text style={styles.exploreCoursesText}>Explorer tous les cours</Text>
      </TouchableOpacity>
    </ScrollView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: colors.background,
  },
  welcomeSection: {
    padding: 20,
    backgroundColor: colors.surface,
    borderRadius: 16,
    margin: 16,
    marginBottom: 8,
    elevation: 2,
  },
  welcomeHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 16,
  },
  welcomeText: {
    fontSize: 16,
    color: colors.lightText,
  },
  userName: {
    fontSize: 20,
    fontWeight: 'bold',
    color: colors.text,
  },
  statsContainer: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    marginTop: 8,
  },
  statCard: {
    flex: 1,
    padding: 12,
    alignItems: 'center',
    borderRadius: 12,
    marginHorizontal: 4,
    backgroundColor: colors.highlight,
    elevation: 1,
  },
  statNumber: {
    fontSize: 20,
    fontWeight: 'bold',
    color: colors.primary,
  },
  statLabel: {
    fontSize: 12,
    color: colors.lightText,
    marginTop: 4,
  },
  sectionHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    paddingHorizontal: 16,
    marginTop: 16,
    marginBottom: 8,
  },
  sectionTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    color: colors.text,
  },
  courseCard: {
    marginHorizontal: 16,
    marginBottom: 12,
    borderRadius: 12,
    elevation: 2,
  },
  courseHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
  },
  courseTitle: {
    fontSize: 16,
    fontWeight: 'bold',
    flex: 1,
  },
  progressText: {
    fontSize: 14,
    color: colors.lightText,
    marginTop: 4,
  },
  progressBar: {
    height: 8,
    borderRadius: 4,
    marginTop: 8,
    marginBottom: 12,
  },
  courseFooter: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginTop: 8,
  },
  courseStatus: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  statusText: {
    fontSize: 12,
    color: colors.lightText,
    marginLeft: 4,
  },
  emptyState: {
    alignItems: 'center',
    padding: 30,
    margin: 16,
    borderRadius: 12,
  },
  emptyStateText: {
    marginTop: 16,
    textAlign: 'center',
    color: colors.lightText,
    fontSize: 16,
  },
  recommendedCard: {
    marginHorizontal: 16,
    marginBottom: 16,
    borderRadius: 12,
    overflow: 'hidden',
  },
  recommendedCardImage: {
    height: 150,
  },
  recommendedCardTitle: {
    fontSize: 16,
    fontWeight: 'bold',
    marginTop: 8,
  },
  recommendedCardDescription: {
    fontSize: 14,
    color: colors.lightText,
    marginTop: 4,
  },
  recommendedCardActions: {
    justifyContent: 'flex-end',
    paddingHorizontal: 16,
    paddingBottom: 16,
  },
  exploreCourses: {
    backgroundColor: colors.primary,
    padding: 16,
    borderRadius: 12,
    alignItems: 'center',
    margin: 16,
    marginTop: 8,
    elevation: 2,
  },
  exploreCoursesText: {
    color: 'white',
    fontWeight: 'bold',
    fontSize: 16,
  },
});

export default HomeScreen;
