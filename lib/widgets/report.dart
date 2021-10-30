import 'package:flutter/material.dart';

class Report extends StatelessWidget {
  final String title;
  final String hospital;
  final String doctor;
  final String date;

  Report({
    @required this.title,
    @required this.hospital,
    @required this.doctor,
    @required this.date,
  });

  void showDetails(BuildContext context) {
    Navigator.of(context).pushNamed(
      '/ReportDetailPage',
      arguments: {
        'title': title,
        'hospital': hospital,
        'doctor': doctor,
        'date': date,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showDetails(context),
      child: Card(
        
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.black87, width: 1),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Container(
          padding: EdgeInsets.only(
            top: 10,
            left: 10,
            bottom: 10,
          ),
          // height: 100,
          width: double.infinity,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Container(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      child: Text(
                        doctor,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      child: Text(
                        hospital,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),

                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      child: Text(
                        date,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  // RaisedButton(
                  //   onPressed: () {},
                  //   child: Text('View'),
                  //   color: Theme.of(context).primaryColor,
                  //   elevation: 5,
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
