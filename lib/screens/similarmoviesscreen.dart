import 'package:flutter/material.dart';
import '../components/components.dart';
import '../api/api_data.dart';
import '../models/models.dart';

class SimilarMovies extends StatefulWidget {
  const SimilarMovies({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  State<SimilarMovies> createState() => _SimilarMoviesState();
}

class _SimilarMoviesState extends State<SimilarMovies> {
  MoviesData moviesdata = MoviesData();

  late Future<List<Movie>> similarMovies;

  @override
  void initState() {
    similarMovies = moviesdata.fetchSimilarMovies(widget.movie);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Movie>>(
      future: similarMovies,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          snapshot.data?.sort((a, b) => a.title.compareTo(b.title));
          return SimilarListView(similarMovies: snapshot.data ?? []);
        } else {
          return Text(
            '${snapshot.error}',
          );
        }
      },
    );
  }
}
