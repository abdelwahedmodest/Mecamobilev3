import React from 'react';
import { Dimensions, Platform, PixelRatio, StatusBar } from 'react-native';

// Device screen dimensions
const { width: SCREEN_WIDTH, height: SCREEN_HEIGHT } = Dimensions.get('window');

// Base width and height used for design (based on standard mobile screen)
const baseWidth = 375;
const baseHeight = 812;

// Scale factors for responsive sizing
const widthScale = SCREEN_WIDTH / baseWidth;
const heightScale = SCREEN_HEIGHT / baseHeight;

// Function to normalize font sizes for different screen sizes
export const normalize = (size) => {
  const newSize = size * widthScale;
  if (Platform.OS === 'ios') {
    return Math.round(PixelRatio.roundToNearestPixel(newSize));
  } else {
    return Math.round(PixelRatio.roundToNearestPixel(newSize)) - 2;
  }
};

// Responsive width and height calculations
export const wp = (percentage) => {
  const value = (percentage * SCREEN_WIDTH) / 100;
  return Math.round(value);
};

export const hp = (percentage) => {
  const value = (percentage * SCREEN_HEIGHT) / 100;
  return Math.round(value);
};

// Responsive spacing units
export const spacing = {
  xs: wp(2),
  sm: wp(4),
  md: wp(6),
  lg: wp(8),
  xl: wp(10),
  xxl: wp(12),
};

// Status bar height for safe area calculations
export const STATUS_BAR_HEIGHT = Platform.OS === 'ios' 
  ? 20 
  : StatusBar.currentHeight;

// Device info
export const isIOS = Platform.OS === 'ios';
export const isAndroid = Platform.OS === 'android';
export const isSmallDevice = SCREEN_WIDTH < 375;
export const isLargeDevice = SCREEN_WIDTH >= 768;

// Responsive font sizes
export const fontSizes = {
  xs: normalize(10),
  sm: normalize(12),
  md: normalize(14),
  lg: normalize(16),
  xl: normalize(18),
  xxl: normalize(20),
  xxxl: normalize(24),
  title: normalize(28),
  header: normalize(32),
};

// Responsive border radius
export const borderRadius = {
  xs: wp(1),
  sm: wp(2),
  md: wp(3),
  lg: wp(4),
  xl: wp(5),
  round: wp(50),
};

// Screen dimensions for orientation changes
export const getScreenDimensions = () => {
  const { width, height } = Dimensions.get('window');
  return { width, height };
};

// Orientation detection
export const isPortrait = () => {
  const { width, height } = Dimensions.get('window');
  return height > width;
};

export const isLandscape = () => {
  const { width, height } = Dimensions.get('window');
  return width > height;
};

// Add event listener for orientation changes
export const addOrientationListener = (callback) => {
  Dimensions.addEventListener('change', callback);
};

// Remove event listener for orientation changes
export const removeOrientationListener = (callback) => {
  Dimensions.removeEventListener('change', callback);
};

export default {
  normalize,
  wp,
  hp,
  spacing,
  STATUS_BAR_HEIGHT,
  isIOS,
  isAndroid,
  isSmallDevice,
  isLargeDevice,
  fontSizes,
  borderRadius,
  getScreenDimensions,
  isPortrait,
  isLandscape,
  addOrientationListener,
  removeOrientationListener,
};
