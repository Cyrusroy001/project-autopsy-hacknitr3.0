// ignore_for_file: file_names, prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors, missing_return

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SentReport extends StatefulWidget {
  @override
  _SentReportState createState() => _SentReportState();
}

class _SentReportState extends State<SentReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send Report'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.black87,
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(32),
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: buildID(),
            ),
            SizedBox(height: 25),
            InkWell(
              onTap: () {
                // on tap attach files
              },
              child: Container(
                height: 40,
                color: Theme.of(context).accentColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.add),
                    Text(
                      'Attach file here',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ButtonBar(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 160),
                  child: RaisedButton(
                    color: Colors.green[200],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Text(
                      'Send',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
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

  Widget buildID() => TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.account_circle),
          labelText: 'Enter Patient UID',
        ),

        //done button on keyboard
        textInputAction: TextInputAction.done,
      );
}
