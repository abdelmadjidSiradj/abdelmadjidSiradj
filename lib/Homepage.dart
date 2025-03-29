import 'package:flutter/material.dart';
import 'package:my_app/Imageslite.dart';
import 'package:my_app/Textname.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key, required this.title}) : super(key: key);
  final String title;
  final fik = TextEditingController();
  static const String Babelname = 'Home';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(
            this.title,
            style: TextStyle(color: Colors.white),
          ),
          leading: Icon(Icons.arrow_back_ios, color: Colors.white),
          backgroundColor: Color.fromARGB(255, 24, 2, 124),
        ),
        body: SingleChildScrollView(
          child: Column(
            
            children: [
              ElevatedButton( 
                onPressed: (){
                  Navigator.pop(context);
                },
                 child: 
                  Text('Return log'),
                 ),
              Row(
                children: [
                  Textname(titelname: 'اللحوم'),
                  SizedBox(width: 4),
                  Textname(titelname: 'الخضروات'),
                ],
              ),
              Row(
                children: [
                  Imageslite(nameimage: 'assist/images/code.png'),
                  Imageslite(nameimage: 'assist/images/image.png'),
                ],
              ),
              Row(
                children: [
                  Imageslite(
                      nameimage: 'assist/images/photo_2025-03-08_15-46-13.jpg'),
                  Imageslite(
                      nameimage: 'assist/images/photo_2025-03-08_17-02-28.jpg'),
                ],
              ),
              Row(
                children: [
                  Imageslite(
                      nameimage: 'assist/images/photo_2025-03-08_15-46-13.jpg'),
                  Imageslite(
                      nameimage: 'assist/images/photo_2025-03-08_17-02-28.jpg'),
                ],
              ),
              
            ],
             
          
          
          ),
        ));
  }
}
