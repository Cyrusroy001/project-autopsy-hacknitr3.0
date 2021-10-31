// ignore_for_file: file_names, prefer_const_constructors, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LaunchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Container(
            padding: EdgeInsets.fromLTRB(25, 50, 25, 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to',
                  style: TextStyle(
                    letterSpacing: 3,
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    color: Colors.black45,
                  ),
                ),
                SizedBox(height: 7),
                Text(
                  'AUTOPSY',
                  style: TextStyle(
                    letterSpacing: 6,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 9),
                Text(
                  'An app to safely store your Medical Reports.',
                  style: TextStyle(
                    // fontStyle: FontStyle.italic,
                    letterSpacing: 1,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87,
                  ),
                ),

                // SizedBox(height: 350),
                Container(
                  child: Center(
                    child: Image(
                      image: AssetImage('assets/images/Landing_Page_Image.png'),
                      width: double.infinity,
                      height: 400,
                    ),
                  ),
                ),

                Center(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/AllStepsPage');
                    },
                    child: Text(
                      'Start Your Journey',
                      style: TextStyle(
                        color: Color(0xFF1D1D1D),
                        fontSize: 20,
                        letterSpacing: 1,
                        wordSpacing: 2,
                      ),
                    ),
                    color: Theme.of(context).accentColor,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 15),

                Center(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/PatientLogin');
                    },
                    child: Text(
                      'Already A User',
                      style: TextStyle(
                        color: Color(0xFF1D1D1D),
                        fontSize: 20,
                        letterSpacing: 1,
                        wordSpacing: 2,
                      ),
                    ),
                    color: Colors.red[200],
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black87,
                      ),
                    ),
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
