import 'package:flutter/material.dart';
import 'package:project_autopsy/widgets/report.dart';

class PatientAllReportsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('My Reports'),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.black87,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Report(
              title: 'title1',
              hospital: 'hospital1',
              doctor: 'doctor1',
              date: 'date1',
            ),
            Report(
              title: 'title2',
              hospital: 'hospital2',
              doctor: 'doctor2',
              date: 'date2',
            ),
            Report(
              title: 'title3',
              hospital: 'hospital3',
              doctor: 'doctor3',
              date: 'date3',
            ),
            Report(
              title: 'title4',
              hospital: 'hospital4',
              doctor: 'doctor4',
              date: 'date4',
            ),
            Report(
              title: 'title5',
              hospital: 'hospital5',
              doctor: 'doctor5',
              date: 'date5',
            ),Report(
              title: 'title6',
              hospital: 'hospital6',
              doctor: 'doctor6',
              date: 'date6',
            ),
          ],
        ),
      ),
    );
  }
}
