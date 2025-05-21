import React from 'react';
import { View, StyleSheet } from 'react-native';
import { Text, ActivityIndicator } from 'react-native-paper';
import colors from '../constants/colors';
import { fontSizes, spacing } from '../utils/responsive';

/**
 * Performance optimized list item component with lazy loading
 * 
 * @param {Object} props - Component props
 * @param {boolean} props.loading - Whether the item is loading
 * @param {boolean} props.error - Whether there was an error loading the item
 * @param {function} props.onRetry - Function to call to retry loading
 * @param {Object} props.style - Additional style for the container
 */
const PerformanceListItem = ({
  loading = false,
  error = false,
  onRetry,
  style,
  children,
  ...rest
}) => {
  // Show loading state
  if (loading) {
    return (
      <View style={[styles.container, styles.loadingContainer, style]} {...rest}>
        <ActivityIndicator size="small" color={colors.primary} />
        <Text style={styles.loadingText}>Chargement...</Text>
      </View>
    );
  }

  // Show error state
  if (error) {
    return (
      <View style={[styles.container, styles.errorContainer, style]} {...rest}>
        <Text style={styles.errorText}>Erreur de chargement</Text>
        {onRetry && (
          <Text 
            style={styles.retryText}
            onPress={onRetry}
            accessible={true}
            accessibilityRole="button"
            accessibilityLabel="Réessayer de charger"
            accessibilityHint="Double-tapez pour réessayer de charger cet élément"
          >
            Réessayer
          </Text>
        )}
      </View>
    );
  }

  // Show content
  return (
    <View style={[styles.container, style]} {...rest}>
      {children}
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    padding: spacing.md,
    borderBottomWidth: 1,
    borderBottomColor: colors.divider,
  },
  loadingContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'center',
    minHeight: 60,
  },
  loadingText: {
    marginLeft: spacing.sm,
    color: colors.lightText,
    fontSize: fontSizes.sm,
  },
  errorContainer: {
    alignItems: 'center',
    justifyContent: 'center',
    minHeight: 60,
    backgroundColor: '#FFF5F5',
  },
  errorText: {
    color: colors.error,
    fontSize: fontSizes.sm,
    marginBottom: spacing.xs,
  },
  retryText: {
    color: colors.primary,
    fontSize: fontSizes.sm,
    fontWeight: '500',
    textDecorationLine: 'underline',
  },
});

export default React.memo(PerformanceListItem);
