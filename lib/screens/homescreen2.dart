import 'package:flutter/material.dart';
import '../components/components.dart';
import '../api/api_data.dart';
import '../models/models.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  State<HomeScreen2> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen2> {
  MoviesData moviesdata = MoviesData();

  late Future<List<Movie>> movies;

  @override
  void initState() {
    movies = moviesdata.fetchWatchingMovies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Movie>>(
      future: movies,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          snapshot.data?.sort(
              (a, b) => (a.title as String).compareTo(b.title as String));
          return MovieListView(movies: snapshot.data ?? []);
        } else {
          return Text(
            '${snapshot.error}',
          );
        }
      },
    );
  }
}
