import { registerRootComponent } from 'expo';
import { StrictMode } from 'react';
import App from '../App'; // Adjusted to match the file name if it is 'app.js'

// Wrap App with StrictMode
const AppWithStrictMode = () => (
  <StrictMode>
    <App />
  </StrictMode>
);

registerRootComponent(AppWithStrictMode);
