import React from 'react';
import { View, StyleSheet } from 'react-native';
import { Button, Text, Surface } from 'react-native-paper';
import { useLocalization } from '../context/LocalizationContext';

/**
 * Language Selector component for switching between available languages
 * 
 * @param {Object} props - Component props
 * @param {Object} props.style - Additional style for the container
 */
const LanguageSelector = ({ style }) => {
  const { locale, setLanguage, t } = useLocalization();

  const languages = [
    { code: 'en', name: 'English' },
    { code: 'fr', name: 'Français' },
  ];

  return (
    <Surface style={[styles.container, style]}>
      <Text style={styles.title}>
        {t('common.language', 'Language / Langue')}
      </Text>
      
      <View style={styles.buttonContainer}>
        {languages.map((language) => (
          <Button
            key={language.code}
            mode={locale === language.code ? 'contained' : 'outlined'}
            onPress={() => setLanguage(language.code)}
            style={[
              styles.languageButton,
              locale === language.code && styles.activeLanguageButton
            ]}
            labelStyle={
              locale === language.code ? styles.activeLanguageText : styles.languageText
            }
          >
            {language.name}
          </Button>
        ))}
      </View>
    </Surface>
  );
};

const styles = StyleSheet.create({
  container: {
    padding: 16,
    borderRadius: 12,
    elevation: 2,
    marginVertical: 8,
  },
  title: {
    fontSize: 16,
    fontWeight: 'bold',
    marginBottom: 12,
    textAlign: 'center',
  },
  buttonContainer: {
    flexDirection: 'row',
    justifyContent: 'space-around',
  },
  languageButton: {
    flex: 1,
    marginHorizontal: 4,
  },
  activeLanguageButton: {
    elevation: 2,
  },
  languageText: {
    fontSize: 14,
  },
  activeLanguageText: {
    fontSize: 14,
    fontWeight: 'bold',
  },
});

export default LanguageSelector;
