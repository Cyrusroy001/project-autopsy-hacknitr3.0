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
      ),
      body: Center(
        child: SafeArea(
          child: Container(
              padding: EdgeInsets.fromLTRB(25, 50, 25, 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'STEP 1: ',
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
                    'Start with telling us',
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
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              InkWell(
                                splashColor: Theme.of(context).primaryColor,
                                onTap: () {},
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
                                    borderRadius: BorderRadius.circular(20),
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
                      Column(
                        children: [
                          Stack(
                            children: [
                              InkWell(
                                splashColor: Theme.of(context).primaryColor,
                                onTap: () {},
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
                                    borderRadius: BorderRadius.circular(20),
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
                  SizedBox(
                    height: 170,
                  ),
                  Center(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/CreateAccountPage');
                      },
                      child: Text(
                        'Save and move to Step 2',
                        style: TextStyle(
                          color: Color(0xFF1D1D1D),
                          fontSize: 20,
                          letterSpacing: 1,
                          wordSpacing: 2,
                        ),
                      ),
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
