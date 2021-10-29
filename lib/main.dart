import 'package:autopsy_wap/screens/LaunchScreen.dart';
import 'package:autopsy_wap/screens/patient/PatientDashboard.dart';
import 'package:autopsy_wap/screens/patient/PatientLogin.dart';
import 'package:autopsy_wap/screens/patient/firsttimeuser/AllStepsPage.dart';
import 'package:autopsy_wap/screens/patient/firsttimeuser/CreateAccountPage.dart';
import 'package:autopsy_wap/screens/patient/firsttimeuser/Finishing%20Page.dart';
import 'package:autopsy_wap/screens/patient/firsttimeuser/PatientOrDoctorPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Autopsy App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LaunchScreen(),
        '/PatientLogin': (context) => PatientLogin(),
        '/PatientDashboard': (context) => PatientDashboard(),
        '/AllStepsPage' : (context) => AllStepsPage(),
        '/PatientOrDoctorPage' : (context) => PatientOrDoctor(),
        '/CreateAccountPage' : (context) => CreateAccountPage(),
        '/FinishingPage' : (context) => FinishingPage(),
      },
    );
  }
}



