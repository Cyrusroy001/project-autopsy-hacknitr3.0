// ignore_for_file: file_names, prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FinishingPage extends StatefulWidget {
  @override
  _FinishingPageState createState() => _FinishingPageState();
}

class _FinishingPageState extends State<FinishingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User ID'),
      ),

      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.pushReplacementNamed(context, '/PatientDashboard');
          },
          child: Text('Finish',
            style: TextStyle(
              color: Color(0xFF1D1D1D),
              fontSize: 20,
              letterSpacing: 2,
              wordSpacing: 3,
            ),
          ),
          color: Colors.purpleAccent[100],
        ),
      ),
    );
  }
}
