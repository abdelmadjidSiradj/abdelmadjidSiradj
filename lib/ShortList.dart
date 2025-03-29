import 'package:flutter/material.dart';

class Shortlist {
 static Widget shortlist(
      IconData icon1, BuildContext context, String text1, String text2) {
    return ListTile(
        leading: Icon(icon1),
        title: Text(text1),
        onTap: () {
          Navigator.of(context).pushNamed(text2);
        });
  }
}
