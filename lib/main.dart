import 'package:flutter/material.dart';
import 'package:project_autopsy/screens/LaunchScreen.dart';
import 'package:project_autopsy/screens/doctor/DoctorDashboard.dart';
import 'package:project_autopsy/screens/doctor/SendReport.dart';
import 'package:project_autopsy/screens/doctor/view_report/EnterPatientUID.dart';
import 'package:project_autopsy/screens/patient/PatientDashboard.dart';
import 'package:project_autopsy/screens/patient/PatientLogin.dart';
import 'package:project_autopsy/screens/patient/firsttimeuser/AllStepsPage.dart';
import 'package:project_autopsy/screens/patient/firsttimeuser/CreateAccountPage.dart';
import 'package:project_autopsy/screens/patient/firsttimeuser/Finishing%20Page.dart';
import 'package:project_autopsy/screens/patient/firsttimeuser/PatientOrDoctorPage.dart';
import 'package:project_autopsy/screens/patient/patient_all_reports_page.dart';
import 'package:project_autopsy/screens/patient/report_detail_page.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Autopsy',
      theme: ThemeData(
        primaryColor: Colors.white,
        canvasColor: Colors.white,
        // ignore: deprecated_member_use
        accentColor: Color.fromRGBO(193, 191, 250, 1),
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


        //Doctor
        '/DoctorDashboard': (context) => DoctorDashboard(),
        '/SendReport': (context) => SentReport(),
        '/EnterPatientUID' : (context) => EnterPatientUID(),

        '/PatientAllReportsPage' : (context) => PatientAllReportsPage(),
        '/ReportDetailPage' : (context) => ReportDetailPage(),
      },
    );
  }
}



