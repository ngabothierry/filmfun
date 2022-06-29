import 'package:flutter/material.dart';
import '../models/models.dart';

class MyRatingBar extends StatefulWidget {
  const MyRatingBar({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  State<MyRatingBar> createState() => _MyRatingBarState();
}

class _MyRatingBarState extends State<MyRatingBar> {
  int _rating = 0;
  int voteCount1 = 0;
  int vote = 0;
  int voteCount = 0;

  @override
  void initState() {
    vote = widget.movie.voteCount as int;
    voteCount = vote;
    super.initState();
  }

  void rate(int rating) {
    //Other actions based on rating such as api calls.
    setState(() {
      _rating = rating;
      if (rating != 0) {
        voteCount = vote + _rating;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: 500.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  child: Icon(
                    Icons.star,
                    color: _rating >= 1 ? Colors.orange : Colors.grey,
                    size: 60,
                  ),
                  onTap: () => rate(1),
                ),
                GestureDetector(
                  child: Icon(
                    Icons.star,
                    color: _rating >= 2 ? Colors.orange : Colors.grey,
                    size: 60,
                  ),
                  onTap: () => rate(2),
                ),
                GestureDetector(
                  child: Icon(
                    Icons.star,
                    color: _rating >= 3 ? Colors.orange : Colors.grey,
                    size: 60,
                  ),
                  onTap: () => rate(3),
                ),
                GestureDetector(
                  child: Icon(
                    Icons.star,
                    color: _rating >= 4 ? Colors.orange : Colors.grey,
                    size: 60,
                  ),
                  onTap: () => rate(4),
                ),
                GestureDetector(
                  child: Icon(
                    Icons.star,
                    color: _rating >= 5 ? Colors.orange : Colors.grey,
                    size: 60,
                  ),
                  onTap: () => rate(5),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          voteCount.toString(),
          style: TextStyle(
            fontSize: 50,
            color: Color.fromARGB(255, 5, 11, 120),
          ),
        ),
      ],
    );
  }
}
