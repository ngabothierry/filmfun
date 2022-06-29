import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import '../models/models.dart';
import '../components/components.dart';

class WishMovies extends StatefulWidget {
  const WishMovies({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  State<WishMovies> createState() => _WishMoviesState();
}

class _WishMoviesState extends State<WishMovies> {
  List<Movie> movies = <Movie>[];

  @override
  initState() {
    super.initState();
    movies.add(widget.movie);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Wish List"),
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
                  return Card3(movie: movie);
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 5);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
