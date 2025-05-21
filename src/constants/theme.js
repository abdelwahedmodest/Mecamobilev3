import { DefaultTheme } from 'react-native-paper';
import colors from './colors';

const theme = {
  ...DefaultTheme,
  colors: {
    ...DefaultTheme.colors,
    primary: colors.primary,
    accent: colors.accent,
    background: colors.background,
    surface: colors.surface,
    text: colors.text,
    error: colors.error,
    success: colors.success,
    disabled: colors.disabled,
    placeholder: colors.lightText,
    backdrop: 'rgba(0, 0, 0, 0.5)',
    notification: colors.accent,
    onSurface: colors.text,
    elevation: {
      level0: 'transparent',
      level1: 'rgba(0, 0, 0, 0.05)',
      level2: 'rgba(0, 0, 0, 0.08)',
      level3: 'rgba(0, 0, 0, 0.1)',
      level4: 'rgba(0, 0, 0, 0.12)',
      level5: 'rgba(0, 0, 0, 0.14)',
    },
  },
  roundness: 10,
  fonts: {
    ...DefaultTheme.fonts,
    regular: {
      fontFamily: 'System',
      fontWeight: '400',
    },
    medium: {
      fontFamily: 'System',
      fontWeight: '500',
    },
    light: {
      fontFamily: 'System',
      fontWeight: '300',
    },
    thin: {
      fontFamily: 'System',
      fontWeight: '100',
    },
  },
  animation: {
    scale: 1.0,
  },
};

export default theme;
