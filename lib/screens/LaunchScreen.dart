
// ignore_for_file: file_names, prefer_const_constructors, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LaunchScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(25, 50, 25, 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text(
                  'Welcome to',
                style: TextStyle(
                  letterSpacing: 3,
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                  color: Colors.black45,
                ),
              ),
              SizedBox(height: 14),
              Text(
                  'AUTOPSY',
                style: TextStyle(
                  letterSpacing: 6,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 20),
              Text(
                  'An app to safely store your Medical Reports.',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                ),
              ),

              SizedBox(height: 200),

              RaisedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/AllStepsPage');
                  },
                child: Text('Start Your Journey',
                  style: TextStyle(
                    color: Color(0xFF1D1D1D),
                    fontSize: 20,
                    letterSpacing: 2,
                    wordSpacing: 1,
                  ),
                ),
                color: Color(0xFFC1BFFA),
              ),

              SizedBox(height: 25),

              RaisedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/PatientLogin');
                },
                child: Text('Already A User',
                  style: TextStyle(
                    color: Color(0xFF1D1D1D),
                    fontSize: 20,
                    letterSpacing: 2,
                    wordSpacing: 3,
                  ),
                ),
                color: Colors.pinkAccent,
              ),
            ],
          ),
        ),
      ),
      );
  }
}

