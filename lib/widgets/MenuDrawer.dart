// ignore_for_file: file_names, prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors, missing_return, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_autopsy/themes.dart';

class MenuDrawerWidget extends StatefulWidget {
  @override
  State<MenuDrawerWidget> createState() => _MenuDrawerWidgetState();
}

class _MenuDrawerWidgetState extends State<MenuDrawerWidget> {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        child: ListView(
          children: [
            SizedBox(height: 40),

            Divider( thickness: 4 ),

            SizedBox(height: 30),

            buildMenuItem(
              text: 'My Information',
              icon: Icons.account_circle,
              onClicked: () => selectedItem(context, 0),
            ),

            SizedBox(height: 10),

            buildMenuItem(
              text: 'DarkMode',
              icon: Icons.brightness_4,
              onClicked: () => selectedItem(context, 1),
            ),

            SizedBox(height: 30),

            Divider( thickness: 4 ),

            SizedBox(height: 20),

            buildMenuItem(
              text: 'Logout',
              icon: Icons.account_circle_outlined,
              onClicked: () => selectedItem(context, 2),
            ),

          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    String text,
    IconData icon,
    VoidCallback onClicked,
  }) {

    return ListTile(
      leading: Icon(icon,  size: 30,),
      title: Text(text, style: TextStyle( fontSize: 20)),
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index){
    switch (index) {
      case 0 :
      // Add Information Page

        break;
      case 1 :
        currentTheme.toggleTheme();
        break;
      case 2 :
        Navigator.pushReplacementNamed(context, '/');
        break;

    }
  }
}