import React from 'react';
import { View, StyleSheet } from 'react-native';
import { useLocalization } from '../context/LocalizationContext';
import * as Analytics from 'expo-analytics';

// Initialize analytics tracker
const analytics = new Analytics.Tracker('UA-XXXXXXXXX-X'); // Replace with actual tracking ID

/**
 * Analytics utility for tracking user behavior and app usage
 */
class AnalyticsService {
  /**
   * Track a screen view
   * @param {string} screenName - Name of the screen being viewed
   * @param {Object} properties - Additional properties to track
   */
  static trackScreenView(screenName, properties = {}) {
    try {
      analytics.trackScreenView(screenName, properties);
      console.log(`[Analytics] Screen view: ${screenName}`);
    } catch (error) {
      console.error('[Analytics] Error tracking screen view:', error);
    }
  }

  /**
   * Track a user event
   * @param {string} category - Event category
   * @param {string} action - Event action
   * @param {string} label - Event label (optional)
   * @param {number} value - Event value (optional)
   */
  static trackEvent(category, action, label = null, value = null) {
    try {
      analytics.trackEvent(category, action, { label, value });
      console.log(`[Analytics] Event: ${category} - ${action} - ${label}`);
    } catch (error) {
      console.error('[Analytics] Error tracking event:', error);
    }
  }

  /**
   * Track user authentication
   * @param {string} method - Authentication method (login, register, etc.)
   * @param {boolean} success - Whether authentication was successful
   */
  static trackAuthentication(method, success) {
    this.trackEvent('Authentication', method, success ? 'Success' : 'Failure');
  }

  /**
   * Track course interaction
   * @param {string} courseId - ID of the course
   * @param {string} action - Action performed (view, enroll, complete, etc.)
   */
  static trackCourseInteraction(courseId, action) {
    this.trackEvent('Course', action, courseId);
  }

  /**
   * Track lesson interaction
   * @param {string} lessonId - ID of the lesson
   * @param {string} action - Action performed (view, complete, etc.)
   * @param {number} timeSpent - Time spent on lesson in seconds (optional)
   */
  static trackLessonInteraction(lessonId, action, timeSpent = null) {
    this.trackEvent('Lesson', action, lessonId, timeSpent);
  }

  /**
   * Track quiz interaction
   * @param {string} quizId - ID of the quiz
   * @param {string} action - Action performed (start, complete, etc.)
   * @param {number} score - Quiz score (optional)
   */
  static trackQuizInteraction(quizId, action, score = null) {
    this.trackEvent('Quiz', action, quizId, score);
  }

  /**
   * Track user feedback
   * @param {string} type - Feedback type (bug, feature, other)
   * @param {boolean} submitted - Whether feedback was submitted
   */
  static trackFeedback(type, submitted) {
    this.trackEvent('Feedback', submitted ? 'Submit' : 'Cancel', type);
  }

  /**
   * Track app performance
   * @param {string} metric - Performance metric (load_time, response_time, etc.)
   * @param {number} value - Metric value
   */
  static trackPerformance(metric, value) {
    this.trackEvent('Performance', metric, null, value);
  }

  /**
   * Track app errors
   * @param {string} errorType - Type of error
   * @param {string} errorMessage - Error message
   * @param {string} errorLocation - Where the error occurred
   */
  static trackError(errorType, errorMessage, errorLocation) {
    this.trackEvent('Error', errorType, `${errorLocation}: ${errorMessage}`);
  }

  /**
   * Track language change
   * @param {string} language - New language code
   */
  static trackLanguageChange(language) {
    this.trackEvent('Settings', 'ChangeLanguage', language);
  }
}

/**
 * Analytics screen wrapper component
 * Automatically tracks screen views when component mounts
 */
export const withAnalytics = (ScreenComponent, screenName) => {
  return (props) => {
    React.useEffect(() => {
      AnalyticsService.trackScreenView(screenName);
    }, []);

    return <ScreenComponent {...props} />;
  };
};

export default AnalyticsService;
