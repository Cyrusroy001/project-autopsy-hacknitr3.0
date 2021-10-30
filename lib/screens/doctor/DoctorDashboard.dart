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
      onWillPop: (){
        return showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Warning'),
            content: Text('Do you want yo exit ?'),
            actions: [
              FlatButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/');
                  },
                  child: Text('Yes')
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: Text('No')
              ),
            ],
          ),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          title: Text('Hello, Doctor',
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

                  Text('What you want to do ?',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic,
                      color: Colors.black87,
                      letterSpacing: 1,
                      wordSpacing: 2,
                    ),
                  ),

                  SizedBox(height: 40),

                  Center(
                    child: RaisedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/SendReport');
                      },
                      child: Text('Send Reports',
                        style: TextStyle(
                          color: Color(0xFF1D1D1D),
                          fontSize: 20,
                          letterSpacing: 1,
                          wordSpacing: 2,
                        ),
                      ),
                      color: Theme.of(context).primaryColor,
                    ),
                  ),

                  SizedBox(height: 40),

                  Center(
                    child: RaisedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/EnterPatientUID');
                      },
                      child: Text('View Reports',
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