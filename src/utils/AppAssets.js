import React from 'react';
import { Image, StyleSheet } from 'react-native';
import { Asset } from 'expo-asset';
import * as SplashScreen from 'expo-splash-screen';
import * as Font from 'expo-font';
import { MaterialCommunityIcons, Ionicons } from '@expo/vector-icons';

// Keep the splash screen visible while we fetch resources
SplashScreen.preventAutoHideAsync();

/**
 * Asset preloading utility to improve app startup performance
 * This helps avoid flickering and ensures a smooth user experience
 */
export default class AppAssets {
  // Load all app assets (images, fonts, etc.)
  static async loadAll() {
    try {
      // Load all resources in parallel
      await Promise.all([
        this.loadImages(),
        this.loadFonts(),
      ]);
    } catch (error) {
      console.error('Error loading assets:', error);
    } finally {
      // Hide splash screen once everything is loaded
      await SplashScreen.hideAsync();
    }
  }

  // Preload all images
  static async loadImages() {
    const images = [
      require('../assets/images/icon.png'),
      require('../assets/images/splash-icon.png'),
      require('../assets/images/adaptive-icon.png'),
      require('../assets/images/react-logo.png'),
      require('../assets/images/react-logo@2x.png'),
      require('../assets/images/react-logo@3x.png'),
      require('../assets/logo.png'),
    ];

    // Preload all images
    const imageAssets = images.map(image => {
      if (typeof image === 'string') {
        return Image.prefetch(image);
      } else {
        return Asset.fromModule(image).downloadAsync();
      }
    });

    return Promise.all(imageAssets);
  }

  // Load all fonts
  static async loadFonts() {
    return Font.loadAsync({
      // Load icon fonts
      ...MaterialCommunityIcons.font,
      ...Ionicons.font,
      // Add custom fonts here if needed
      'Roboto-Regular': require('../assets/fonts/Roboto-Regular.ttf'),
      'Roboto-Medium': require('../assets/fonts/Roboto-Medium.ttf'),
      'Roboto-Bold': require('../assets/fonts/Roboto-Bold.ttf'),
    });
  }
}
