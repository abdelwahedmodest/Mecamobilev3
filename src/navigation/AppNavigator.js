import { createStackNavigator } from '@react-navigation/stack';
import React from 'react';
import { useAuth } from '../context/AuthContext';
import AsyncStorage from '@react-native-async-storage/async-storage';
import CourseDetailScreen from '../screens/CourseDetailScreen';
import ForgotPasswordScreen from '../screens/ForgotPasswordScreen';
import LessonScreen from '../screens/LessonScreen';
import LoginScreen from '../screens/LoginScreen';
import ProfileScreen from '../screens/ProfileScreen';
import QuizScreen from '../screens/QuizScreen';
import RegisterScreen from '../screens/RegisterScreen';
import TabNavigator from './TabNavigator';
import ModuleTypeScreen from '../screens/ModuleTypeScreen';
import ContentScreen from '../screens/ContentScreen';
import ImageScreen from '../screens/ImageScreen';
import VideoScreen from '../screens/VideoScreen';
import OnboardingScreen from '../screens/OnboardingScreen';
import LanguageSelector from '../screens/LanguageSelector';

const Stack = createStackNavigator();

const AppNavigator = () => {
  const { isAuthenticated } = useAuth();
  const [hasSeenOnboarding, setHasSeenOnboarding] = React.useState(false);

  React.useEffect(() => {
    // Check if user has seen onboarding
    AsyncStorage.getItem('hasSeenOnboarding').then(value => {
      setHasSeenOnboarding(value === 'true');
    });
  }, []);

  return (
    <Stack.Navigator
      initialRouteName={hasSeenOnboarding ? (isAuthenticated ? 'Main' : 'Auth') : 'Onboarding'}
      screenOptions={{ headerShown: false }}
    >
      <Stack.Screen name="Onboarding" component={OnboardingScreen} />
      <Stack.Screen name="Auth" component={AuthStack} />
      <Stack.Screen name="Main" component={MainStack} />
    </Stack.Navigator>
  );
};

const AuthStack = () => (
  <Stack.Navigator screenOptions={{ headerShown: false }}>
    <Stack.Screen name="Login" component={LoginScreen} />
    <Stack.Screen 
      name="Register" 
      component={RegisterScreen}
      options={{ 
        headerShown: true,
        title: "S'inscrire" 
      }} 
    />
    <Stack.Screen 
      name="ForgotPassword" 
      component={ForgotPasswordScreen}
      options={{ 
        headerShown: true,
        title: "Mot de passe oublié" 
      }} 
    />
  </Stack.Navigator>
);

const MainStack = () => (
  <Stack.Navigator>
    <Stack.Screen 
      name="Main" 
      component={TabNavigator} 
      options={{ headerShown: false }} 
    />
    <Stack.Screen 
      name="CourseDetail" 
      component={CourseDetailScreen} 
      options={({ route }) => ({ 
        title: route.params.courseTitle || 'Détail du cours' 
      })} 
    />
    <Stack.Screen 
      name="Lesson" 
      component={LessonScreen} 
      options={({ route }) => ({ 
        title: route.params.moduleTitle || 'Leçon' 
      })} 
    />
    <Stack.Screen 
      name="Quiz" 
      component={QuizScreen}
      options={({ route }) => ({ 
        title: `Quiz - ${route.params.moduleTitle}`,
      })}
    />
    <Stack.Screen 
      name="ProfileScreen"
      component={ProfileScreen}
      options={{
        title: 'Modifier le Profil',
        headerBackTitle: 'Retour',
      }}
    />
    <Stack.Screen name="ModuleType" component={ModuleTypeScreen} />
    <Stack.Screen name="ContentScreen" component={ContentScreen} />
    <Stack.Screen name="ImageScreen" component={ImageScreen} />
    <Stack.Screen name="VideoScreen" component={VideoScreen} />
    <Stack.Screen 
      name="LanguageSelector" 
      component={LanguageSelector}
      options={{
        title: 'Sélection de la langue',
        headerShown: true
      }}
    />
  </Stack.Navigator>
);

export default AppNavigator;
