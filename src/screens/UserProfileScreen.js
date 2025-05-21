import React from 'react';
import { Image, ScrollView, StyleSheet, View } from 'react-native';
import { Avatar, Button, Card, Divider, IconButton, Surface, Text, useTheme } from 'react-native-paper';
import { MaterialCommunityIcons } from '@expo/vector-icons';
import colors from '../constants/colors';
import { useAuth } from '../context/AuthContext';

// Sample User Data - replace with actual data later
const USER_DATA = {
  name: 'Abdelwahed Jean',
  email: 'abdelwahed.jean@gmail.com',
  avatarUrl: './src/assets/logo.png',
  coursesEnrolled: [
    { id: '1', title: 'Introduction à la Mécanique Moteur', progress: 95 },
    { id: '2', title: 'Systèmes de Freinage : Théorie et Pratique', progress: 25 },
  ],
  badges: [
    { id: 'b1', name: 'Pro du Moteur', icon: '🏆' },
    { id: 'b2', name: 'As du Freinage', icon: '🛠️' },
  ],
};

const UserProfileScreen = ({ route, navigation }) => {
  const { logout } = useAuth();
  const theme = useTheme();

  // Add effect to handle updated data
  React.useEffect(() => {
    if (route.params?.refresh && route.params?.updatedUserData) {
      // Update the UI with new data
      // Update your UI state here
    }
  }, [route.params]);

  const handleLogout = () => {
    logout(); // Clear authentication state
    navigation.reset({
      index: 0,
      routes: [{ name: 'Login' }], // Navigate to Login screen and clear navigation stack
    });
  };

  return (
    <ScrollView style={styles.container}>
      <Surface style={styles.header}>
        <View style={styles.headerContent}>
          <Avatar.Image 
            size={100} 
            source={{ uri: USER_DATA.avatarUrl }}
            style={styles.avatar}
            backgroundColor={colors.primary}
          />
          <Text style={styles.userName}>{USER_DATA.name}</Text>
          <Text style={styles.userEmail}>{USER_DATA.email}</Text>
          
          <Button 
            mode="contained" 
            icon="account-edit"
            style={styles.editProfileButton}
            onPress={() => navigation.navigate('ProfileScreen', { 
              userData: {
                name: USER_DATA.name,
                email: USER_DATA.email,
                phone: USER_DATA.phone || '',
                speciality: USER_DATA.speciality || '',
              }
            })}
          >
            Modifier le Profil
          </Button>
        </View>
      </Surface>

      <Card style={styles.section}>
        <Card.Title 
          title="Mes Statistiques" 
          left={(props) => <MaterialCommunityIcons name="chart-bar" size={24} color={colors.primary} />}
        />
        <Card.Content>
          <View style={styles.statsContainer}>
            <View style={styles.statItem}>
              <Text style={styles.statNumber}>{USER_DATA.coursesEnrolled.length}</Text>
              <Text style={styles.statLabel}>Cours inscrits</Text>
            </View>
            <View style={styles.statItem}>
              <Text style={styles.statNumber}>2</Text>
              <Text style={styles.statLabel}>En cours</Text>
            </View>
            <View style={styles.statItem}>
              <Text style={styles.statNumber}>{USER_DATA.badges.length}</Text>
              <Text style={styles.statLabel}>Badges</Text>
            </View>
          </View>
        </Card.Content>
      </Card>

      <Card style={styles.section}>
        <Card.Title 
          title="Mes Cours Inscrits" 
          left={(props) => <MaterialCommunityIcons name="book-open-variant" size={24} color={colors.primary} />}
          right={(props) => (
            <Button 
              mode="text" 
              onPress={() => navigation.navigate('Courses')}
            >
              Voir tout
            </Button>
          )}
        />
        <Card.Content>
          {USER_DATA.coursesEnrolled.map(course => (
            <Surface key={course.id} style={styles.courseItem}>
              <View style={styles.courseHeader}>
                <Text style={styles.courseTitle}>{course.title}</Text>
                <IconButton 
                  icon="chevron-right" 
                  size={20} 
                  onPress={() => navigation.navigate('CourseDetail', { 
                    courseId: course.id, 
                    courseTitle: course.title 
                  })}
                />
              </View>
              <View style={styles.progressBarContainer}>
                <View 
                  style={[
                    styles.progressBar, 
                    { 
                      width: `${course.progress}%`,
                      backgroundColor: course.progress > 75 ? colors.success : colors.primary
                    }
                  ]} 
                />
              </View>
              <View style={styles.progressDetails}>
                <Text style={styles.progressText}>{course.progress}% complété</Text>
                <Button 
                  mode="text" 
                  compact 
                  onPress={() => navigation.navigate('CourseDetail', { 
                    courseId: course.id, 
                    courseTitle: course.title 
                  })}
                >
                  Continuer
                </Button>
              </View>
            </Surface>
          ))}
          {USER_DATA.coursesEnrolled.length === 0 && (
            <View style={styles.emptyState}>
              <MaterialCommunityIcons name="book-open-page-variant" size={50} color={colors.lightText} />
              <Text style={styles.emptyStateText}>Vous n'êtes inscrit à aucun cours pour le moment.</Text>
              <Button 
                mode="contained" 
                onPress={() => navigation.navigate('Courses')}
                style={styles.emptyStateButton}
              >
                Explorer les cours
              </Button>
            </View>
          )}
        </Card.Content>
      </Card>

      <Card style={styles.section}>
        <Card.Title 
          title="Mes Badges et Certificats" 
          left={(props) => <MaterialCommunityIcons name="medal" size={24} color={colors.primary} />}
        />
        <Card.Content>
          <View style={styles.badgesContainer}>
            {USER_DATA.badges.map(badge => (
              <Surface key={badge.id} style={styles.badgeItem}>
                <Text style={styles.badgeIcon}>{badge.icon}</Text>
                <Text style={styles.badgeName}>{badge.name}</Text>
              </Surface>
            ))}
            {USER_DATA.badges.length === 0 && (
              <View style={styles.emptyState}>
                <MaterialCommunityIcons name="trophy-variant" size={50} color={colors.lightText} />
                <Text style={styles.emptyStateText}>Aucun badge gagné pour le moment.</Text>
                <Text style={styles.emptyStateSubtext}>Complétez des cours pour gagner des badges!</Text>
              </View>
            )}
          </View>
        </Card.Content>
      </Card>
      
      <Button 
        mode="contained" 
        icon="logout"
        style={styles.logoutButton}
        buttonColor={colors.error}
        onPress={handleLogout}
      >
        Se Déconnecter
      </Button>
    </ScrollView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: colors.background,
  },
  header: {
    backgroundColor: colors.primary,
    borderBottomLeftRadius: 24,
    borderBottomRightRadius: 24,
    elevation: 4,
    marginBottom: 16,
  },
  headerContent: {
    padding: 24,
    alignItems: 'center',
  },
  avatar: {
    marginBottom: 16,
    borderWidth: 4,
    borderColor: 'white',
  },
  userName: {
    fontSize: 24,
    fontWeight: 'bold',
    color: 'white',
    marginBottom: 4,
  },
  userEmail: {
    fontSize: 16,
    color: 'rgba(255, 255, 255, 0.8)',
    marginBottom: 16,
  },
  editProfileButton: {
    marginTop: 8,
  },
  section: {
    marginHorizontal: 16,
    marginBottom: 16,
    borderRadius: 12,
    overflow: 'hidden',
    elevation: 2,
  },
  statsContainer: {
    flexDirection: 'row',
    justifyContent: 'space-around',
    paddingVertical: 16,
  },
  statItem: {
    alignItems: 'center',
  },
  statNumber: {
    fontSize: 24,
    fontWeight: 'bold',
    color: colors.primary,
  },
  statLabel: {
    fontSize: 14,
    color: colors.lightText,
    marginTop: 4,
  },
  courseItem: {
    marginBottom: 16,
    padding: 16,
    borderRadius: 12,
    elevation: 1,
  },
  courseHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
  },
  courseTitle: {
    fontSize: 16,
    fontWeight: '600',
    flex: 1,
  },
  progressBarContainer: {
    height: 10,
    backgroundColor: colors.divider,
    borderRadius: 5,
    overflow: 'hidden',
    marginVertical: 12,
  },
  progressBar: {
    height: '100%',
    backgroundColor: colors.primary,
  },
  progressDetails: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
  },
  progressText: {
    fontSize: 14,
    color: colors.lightText,
  },
  badgesContainer: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    justifyContent: 'space-around',
    paddingVertical: 8,
  },
  badgeItem: {
    alignItems: 'center',
    padding: 16,
    margin: 8,
    borderRadius: 12,
    minWidth: 100,
    elevation: 1,
  },
  badgeIcon: {
    fontSize: 40,
    marginBottom: 8,
  },
  badgeName: {
    fontSize: 14,
    textAlign: 'center',
    fontWeight: '500',
  },
  emptyState: {
    alignItems: 'center',
    padding: 24,
  },
  emptyStateText: {
    fontSize: 16,
    color: colors.lightText,
    textAlign: 'center',
    marginTop: 16,
    marginBottom: 8,
  },
  emptyStateSubtext: {
    fontSize: 14,
    color: colors.lightText,
    textAlign: 'center',
    fontStyle: 'italic',
  },
  emptyStateButton: {
    marginTop: 16,
  },
  logoutButton: {
    margin: 16,
    marginBottom: 24,
  },
});

export default UserProfileScreen;
