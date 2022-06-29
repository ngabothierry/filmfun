import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() {
  runApp(
    const FilmFun(),
  );
}

class FilmFun extends StatefulWidget {
  const FilmFun({Key? key}) : super(key: key);

  @override
  State<FilmFun> createState() => _FilmFunState();
}

class _FilmFunState extends State<FilmFun> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Film Fun',
      home: HomeScreen(),
    );
  }
}
