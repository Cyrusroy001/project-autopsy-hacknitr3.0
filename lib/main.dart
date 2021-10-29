import 'package:flutter/material.dart';
import 'package:project_autopsy/screens/LaunchScreen.dart';
import 'package:project_autopsy/screens/patient/PatientDashboard.dart';
import 'package:project_autopsy/screens/patient/PatientLogin.dart';
import 'package:project_autopsy/screens/patient/firsttimeuser/AllStepsPage.dart';
import 'package:project_autopsy/screens/patient/firsttimeuser/CreateAccountPage.dart';
import 'package:project_autopsy/screens/patient/firsttimeuser/Finishing%20Page.dart';
import 'package:project_autopsy/screens/patient/firsttimeuser/PatientOrDoctorPage.dart';

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



