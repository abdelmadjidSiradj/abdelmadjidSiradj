import 'package:flutter/material.dart';

class Textname extends StatelessWidget {
  String titelname;
  Textname({required this.titelname});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        color: Colors.blue,
        child: Text(
          this.titelname,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 23.0,
          ),
        ),
      ),
    );
  }
}
