// ignore_for_file: file_names, prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PatientDashboard extends StatefulWidget {
  @override
  _PatientDashboardState createState() => _PatientDashboardState();
}

class _PatientDashboardState extends State<PatientDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF7EE7D6),

        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},

        ),

        title: Text('Dashboard'),
        centerTitle: true,

        actions: [
          //notifications
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},

          ),

        ],
      ),
      body: Container(),
    );
  }
}
