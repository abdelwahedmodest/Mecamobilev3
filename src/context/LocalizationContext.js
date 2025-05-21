import React, { createContext, useContext, useState } from 'react';
import { I18n } from 'i18n-js';
import * as Localization from 'expo-localization';

// Import translations
import en from '../locales/en';
import fr from '../locales/fr';

// Create i18n instance
const i18n = new I18n({
  en,
  fr,
});

// Set the locale once at the beginning of your app
i18n.locale = Localization.locale.split('-')[0]; // Use device locale by default
i18n.enableFallback = true; // Use 'en' if a translation is missing
i18n.defaultLocale = 'fr'; // Default to French if no locale is specified

// Create context
const LocalizationContext = createContext();

/**
 * Provider component for localization
 * Wraps the app to provide translation functionality
 */
export const LocalizationProvider = ({ children }) => {
  const [locale, setLocale] = useState(i18n.locale);

  // Change the locale
  const setLanguage = (language) => {
    i18n.locale = language;
    setLocale(language);
  };

  // Translate a string
  const t = (key, options) => {
    return i18n.t(key, options);
  };

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
