import 'package:flutter/material.dart';
import '../models/models.dart';
import '../components/components.dart';

class SimilarListView extends StatelessWidget {
  const SimilarListView({Key? key, required this.similarMovies})
      : super(key: key);

  final List<Movie> similarMovies;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Similar Movies'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 11,
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemCount: similarMovies.length,
              itemBuilder: (context, index) {
                final movie = similarMovies[index];
                return Card2(movie: movie);
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
