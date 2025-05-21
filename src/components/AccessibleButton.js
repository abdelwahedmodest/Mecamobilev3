import React from 'react';
import { View, StyleSheet, TouchableOpacity, AccessibilityInfo } from 'react-native';
import { Text } from 'react-native-paper';
import colors from '../constants/colors';
import { fontSizes, spacing } from '../utils/responsive';

/**
 * Accessible button component with proper accessibility attributes
 * 
 * @param {Object} props - Component props
 * @param {string} props.label - Button text
 * @param {function} props.onPress - Function to call on press
 * @param {string} props.accessibilityLabel - Accessibility label for screen readers
 * @param {string} props.accessibilityHint - Accessibility hint for screen readers
 * @param {string} props.variant - Button style variant ('primary', 'secondary', 'outline', 'text')
 * @param {Object} props.style - Additional style for the button
 * @param {Object} props.textStyle - Additional style for the button text
 * @param {boolean} props.disabled - Whether the button is disabled
 */
const AccessibleButton = ({
  label,
  onPress,
  accessibilityLabel,
  accessibilityHint,
  variant = 'primary',
  style,
  textStyle,
  disabled = false,
  ...rest
}) => {
  // Get button and text styles based on variant
  const getButtonStyle = () => {
    switch (variant) {
      case 'primary':
        return [styles.button, styles.primaryButton, disabled && styles.disabledButton, style];
      case 'secondary':
        return [styles.button, styles.secondaryButton, disabled && styles.disabledButton, style];
      case 'outline':
        return [styles.button, styles.outlineButton, disabled && styles.disabledOutlineButton, style];
      case 'text':
        return [styles.button, styles.textButton, disabled && styles.disabledTextButton, style];
      default:
        return [styles.button, styles.primaryButton, disabled && styles.disabledButton, style];
    }
  };

  const getTextStyle = () => {
    switch (variant) {
      case 'primary':
        return [styles.buttonText, styles.primaryButtonText, disabled && styles.disabledButtonText, textStyle];
      case 'secondary':
        return [styles.buttonText, styles.secondaryButtonText, disabled && styles.disabledButtonText, textStyle];
      case 'outline':
        return [styles.buttonText, styles.outlineButtonText, disabled && styles.disabledOutlineButtonText, textStyle];
      case 'text':
        return [styles.buttonText, styles.textButtonText, disabled && styles.disabledTextButtonText, textStyle];
      default:
        return [styles.buttonText, styles.primaryButtonText, disabled && styles.disabledButtonText, textStyle];
    }
  };

  // Provide feedback when button is pressed
  const handlePress = () => {
    if (!disabled && onPress) {
      // Provide haptic feedback if available
      if (AccessibilityInfo && AccessibilityInfo.announceForAccessibility) {
        AccessibilityInfo.announceForAccessibility(`${label} button pressed`);
      }
      onPress();
    }
  };

  return (
    <TouchableOpacity
      style={getButtonStyle()}
      onPress={handlePress}
      disabled={disabled}
      accessible={true}
      accessibilityRole="button"
      accessibilityLabel={accessibilityLabel || label}
      accessibilityHint={accessibilityHint}
      accessibilityState={{ disabled }}
      {...rest}
    >
      <Text style={getTextStyle()}>{label}</Text>
    </TouchableOpacity>
  );
};

const styles = StyleSheet.create({
  button: {
    borderRadius: 10,
    paddingVertical: spacing.md,
    paddingHorizontal: spacing.lg,
    alignItems: 'center',
    justifyContent: 'center',
    minHeight: 48, // Minimum touch target size for accessibility
  },
  primaryButton: {
    backgroundColor: colors.primary,
  },
  secondaryButton: {
    backgroundColor: colors.secondary,
  },
  outlineButton: {
    backgroundColor: 'transparent',
    borderWidth: 1,
    borderColor: colors.primary,
  },
  textButton: {
    backgroundColor: 'transparent',
  },
  disabledButton: {
    backgroundColor: colors.disabled,
  },
  disabledOutlineButton: {
    borderColor: colors.disabled,
  },
  disabledTextButton: {
    opacity: 0.5,
  },
  buttonText: {
    fontSize: fontSizes.md,
    fontWeight: '600',
  },
  primaryButtonText: {
    color: 'white',
  },
  secondaryButtonText: {
    color: 'white',
  },
  outlineButtonText: {
    color: colors.primary,
  },
  textButtonText: {
    color: colors.primary,
  },
  disabledButtonText: {
    color: '#ffffff',
  },
  disabledOutlineButtonText: {
    color: colors.disabled,
  },
  disabledTextButtonText: {
    color: colors.disabled,
  },
});

export default AccessibleButton;
