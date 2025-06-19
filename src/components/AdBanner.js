import { AdMobBanner } from 'expo-ads-admob';
import { View, StyleSheet } from 'react-native';
import { adUnitIDs, isProduction } from '../config/adMobConfig';

export default function AdBanner() {
  return (
    <View style={styles.bannerContainer}>
      <AdMobBanner
        bannerSize="fullBanner"
        adUnitID={isProduction ? adUnitIDs.androidBanner : adUnitIDs.androidBannerTest}
        servePersonalizedAds={true}
        onDidFailToReceiveAdWithError={(error) => console.error(error)}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  bannerContainer: {
    width: '100%',
    alignItems: 'center',
    marginVertical: 10
  }
});