import 'package:filmfun/screens/screens.dart';
import 'package:flutter/material.dart';
import '../models/models.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: Color.fromARGB(255, 177, 186, 241),
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Image.network(
                movie.posterPath,
                width: 100,
                height: 100,
              ),
            ),
            //const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title,
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    movie.releaseDate,
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SimilarMovieDetails(
              movie: movie,
            ),
          ),
        );
      },
    );
  }
}
