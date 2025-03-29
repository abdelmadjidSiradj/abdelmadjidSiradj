import 'package:flutter/material.dart';
import 'package:my_app/Navigatwidght.dart';

import 'Appdrawer.dart';

class Conterprofil extends StatefulWidget {
  static const String Babelname = 'Conter';

  @override
  State<StatefulWidget> createState() {
    return ConterprofilState();
  }
}

class ConterprofilState extends State<Conterprofil> {
  String _savetext1 = " ";
  TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Conterpage'),
      ),
      body: Stack(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(children: [
                  FloatingActionButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('المهمة'),
                          content: TextField(
                            controller: _textController,
                            decoration: InputDecoration(hintText: 'اضافة مهمة'),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                setState(() {
                                 print(_savetext1 = _textController.text) ;
                                });
                                Navigator.of(context).pop();
                              },
                              child: Text('حفظ'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('الغاء'),
                            )
                          ],
                        ),
                      );
                      setState(() {});
                    },
                    child: Icon(Icons.add),
                  ),
           
                ])
              ],
            ),
          ],
        ),
      ]),
      drawer: Appdrawer(),
    );
  }
}
