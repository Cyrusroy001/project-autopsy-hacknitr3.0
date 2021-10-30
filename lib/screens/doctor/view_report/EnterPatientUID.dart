// ignore_for_file: file_names, prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors, missing_return

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EnterPatientUID extends StatefulWidget {
  @override
  _EnterPatientUIDState createState() => _EnterPatientUIDState();
}

class _EnterPatientUIDState extends State<EnterPatientUID> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Patient UID'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
      ),


      body: Center(
        child: ListView(
          padding: EdgeInsets.all(32),
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: buildID(),
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
                      // ON Pressed show reports of particular UID
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
      labelText: 'Patient UID',
    ),

    //done button on keyboard
    textInputAction: TextInputAction.done,
  );



}
