import 'package:netflix/core/Strings.dart';
import 'package:netflix/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads = '$kBaseUrl/movie/popular?api_key=$apiKey';
  static const search = "$kBaseUrl/search/movie?api_key=$apiKey";
  static const searchIdle = "$kBaseUrl/movie/popular?api_key=$apiKey";
  static const homelatest = "$kBaseUrl/movie/now_playing?api_key=$apiKey";
  static const homeTrending = "$kBaseUrl/movie/popular?api_key=$apiKey";
  static const hometopTvSHow = "$kBaseUrl/trending/tv/week?api_key=$apiKey";
}
