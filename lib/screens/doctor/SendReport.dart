// ignore_for_file: file_names, prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors, missing_return

import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
// import 'package:firebase_upload_example/api/firebase_api.dart';
// import 'package:firebase_upload_example/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:project_autopsy/screens/doctor/api/firebase_api.dart';

class SentReport extends StatefulWidget {
  @override
  State<SentReport> createState() => _SentReportState();
}

class _SentReportState extends State<SentReport> {
  UploadTask task;
  File file;

  @override
  Widget build(BuildContext context) {
    final fileName = file != null ? '1 File Selected' : 'No File Selected';
    return Scaffold(
      appBar: AppBar(
        title: Text('Send Report'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.black87,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: buildID(),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  child: Text('Add file'),
                  color: Theme.of(context).accentColor,
                  onPressed: selectFile,
                ),
                SizedBox(width: 10),
                RaisedButton(
                  child: Text('Send'),
                  color: Colors.green[200],
                  onPressed: uploadFile,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                fileName, style: TextStyle(fontSize: 24,),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            task != null ? buildUploadStatus(task) : Container(),
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
  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);

    if (result == null) return;
    final path = result.files.single.path;

    setState(() => file = File(path));
  }

  Future uploadFile() async {
    if (file == null) return;

    final fileName = basename(file.path);
    final destination = 'files/$fileName';

    task = FirebaseApi.uploadFile(destination, file);
    setState(() {
      //just to rebuild
    });

    if (task == null) return;

    final snapshot = await task.whenComplete(() {});
    final urlDownload = await snapshot.ref.getDownloadURL();

    print('Download link: $urlDownload');
  }

  Widget buildUploadStatus(UploadTask task) => StreamBuilder<TaskSnapshot>(
      stream: task.snapshotEvents,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final snap = snapshot.data;
          final progress = snap.bytesTransferred / snap.totalBytes;
          final percentage = (progress *100).toStringAsFixed(2);
          return Text(
            '$percentage %',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.green[400],
            ),
          );
        } else {
          return Container();
        }
      });
}
