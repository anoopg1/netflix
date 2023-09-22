import 'package:netflix/core/Strings.dart';
import 'package:netflix/infrastructure/api_key.dart';



class ApiEndPoints {
  static const downloads = '$kBaseUrl/movie/popular?api_key=$apiKey';
  static const search ="$kBaseUrl/search/movie?api_key=$apiKey";
  static const searchIdle="$kBaseUrl/movie/popular?api_key=$apiKey";
  static const homelatest="$kBaseUrl/movie/latest?api_key=$apiKey";
}
