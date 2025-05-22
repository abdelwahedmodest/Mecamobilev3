import React from 'react';
import { View, Text, StyleSheet, FlatList } from 'react-native';
import { Searchbar } from 'react-native-paper';
import { COURSES_DATA } from '../data/courseData'; 
import CourseCard from '../components/CourseCard';
import colors from '../constants/colors';

const CourseListScreen = ({ navigation }) => {                // Composant fonctionnel avec props navigation
  // États
  const [searchQuery, setSearchQuery] = React.useState('');   // État pour le texte de recherche
  const [filteredCourses, setFilteredCourses] = 
    React.useState(COURSES_DATA);                             // État pour la liste filtrée des cours

  // Gestionnaire de recherche
  const onChangeSearch = (query) => {                         // Fonction appelée à chaque modification de la recherche
    setSearchQuery(query);                                    // Met à jour le texte de recherche
    
    if (query.trim() === '') {                               // Si la recherche est vide
      setFilteredCourses(COURSES_DATA);                      // Affiche tous les cours
    } else {                                                 // Sinon
      const filtered = COURSES_DATA.filter(course =>         // Filtre les cours
        course.title.toLowerCase().includes(query.toLowerCase()) ||    // Recherche dans le titre
        course.description.toLowerCase().includes(query.toLowerCase()) // Et dans la description
      );
      setFilteredCourses(filtered);                          // Met à jour la liste filtrée
    }
  };

  // Rendu d'un élément de cours
  const renderCourseItem = ({ item }) => (                   // Fonction de rendu pour chaque cours
    <CourseCard                                             // Utilise le composant CourseCard
      course={item}                                         // Passe les données du cours
      onPress={() => navigation.navigate('CourseDetail', {  // Navigation vers les détails
        courseId: item.id,                                  // Passe l'ID du cours
        courseTitle: item.title                             // Passe le titre du cours
      })}
    />
  );

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
          keyExtractor={item => item.id}
          contentContainerStyle={styles.listContainer}
        />
      ) : (
        <View style={styles.noResultsContainer}>
          <Text style={styles.noResultsText}>
            Aucun cours ne correspond à votre recherche
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
