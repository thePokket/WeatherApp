import 'package:weatherapp/Model/WeatherResponseModel.dart';
import 'package:weatherapp/Providers/APIProvider.dart';

// This file is used to send data received from server to BLOC class
class Repository {
  ApiProvider appApiProvider = ApiProvider();

  Future<WeatherResponse> fetchLondonWeather() => appApiProvider.fetchLondonWeather();
  Future<void> addLocation(var lat,var long) => appApiProvider.addLocation(lat, long);
}