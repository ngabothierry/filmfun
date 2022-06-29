import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import '../models/movie.dart';

class MoviesData {
  Future<List<Movie>> fetchWatchingMovies() async {
    final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/now_playing?api_key=6de4246e4cb2019fe35beb010b7d6239&language=en-US&page=1'));

    final movies = <Movie>[];
    if (response.statusCode == 200) {
      final Map<String, dynamic> moviesMap = convert.jsonDecode(response.body);
      moviesMap['results'].forEach((movie) {
        movies.add(Movie.fromJson(movie));
        return movies;
      });
    } else {
      return [];
    }
    return movies;
  }

  Future<List<Movie>> fetchSimilarMovies(Movie movie) async {
    String movieId = movie.id.toString();
    String urlPart1 = "https://api.themoviedb.org/3/movie/";
    String urlPart2 =
        "/similar?api_key=6de4246e4cb2019fe35beb010b7d6239&language=en-US&page=1";

    String url = urlPart1 + movieId + urlPart2;
    print(url);
    final response = await http.get(Uri.parse(url));

    final movies = <Movie>[];
    if (response.statusCode == 200) {
      final Map<String, dynamic> moviesMap = convert.jsonDecode(response.body);
      moviesMap['results'].forEach((movie) {
        movies.add(Movie.fromJson(movie));
        return movies;
      });
    } else {
      return [];
    }
    return movies;
  }
}
