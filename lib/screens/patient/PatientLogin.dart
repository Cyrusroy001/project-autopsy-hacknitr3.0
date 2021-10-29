// ignore_for_file: file_names, prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PatientLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFC1BFFA),
        title: Text('User Login'),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(32),
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: buildID(),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 20),
              child: buildPassword(),
            ),

            ButtonBar(
              children: [

                Padding(
                  padding: EdgeInsets.only(left: 160),

                  child: RaisedButton(
                    color: Color(0xFFEA8C86),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    onPressed:() {

                      //Authentication Logic and awaiting etc. and dashboard view

                      // if patient
                      Navigator.pushReplacementNamed(context, '/PatientDashboard');


                    },
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(right: 50, top: 110),
                  child: RaisedButton(
                    color: Colors.amber[400],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Text(
                      'Create a New Account',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    onPressed:() {
                      Navigator.pushReplacementNamed(context, '/AllStepsPage');
                    },
                  ),
                ),

              ],

            ),

          ],
        ),
      ),
    );
  }

  // ID text field widget

  Widget buildID() => TextField(
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      prefixIcon: Icon(Icons.account_circle),
      labelText: 'User ID',
    ),

    //done button on keyboard
    textInputAction: TextInputAction.done,
  );



  // password text field widget
  Widget buildPassword() => TextField(
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      prefixIcon: Icon(Icons.vpn_key),
      labelText: 'Password',
    ),

    //done button on keyboard
    textInputAction: TextInputAction.done,
  );


}
