import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: SafeArea(
          child: ListBody(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Flutter Demo Home Page'),
                onTap: () {
                  Navigator.of(context).popAndPushNamed('/home');
                },
              ),
              ListTile(
                leading: Icon(Icons.widgets),
                title: Text('Dialog popup'),
                onTap: () {
                  Navigator.of(context).popAndPushNamed('/dialogpopup');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
