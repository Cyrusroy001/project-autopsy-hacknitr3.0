// ignore_for_file: file_names, prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors, missing_return

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorDashboard extends StatefulWidget {
  @override
  _DoctorDashboardState createState() => _DoctorDashboardState();
}

class _DoctorDashboardState extends State<DoctorDashboard> {
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
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          foregroundColor: Colors.black87,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          title: Text(
            'Dashboard',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          elevation: 0,
          centerTitle: true,
        ),
        body: Center(
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.fromLTRB(25, 50, 25, 25),
              child: Column(
                children: [
                  SizedBox(height: 100),
                  Text(
                    'What you want to do ?',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      // fontStyle: FontStyle.regular,
                      color: Colors.black87,
                      letterSpacing: 1,
                      wordSpacing: 2,
                    ),
                  ),
                  SizedBox(height: 60),
                  Center(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/SendReport');
                      },
                      child: Text(
                        'Send Reports',
                        style: TextStyle(
                          color: Color(0xFF1D1D1D),
                          fontSize: 20,
                          letterSpacing: 1,
                          wordSpacing: 2,
                        ),
                      ),
                      color: Colors.green[200],
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          '/PatientAllReportsPage',
                          arguments: {
                            'fromDoctor': true,
                          },
                        );
                      },
                      child: Text(
                        'View Reports',
                        style: TextStyle(
                          color: Color(0xFF1D1D1D),
                          fontSize: 20,
                          letterSpacing: 1,
                          wordSpacing: 2,
                        ),
                      ),
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
