import 'package:flutter/material.dart';
import 'package:my_app/Homepage.dart';

import 'Appdrawer.dart';

class Navigatwidght extends StatelessWidget {
  static const String Babelname = 'login';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ٍSave'),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.more_vert
            
            ),
            itemBuilder: (_)=>
            [PopupMenuItem(
              child: Text('الاعدادات'),
 
            ),
            PopupMenuItem(
              child: Text('المهمات المنجزة'),
 
            ),
          ] 
          
          
          
          
          )


        ],
      ),
      
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(Homepage.Babelname);
          },
          child: Text('Home', style: TextStyle()),
        ),
      ),
       
   );

  }
}
