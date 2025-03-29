import 'package:flutter/material.dart';
import 'package:my_app/AlarmTime.dart';
import 'package:my_app/Homepage.dart';
import 'package:my_app/Navigatwidght.dart';
import 'package:my_app/Settings.dart';
import 'package:my_app/ShortList.dart';

class Appdrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: Column(
        children: [
        AppBar(
          title: Text('Listview', style: TextStyle(fontSize: 40.2)),
          backgroundColor: Colors.blue,
        ),
         Shortlist.shortlist(Icons.home, context, 'Homepage', Homepage.Babelname ),

          Shortlist.shortlist(Icons.save, context, 'Save',Navigatwidght.Babelname),
        Shortlist.shortlist(Icons.alarm, context, 'Alarm',Alarmtime.Babelname ),
        Shortlist.shortlist(Icons.settings, context, 'Settings', Settings.Babelname ),
      
      ]),
    );
  }
}
