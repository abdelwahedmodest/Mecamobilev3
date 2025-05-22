import { createClient } from '@supabase/supabase-js';
import AsyncStorage from '@react-native-async-storage/async-storage';

const supabaseUrl = 'https://xrntrzscdlngwatczutw.supabase.co';
const supabaseAnonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InhybnRyenNjZGxuZ3dhdGN6dXR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDc5MjQ3MTcsImV4cCI6MjA2MzUwMDcxN30.PLpBvlFtzP-8-ByrweukvveouSNLOSeD5BbVVuO7s9I';

// Création du client Supabase avec AsyncStorage pour la persistance
const supabase = createClient(supabaseUrl, supabaseAnonKey, {
  auth: {
    storage: AsyncStorage,
    autoRefreshToken: true,
    persistSession: true,
    detectSessionInUrl: false,
  },
});

export default supabase;
