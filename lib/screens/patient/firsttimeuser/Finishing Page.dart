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
        title: Text('Finishing up'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.fromLTRB(25, 50, 25, 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'STEP 3: ',
                  style: TextStyle(
                    letterSpacing: 2,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Congratulations, you have been successfully registered!',
                  style: TextStyle(
                    letterSpacing: 1,
                    wordSpacing: 2,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Your UID: ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 7,
                        left: 10,
                      ),
                      height: 40,
                      width: 250,
                      color: Theme.of(context).accentColor,
                      child: Text(
                        '//insert UID here',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'We will take care of remembering the UID.',
                  style: TextStyle(
                    letterSpacing: 1,
                    wordSpacing: 2,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Text(
                  'STEP 4: ',
                  style: TextStyle(
                    letterSpacing: 2,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'You are all set! Sending and receiving medical reports have never been easier!',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    letterSpacing: 1,
                    wordSpacing: 2,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 140,
                ),
                Center(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, '/PatientDashboard');
                    },
                    child: Text(
                      'Finish, move to Dashboard',
                      style: TextStyle(
                        color: Color(0xFF1D1D1D),
                        fontSize: 20,
                        letterSpacing: 2,
                        wordSpacing: 3,
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
    );
  }
}
