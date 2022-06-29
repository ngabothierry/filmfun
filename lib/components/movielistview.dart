import 'package:flutter/material.dart';
import '../models/models.dart';
import '../components/components.dart';

class MovieListView extends StatelessWidget {
  const MovieListView({Key? key, required this.movies}) : super(key: key);

  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Now Playing Movies'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 11,
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemCount: movies.length,
              itemBuilder: (context, index) {
                final movie = movies[index];
                return Card1(movie: movie);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 5);
              },
            ),
          )
        ],
      ),
    );
  }
}
