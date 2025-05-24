import React, { useState, useEffect } from 'react';
import { View, Text, StyleSheet, FlatList, ActivityIndicator } from 'react-native';
import { Searchbar } from 'react-native-paper';
import supabaseService from '../services/supabaseService'; // Import Supabase service
import CourseCard from '../components/CourseCard';
import colors from '../constants/colors';

const CourseListScreen = ({ navigation }) => {
  const [searchQuery, setSearchQuery] = useState('');
  const [allCourses, setAllCourses] = useState([]); // Store all fetched courses
  const [filteredCourses, setFilteredCourses] = useState([]); // Store courses to display
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  // Fetch courses from Supabase on component mount
  useEffect(() => {
    const fetchCourses = async () => {
      try {
        setLoading(true);
        setError(null);
        const courses = await supabaseService.getAllCourses();
        // TODO: Adapt image handling if necessary. Assuming 'image_url' field exists in Supabase table.
        // If images are stored differently (e.g., require mapping), adjust here.
        const adaptedCourses = courses.map(course => ({
          ...course,
          id: course.course_id, // Map Supabase ID
          image: { uri: course.image_url } // Assuming image_url field
        }));
        setAllCourses(adaptedCourses);
        setFilteredCourses(adaptedCourses);
      } catch (err) {
        console.error('Error fetching courses:', err);
        setError('Impossible de charger les cours. Veuillez réessayer.');
      } finally {
        setLoading(false);
      }
    };

    fetchCourses();
  }, []);

  // Handle search query changes
  const onChangeSearch = (query) => {
    setSearchQuery(query);
    if (query.trim() === '') {
      setFilteredCourses(allCourses);
    } else {
      const filtered = allCourses.filter(course =>
        course.title.toLowerCase().includes(query.toLowerCase()) ||
        (course.description && course.description.toLowerCase().includes(query.toLowerCase()))
      );
      setFilteredCourses(filtered);
    }
  };

  // Render course item
  const renderCourseItem = ({ item }) => (
    <CourseCard
      course={item}
      onPress={() => navigation.navigate('CourseDetail', {
        courseId: item.id, // Use mapped ID
        courseTitle: item.title
      })}
    />
  );

  // Render loading state
  if (loading) {
    return (
      <View style={styles.centeredContainer}>
        <ActivityIndicator size="large" color={colors.primary} />
        <Text style={styles.loadingText}>Chargement des cours...</Text>
      </View>
    );
  }

  // Render error state
  if (error) {
    return (
      <View style={styles.centeredContainer}>
        <Text style={styles.errorText}>{error}</Text>
        {/* Optionally add a retry button here */}
      </View>
    );
  }

  // Render main content
  return (
    <View style={styles.container}>
      <Searchbar
        placeholder="Rechercher un cours"
        onChangeText={onChangeSearch}
        value={searchQuery}
        style={styles.searchBar}
      />
      
      {filteredCourses.length > 0 ? (
        <FlatList
          data={filteredCourses}
          renderItem={renderCourseItem}
          keyExtractor={item => item.id.toString()} // Ensure key is a string
          contentContainerStyle={styles.listContainer}
        />
      ) : (
        <View style={styles.noResultsContainer}>
          <Text style={styles.noResultsText}>
            {searchQuery ? 'Aucun cours ne correspond à votre recherche' : 'Aucun cours disponible pour le moment'}
          </Text>
        </View>
      )}
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 16,
    backgroundColor: colors.background,
  },
  centeredContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 20,
    backgroundColor: colors.background,
  },
  loadingText: {
    marginTop: 10,
    fontSize: 16,
    color: colors.text,
  },
  errorText: {
    fontSize: 16,
    color: colors.error, // Make sure colors.error is defined
    textAlign: 'center',
  },
  searchBar: {
    marginBottom: 16,
    elevation: 2,
  },
  listContainer: {
    paddingBottom: 20,
  },
  noResultsContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    paddingHorizontal: 40,
  },
  noResultsText: {
    fontSize: 16,
    color: colors.lightText,
    textAlign: 'center',
  },
});

export default CourseListScreen;

