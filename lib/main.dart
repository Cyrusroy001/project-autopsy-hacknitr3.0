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
      title: 'Autopsy',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(193, 191, 250, 1),
        accentColor: Color.fromRGBO(249, 228, 80, 1),
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



