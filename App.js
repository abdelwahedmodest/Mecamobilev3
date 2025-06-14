import { NavigationContainer } from '@react-navigation/native';
import { StatusBar } from 'expo-status-bar';
import React, { StrictMode, useEffect, useState } from 'react';
import { Provider as PaperProvider } from 'react-native-paper';
import theme from './src/constants/theme';
import { AuthProvider } from './src/context/AuthContext';
import AppNavigator from './src/navigation/AppNavigator';
import { checkFirstLaunch } from './src/utils/storage';
import { LocalizationProvider } from './src/context/LocalizationContext';
import { polyfill } from 'web-streams-polyfill/ponyfill';

if (typeof ReadableStream === 'undefined') {
  polyfill();
}

export default function App() {
  const [isFirstLaunch, setIsFirstLaunch] = useState(null);

  useEffect(() => {
    checkFirstLaunch().then(isFirst => {
      setIsFirstLaunch(isFirst);
    });
  }, []);

  if (isFirstLaunch === null) {
    return null; // or a loading screen
  }

  return (
    <StrictMode>
      <AuthProvider>
        <LocalizationProvider>
          <PaperProvider theme={theme}>
            <NavigationContainer>
              <StatusBar style="auto" />
              <AppNavigator isFirstLaunch={isFirstLaunch} />
            </NavigationContainer>
          </PaperProvider>
        </LocalizationProvider>
      </AuthProvider>
    </StrictMode>
  );
}
