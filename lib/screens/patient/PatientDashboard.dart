// ignore_for_file: file_names, prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors, missing_return

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_autopsy/widgets/MenuDrawer.dart';
import 'package:project_autopsy/widgets/report.dart';

class PatientDashboard extends StatefulWidget {
  @override
  _PatientDashboardState createState() => _PatientDashboardState();
}

class _PatientDashboardState extends State<PatientDashboard> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(
              'Warning!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.red[200],
              ),
            ),
            content: Text('Do you want to exit from Autopsy?'),
            actions: [
              FlatButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
                child: Text(
                  'Yes',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: Text(
                  'No',
                  style: TextStyle(
                    color: Colors.green[200],
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        );
      },
      child: Scaffold(
        drawer: MenuDrawerWidget(),
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          foregroundColor: Colors.black87,

          title: Text('Dashboard'),
          elevation: 0,
          centerTitle: true,
          actions: [
            //notifications
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
          ],
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.fromLTRB(25, 15, 25, 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Some statistics: ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  // color: Theme.of(context).accentColor,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Theme.of(context).accentColor.withOpacity(0.6),
                        Theme.of(context).accentColor,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.black87,
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Text('//enter something here'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Latest Reports: ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/PatientAllReportsPage');
                      },
                      child: Text(
                        'View all Reports',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1,
                ),
                SizedBox(
                  height: 330,
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
                        hospital: 'hospita13',
                        doctor: 'doctor3',
                        date: 'date3',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
