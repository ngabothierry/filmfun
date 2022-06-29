import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import '../models/models.dart';
import '../components/components.dart';
import './screens.dart';

class SimilarMovieDetails extends StatefulWidget {
  const SimilarMovieDetails({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  State<SimilarMovieDetails> createState() => _SimilarMovieDetailsState();
}

class _SimilarMovieDetailsState extends State<SimilarMovieDetails> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Similar Movie Details'),
        ),
        body: Column(
          children: [
            const SizedBox(height: 20),
            ImageSlideshow(
              width: double.infinity,
              height: 350,
              initialPage: 0,
              indicatorColor: Colors.blue,
              children: [
                Image.network(widget.movie.posterPath),
                Image.network(widget.movie.backdropPath),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(
                    buttonTitle: "ADD WISH LIST",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WishMovies(
                            movie: widget.movie,
                          ),
                        ),
                      );
                    }),
              ],
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                "Rating",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 186, 116, 9),
                ),
              ),
            ),
            MyRatingBar(movie: widget.movie),
          ],
        ),
      ),
    );
  }
}
