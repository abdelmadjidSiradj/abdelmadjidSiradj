import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  static const String Babelname = 'Settings';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(


      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Settings',
          style: TextStyle(
            fontSize: 35.5,
          ),
        ),


      ),
    );
  }
}
