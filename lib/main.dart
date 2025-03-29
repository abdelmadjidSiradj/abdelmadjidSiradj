import 'package:flutter/material.dart';
import 'package:my_app/AlarmTime.dart';
import 'package:my_app/Conterprofil.dart';
import 'package:my_app/Homepage.dart';
import 'package:my_app/Navigatwidght.dart';
import 'package:my_app/Settings.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      
      theme:ThemeData(
        brightness: Brightness.light
      ),
      darkTheme: ThemeData(
       brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.system,
      
      
      initialRoute:Conterprofil.Babelname,
      routes: {
        Navigatwidght.Babelname: (context)=> Navigatwidght(),

        Homepage.Babelname : (context)=>Homepage(title: 'Home'),
        Conterprofil.Babelname: (context)=>Conterprofil(),
        Alarmtime.Babelname: (context)=>Alarmtime(),
        Settings.Babelname: (context)=>Settings(),
      }
    );
  }
}


