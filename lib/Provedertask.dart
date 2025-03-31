import 'package:flutter/material.dart';
import 'package:my_app/Job1.dart';

class Provedertask extends ChangeNotifier {
  List<Job1> _job = [Job1(text2: 'المهمة', complet: false)];
  List<Job1> get Job {
    return _job;
  }

  void removejob(index) {
    _job.removeAt(index);
    notifyListeners();
  }

  void addjob(Job1 job) {
    _job.add(job);
    notifyListeners();
  }

  void changecomple(index) {
    _job[index].complet = !_job[index].complet;
    notifyListeners();
  }
}
