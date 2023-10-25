import 'package:netflix_app/core/string.dart';
import 'package:netflix_app/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads = '$baseUrl/trending/movie/day?api_key=$apiKey';

  static const search = '$baseUrl/search/multi?query=Spiderman&api_key=$apiKey';
}
//need to look the query section in search URL