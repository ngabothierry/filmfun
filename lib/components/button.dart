import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({required this.onTap, required this.buttonTitle});

  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        color: Color.fromARGB(255, 5, 11, 120),
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 5.0, left: 10.0),
        width: 100,
        height: 50,
      ),
    );
  }
}
