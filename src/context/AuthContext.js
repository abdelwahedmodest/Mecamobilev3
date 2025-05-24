import { CommonActions } from '@react-navigation/native';
import React, { createContext, useContext, useState, useEffect } from 'react';
import supabaseService from '../services/supabaseService';
import AsyncStorage from '@react-native-async-storage/async-storage';

const AuthContext = createContext(null);

export const AuthProvider = ({ children }) => {
  const [isAuthenticated, setIsAuthenticated] = useState(false);
  const [user, setUser] = useState(null);
  const [profile, setProfile] = useState(null);
  const [loading, setLoading] = useState(true);

  // Vérifier l'état d'authentification au chargement
  useEffect(() => {
    const checkAuth = async () => {
      try {
        const userData = await supabaseService.getCurrentUser();
        if (userData && userData.user) {
          setUser(userData.user);
          setProfile(userData.profile);
          setIsAuthenticated(true);
        }
      } catch (error) {
        console.error("Erreur de vérification d'authentification:", error);
      } finally {
        setLoading(false);
      }
    };

    checkAuth();
  }, []);

  const login = async (userData) => {
    try {
      // Store user data
      await AsyncStorage.setItem('user', JSON.stringify(userData));
      setUser(userData);
      return true;
    } catch (error) {
      console.error('AuthContext login error:', error);
      throw error;
    }
  };

  const register = async (email, password, userData) => {
    try {
      const { user: authUser, profile: userProfile } = await supabaseService.signUp(email, password, userData);
      setUser(authUser);
      setProfile(userProfile);
      setIsAuthenticated(true);
      return { user: authUser, profile: userProfile };
    } catch (error) {
      console.error('Erreur d\'inscription:', error);
      throw error;
    }
  };

  const logout = async (navigation) => {
    try {
      await supabaseService.signOut();
      setUser(null);
      setProfile(null);
      setIsAuthenticated(false);
      
      // Reset navigation stack and go to Login
      navigation.dispatch(
        CommonActions.reset({
          index: 0,
          routes: [{ name: 'Login' }],
        })
      );
    } catch (error) {
      console.error('Erreur de déconnexion:', error);
      throw error;
    }
  };

  const resetPassword = async (email) => {
    try {
      return await supabaseService.resetPassword(email);
    } catch (error) {
      console.error('Erreur de réinitialisation du mot de passe:', error);
      throw error;
    }
  };

  const updateProfile = async (userData) => {
    try {
      if (!user) throw new Error('Utilisateur non authentifié');
      
      const updatedProfile = await supabaseService.updateUserProfile(user.id, userData);
      setProfile(updatedProfile);
      return updatedProfile;
    } catch (error) {
      console.error('Erreur de mise à jour du profil:', error);
      throw error;
    }
  };

  return (
    <AuthContext.Provider 
      value={{ 
        isAuthenticated, 
        user, 
        profile, 
        loading,
        login, 
        logout, 
        register,
        resetPassword,
        updateProfile
      }}
    >
      {children}
    </AuthContext.Provider>
  );
};

export const useAuth = () => useContext(AuthContext);

export default AuthContext;
