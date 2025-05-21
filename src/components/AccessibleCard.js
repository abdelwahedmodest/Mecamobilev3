import React from 'react';
import { View, StyleSheet, TouchableOpacity, Image } from 'react-native';
import { Text, Surface } from 'react-native-paper';
import { MaterialCommunityIcons } from '@expo/vector-icons';
import colors from '../constants/colors';
import { fontSizes, spacing, wp, hp } from '../utils/responsive';

/**
 * Accessible card component with proper accessibility attributes
 * 
 * @param {Object} props - Component props
 * @param {string} props.title - Card title
 * @param {string} props.subtitle - Card subtitle
 * @param {string} props.description - Card description
 * @param {function} props.onPress - Function to call on press
 * @param {string} props.imageUrl - URL for card image
 * @param {string} props.icon - Icon name for MaterialCommunityIcons
 * @param {Object} props.style - Additional style for the card
 * @param {boolean} props.disabled - Whether the card is disabled
 */
const AccessibleCard = ({
  title,
  subtitle,
  description,
  onPress,
  imageUrl,
  icon,
  style,
  disabled = false,
  children,
  ...rest
}) => {
  const CardContainer = onPress ? TouchableOpacity : View;

  return (
    <Surface
      style={[styles.card, disabled && styles.disabledCard, style]}
      {...rest}
    >
      <CardContainer 
        style={styles.cardContainer}
        onPress={!disabled && onPress ? onPress : undefined}
        disabled={disabled || !onPress}
        accessible={true}
        accessibilityRole={onPress ? "button" : "none"}
        accessibilityLabel={title}
        accessibilityHint={description ? description : subtitle}
        accessibilityState={{ disabled }}
      >
        {imageUrl && (
          <Image 
            source={{ uri: imageUrl }} 
            style={styles.image}
            accessible={true}
            accessibilityLabel={`Image for ${title}`}
            accessibilityRole="image"
          />
        )}
        
        {icon && !imageUrl && (
          <View style={styles.iconContainer}>
            <MaterialCommunityIcons 
              name={icon} 
              size={wp(10)} 
              color={colors.primary} 
            />
          </View>
        )}
        
        <View style={styles.contentContainer}>
          {title && <Text style={styles.title} numberOfLines={2}>{title}</Text>}
          {subtitle && <Text style={styles.subtitle} numberOfLines={1}>{subtitle}</Text>}
          {description && <Text style={styles.description} numberOfLines={3}>{description}</Text>}
          
          {children}
        </View>
      </CardContainer>
    </Surface>
  );
};

const styles = StyleSheet.create({
  card: {
    borderRadius: 12,
    marginVertical: spacing.sm,
    elevation: 2,
    overflow: 'hidden',
  },
  disabledCard: {
    opacity: 0.7,
  },
  cardContainer: {
    minHeight: hp(10),
  },
  image: {
    width: '100%',
    height: hp(20),
    resizeMode: 'cover',
  },
  iconContainer: {
    alignItems: 'center',
    justifyContent: 'center',
    padding: spacing.md,
  },
  contentContainer: {
    padding: spacing.md,
  },
  title: {
    fontSize: fontSizes.lg,
    fontWeight: 'bold',
    color: colors.text,
    marginBottom: spacing.xs,
  },
  subtitle: {
    fontSize: fontSizes.md,
    color: colors.primary,
    marginBottom: spacing.xs,
  },
  description: {
    fontSize: fontSizes.sm,
    color: colors.lightText,
    lineHeight: fontSizes.md * 1.4,
  },
});

export default AccessibleCard;
