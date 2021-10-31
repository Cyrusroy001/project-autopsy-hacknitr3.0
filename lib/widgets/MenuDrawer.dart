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
            SizedBox(
              height: 40,
              child: Container(
                color: Theme.of(context).accentColor,
                child: Center(
                  child: Text(
                    "Drawer",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
            // Divider(thickness: 4),
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
            SizedBox(height: 20),
            Divider(thickness: 4),
            SizedBox(height: 400),
            RaisedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.exit_to_app),
                  Text(
                    "Log Out",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              color: Theme.of(context).accentColor,
              onPressed: () => selectedItem(context, 2),
              shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black87,
                      ),
                    ),
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
      leading: Icon(
        icon,
        color: Colors.black87,
        size: 24,
      ),
      title: Text(text, style: TextStyle(fontSize: 16)),
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        // Add Information Page

        break;
      case 1:
        currentTheme.toggleTheme();
        break;
      case 2:
        Navigator.pushReplacementNamed(context, '/');
        break;
    }
  }
}
