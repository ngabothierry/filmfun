import 'package:filmfun/screens/homescreen2.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Film Fun"),
      ),
      body: HomeScreen2(),
    );
  }
}
