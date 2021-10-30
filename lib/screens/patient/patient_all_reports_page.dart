import 'package:flutter/material.dart';
import 'package:project_autopsy/model/firebase_file.dart';
import 'package:project_autopsy/screens/doctor/api/firebase_api.dart';
import 'package:project_autopsy/widgets/report.dart';

class PatientAllReportsPage extends StatefulWidget {
  @override
  State<PatientAllReportsPage> createState() => _PatientAllReportsPageState();
}

class _PatientAllReportsPageState extends State<PatientAllReportsPage> {
  final num = 0;
  Future<List<FirebaseFile>> futureFiles;
  @override
  void initState() {
    super.initState();
    futureFiles = FirebaseApi.listAll('files/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('My Reports'),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.black87,
      ),
      body: FutureBuilder<List<FirebaseFile>>(
          future: futureFiles,
          builder: (context, snapshot) {
            return Container(
              padding: EdgeInsets.all(20),
              child: ListView(
                children: [
                  Text('Total Reports: $num'),
                ],
              ),
            );
          }),
    );
  }
}
