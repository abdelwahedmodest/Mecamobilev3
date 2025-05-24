import { Ionicons, MaterialCommunityIcons } from '@expo/vector-icons';
import { createBottomTabNavigator } from '@react-navigation/bottom-tabs';
import React from 'react';
import { TouchableOpacity, View, Text, StyleSheet } from 'react-native'; // Added View, Text, StyleSheet
import colors from '../constants/colors';
import { useAuth } from '../context/AuthContext';
import { useLocalization } from '../context/LocalizationContext'; // Import useLocalization
import CourseListScreen from '../screens/CourseListScreen';
import HomeScreen from '../screens/HomeScreen';
import UserProfileScreen from '../screens/UserProfileScreen';

const Tab = createBottomTabNavigator();

const TabNavigator = () => {
  const { logout } = useAuth();
  const { locale, setLanguage, t } = useLocalization(); // Get locale and setLanguage

  const renderHeaderRight = (navigation) => (
    <View style={styles.headerRightContainer}>
      {/* Language Switcher */}
      <View style={styles.languageSwitcherContainer}>
        <TouchableOpacity 
          onPress={() => setLanguage('fr')} 
          style={[styles.flagButton, locale === 'fr' && styles.flagButtonActive]}
        >
          <Text style={styles.flagText}>🇫🇷</Text> 
        </TouchableOpacity>
        <TouchableOpacity 
          onPress={() => setLanguage('en')} 
          style={[styles.flagButton, locale === 'en' && styles.flagButtonActive]}
        >
          <Text style={styles.flagText}>🇬🇧</Text>
        </TouchableOpacity>
      </View>

      {/* Logout Button */}
      <TouchableOpacity 
        onPress={() => logout(navigation)}
        style={styles.logoutButton}
      >
        <MaterialCommunityIcons 
          name="logout" 
          size={26} // Slightly larger icon
          color={colors.primary} 
        />
      </TouchableOpacity>
    </View>
  );

  return (
    <Tab.Navigator
      screenOptions={({ route, navigation }) => ({
        tabBarIcon: ({ focused, color, size }) => {
          let iconName;
          if (route.name === 'Home') {
            iconName = focused ? 'home' : 'home-outline';
          } else if (route.name === 'Courses') {
            iconName = focused ? 'book' : 'book-outline';
          } else if (route.name === 'Profile') {
            iconName = focused ? 'person' : 'person-outline';
          }
          // Use Ionicons for tab icons
          return <Ionicons name={iconName} size={size} color={color} />;
        },
        tabBarActiveTintColor: colors.primary,
        tabBarInactiveTintColor: 'gray',
        // Use the function to render headerRight content
        headerRight: () => renderHeaderRight(navigation),
        // Apply localization to header titles
        headerTitle: () => {
          let titleKey;
          if (route.name === 'Home') titleKey = 'home_tab_title';
          else if (route.name === 'Courses') titleKey = 'courses_tab_title';
          else if (route.name === 'Profile') titleKey = 'profile_tab_title';
          else titleKey = route.name; // Fallback
          // Use Text component for header title to allow styling if needed
          return <Text style={styles.headerTitleStyle}>{t(titleKey, { defaultValue: route.name })}</Text>; 
        },
      })}
    >
      {/* Screens remain the same, but titles will now use localization keys */}
      <Tab.Screen 
        name="Home" 
        component={HomeScreen} 
        // options={{ title: t('home_tab_title', { defaultValue: 'Tableau de Bord' }) }} 
      />
      <Tab.Screen 
        name="Courses" 
        component={CourseListScreen} 
        // options={{ title: t('courses_tab_title', { defaultValue: 'Catalogue des Cours' }) }} 
      />
      <Tab.Screen 
        name="Profile" 
        component={UserProfileScreen} 
        // options={{ title: t('profile_tab_title', { defaultValue: 'Mon Profil' }) }} 
      />
    </Tab.Navigator>
  );
};

const styles = StyleSheet.create({
  headerRightContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    marginRight: 10, // Adjusted margin
  },
  languageSwitcherContainer: {
    flexDirection: 'row',
    marginRight: 15, // Space between flags and logout
    backgroundColor: colors.lightGray, // Subtle background
    borderRadius: 15,
    padding: 2,
  },
  flagButton: {
    paddingHorizontal: 8,
    paddingVertical: 4,
    borderRadius: 13,
  },
  flagButtonActive: {
    backgroundColor: colors.primary, // Highlight active language
  },
  flagText: {
    fontSize: 18, // Adjust size as needed
  },
  logoutButton: {
    padding: 5, // Add padding for easier touch
  },
  headerTitleStyle: { // Style for the header title Text component
    fontSize: 17,
    fontWeight: '600',
    color: colors.text, // Use theme text color
  }
});

export default TabNavigator;

