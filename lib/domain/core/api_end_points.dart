import 'package:netflix/core/Strings.dart';
import 'package:netflix/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads = '$kBaseUrl/movie/now_playing?api_key=$apiKey';
}
