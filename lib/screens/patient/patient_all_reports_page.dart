import 'package:flutter/material.dart';
import 'package:project_autopsy/model/firebase_file.dart';
import 'package:project_autopsy/screens/doctor/api/firebase_api.dart';
import 'package:project_autopsy/screens/pdf_page.dart';
import 'package:project_autopsy/widgets/report.dart';

class PatientAllReportsPage extends StatefulWidget {
  final bool fromDoctor;

  const PatientAllReportsPage({
    Key key,
    @required this.fromDoctor
  }) : super(key: key);
  @override
  State<PatientAllReportsPage> createState() => _PatientAllReportsPageState();
}

class _PatientAllReportsPageState extends State<PatientAllReportsPage> {
  final num = 0;
  Future<List<FirebaseFile>> futureFiles;
  @override
  void initState() {
    super.initState();
    futureFiles = FirebaseApi.listAll('files/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Reports'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.black87,
      ),
      body: FutureBuilder<List<FirebaseFile>>(
        future: futureFiles,
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(color: Colors.green[200],),
              );
            default:
              if (snapshot.hasError) {
                return Center(
                  child: Text('Some error occured!'),
                );
              } else {
                final files = snapshot.data;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildHeader(files.length),
                    const SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: files.length,
                        itemBuilder: (context, index) {
                          final file = files[index];
                          return buildFile(context, file);
                        },
                      ),
                    ),
                  ],
                );
              }
          }
        },
      ),
    );
  }

  Widget buildFile(BuildContext context, FirebaseFile file) => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.black87, width: 1),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: ListTile(
          // leading: ClipOval(
          //   child: Image.network(
          //     file.url,
          //     width: 52,
          //     height: 52,
          //     fit: BoxFit.cover,
          //   ),
          // ),
          title: Text(
            file.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black87,
            ),
          ),
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => PdfPage(file: file, fromDoctor: widget.fromDoctor,),
          )),
        ),
      );

  Widget buildHeader(int length) => ListTile(
        tileColor: Theme.of(context).accentColor,
        leading: Container(
          width: 52,
          height: 52,
          child: Icon(
            Icons.file_copy,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Total Reports: $length',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      );
}
