// ignore_for_file: file_names, prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PatientOrDoctor extends StatefulWidget {
  @override
  _PatientOrDoctorState createState() => _PatientOrDoctorState();
}

class _PatientOrDoctorState extends State<PatientOrDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient or Doctor'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.pushNamed(context, '/CreateAccountPage');
          },
          child: Text('Choose Patient or Doctor',
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
