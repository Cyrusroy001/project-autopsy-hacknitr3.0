// ignore_for_file: file_names, prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllStepsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Steps to Follow'),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(25, 50, 25, 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('STEP 1 : ',
                    style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 3),
                    child: Text(
                      'Tell us about yourself',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 40),

              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('STEP 2 : ',
                    style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 3),
                    child: Text(
                      'Register your account',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 40),

              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('STEP 3 : ',
                    style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 3),
                    child: Text(
                      'Get your Unique User ID',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 40),

              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('STEP 4 : ',
                    style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 3),
                    child: Text(
                      'Share your User ID',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 100),

              RaisedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/PatientOrDoctorPage');
                },
                child: Text('Continue with Step 1',
                  style: TextStyle(
                    color: Color(0xFF1D1D1D),
                    fontSize: 20,
                    letterSpacing: 2,
                    wordSpacing: 3,
                  ),
                ),
                color: Colors.purpleAccent[100],
              ),

            ],
          ),
        ),
      ),
    );
  }
}