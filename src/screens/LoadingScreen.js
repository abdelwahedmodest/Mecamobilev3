import React, { useState, useEffect } from 'react';
import { View, StyleSheet, Image } from 'react-native';
import { ActivityIndicator, Text, Surface } from 'react-native-paper';
import colors from '../constants/colors';

const LoadingScreen = ({ message = 'Chargement en cours...' }) => {
  const [dots, setDots] = useState('');

  useEffect(() => {
    const interval = setInterval(() => {
      setDots(prev => {
        if (prev.length >= 3) return '';
        return prev + '.';
      });
    }, 500);

    return () => clearInterval(interval);
  }, []);

  return (
    <View style={styles.container}>
      <Surface style={styles.loadingCard}>
        <ActivityIndicator size={50} color={colors.primary} />
        <Text style={styles.loadingText}>{message}{dots}</Text>
      </Surface>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: colors.background,
    padding: 20,
  },
  loadingCard: {
    padding: 30,
    borderRadius: 16,
    alignItems: 'center',
    elevation: 4,
    minWidth: '80%',
  },
  loadingText: {
    marginTop: 20,
    fontSize: 16,
    color: colors.text,
    textAlign: 'center',
  }
});

export default LoadingScreen;
