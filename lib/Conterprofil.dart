import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_app/Navigatwidght.dart';
import 'package:my_app/Provedertask.dart';
import 'package:my_app/Job1.dart';
import 'package:my_app/Appdrawer.dart';

class Conterprofil extends StatefulWidget {
  static const String Babelname = 'Conter';
  @override
  State<StatefulWidget> createState() {
    return ConterprofilState();
  }
}

class ConterprofilState extends State<Conterprofil> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Conterpage'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Consumer<Provedertask>(
              builder: (context, provedertask, child) {
                return ListView.builder(
                  itemCount: provedertask.Job.length,
                  itemBuilder: (context, index) {
                    final job = provedertask.Job[index];
                    return ListTile(
                      title: Text(job.text2),
                      trailing: Checkbox(
                        value: job.complet,
                        onChanged: (value) {
                          provedertask.changecomple(index);
                        },
                      ),
                      onLongPress: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text('تأكيد الحذف'),
                            content: Text('هل تريد حذف هذه المهمة؟'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  provedertask.removejob(index);
                                  Navigator.of(context).pop();
                                },
                                child: Text('نعم'),
                              ),
                              TextButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: Text('إلغاء'),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('المهمة'),
              content: TextField(
                controller: _textController,
                decoration: const InputDecoration(hintText: 'اضافة مهمة'),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    if (_textController.text.isNotEmpty) {
                      Provider.of<Provedertask>(context, listen: false).addjob(
                        Job1(
                          text2: _textController.text,
                          complet: false,
                        ),
                      );
                      _textController.clear();
                      Navigator.of(context).pop();
                    }
                  },
                  child: Text('حفظ'),
                ),
                TextButton(
                  onPressed: () {_textController.clear();Navigator.of(context).pop();} ,
                  child: Text('إلغاء'),
                ),
              ],
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      drawer: Appdrawer(),
    );
  }
}
