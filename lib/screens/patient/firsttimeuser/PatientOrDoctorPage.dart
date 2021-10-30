// ignore_for_file: file_names, prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PatientOrDoctor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Who are you?'),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.black87,
      ),
      body: Center(
        child: SafeArea(
          child: Container(
              padding: EdgeInsets.fromLTRB(25, 50, 25, 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                    'Finish by telling us',
                    style: TextStyle(
                      letterSpacing: 1,
                      wordSpacing: 2,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'who you are',
                    style: TextStyle(
                      letterSpacing: 1,
                      wordSpacing: 2,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 40,
                    child: Text(
                      'Click on one of the cards.',
                      style: TextStyle(
                        color: Color(0xFF1D1D1D),
                        fontSize: 20,
                        letterSpacing: 1,
                        wordSpacing: 2,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              InkWell(
                                splashColor: Theme.of(context).accentColor,
                                onTap: () {
                                  Navigator.pushReplacementNamed(
                                      context, '/PatientDashboard');
                                },
                                child: Container(
                                  height: 150,
                                  width: 150,
                                  padding: const EdgeInsets.all(10),
                                  child: Text('title'),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Theme.of(context)
                                            .accentColor
                                            .withOpacity(0.6),
                                        Theme.of(context).accentColor,
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: Colors.black87,
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Patient',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                        child: Text(
                          'OR',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Stack(
                            children: [
                              InkWell(
                                splashColor: Theme.of(context).accentColor,
                                onTap: () {
                                  Navigator.pushReplacementNamed(
                                      context, '/DoctorDashboard');
                                },
                                child: Container(
                                  height: 150,
                                  width: 150,
                                  padding: const EdgeInsets.all(10),
                                  child: Text(
                                    'title',
                                    // style: Theme.of(context).textTheme.title,
                                  ),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Theme.of(context)
                                            .accentColor
                                            .withOpacity(0.6),
                                        Theme.of(context).accentColor,
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: Colors.black87,
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Doctor',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
