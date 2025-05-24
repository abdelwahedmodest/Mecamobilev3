import React, { createContext, useContext, useState, useEffect } from 'react';
import { I18n } from 'i18n-js';
import * as Localization from 'expo-localization';
import AsyncStorage from '@react-native-async-storage/async-storage';

// Import translations
import en from '../locales/en';
import fr from '../locales/fr';

// Create i18n instance
const i18n = new I18n({
  en,
  fr,
});

// Create context
const LocalizationContext = createContext();

export const LocalizationProvider = ({ children }) => {
  const [isReady, setIsReady] = useState(false);
  const [locale, setLocale] = useState(null);

  useEffect(() => {
    const initializeLocalization = async () => {
      try {
        // Try to get saved language
        const savedLocale = await AsyncStorage.getItem('userLanguage');
        
        // If no saved language, use device locale
        const deviceLocale = Localization.locale.split('-')[0];
        const initialLocale = savedLocale || deviceLocale;

        // Set up i18n
        i18n.enableFallback = true;
        i18n.defaultLocale = 'fr';
        i18n.locale = initialLocale;

        setLocale(initialLocale);
        setIsReady(true);
      } catch (error) {
        console.error('Localization initialization error:', error);
        // Fallback to French
        i18n.locale = 'fr';
        setLocale('fr');
        setIsReady(true);
      }
    };

    initializeLocalization();
  }, []);

  const setLanguage = async (language) => {
    try {
      await AsyncStorage.setItem('userLanguage', language);
      i18n.locale = language;
      setLocale(language);
    } catch (error) {
      console.error('Error saving language:', error);
    }
  };

  const t = (key, options) => {
    return i18n.t(key, options);
  };

  if (!isReady) {
    return null; // Or a loading spinner
  }

  return (
    <LocalizationContext.Provider value={{ locale, setLanguage, t }}>
      {children}
    </LocalizationContext.Provider>
  );
};

// Custom hook to use localization
export const useLocalization = () => {
  const context = useContext(LocalizationContext);
  if (context === undefined) {
    throw new Error('useLocalization must be used within a LocalizationProvider');
  }
  return context;
};

// Export i18n instance for direct use if needed
export { i18n };
