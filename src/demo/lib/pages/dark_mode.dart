import 'package:flutter/material.dart';
import 'package:dynamic_theme/dynamic_theme.dart';

import '../drawer.dart';
import '../globals.dart' as globals;

class DarkModePage extends StatefulWidget {
  _DarkModePageState createState() => _DarkModePageState();
}

class _DarkModePageState extends State<DarkModePage> {
  void handelTheme(bool value) {
    setState(() {
      globals.isDarkTheme = value;
      globals.isDarkTheme = globals.isDarkTheme;
      if (globals.isDarkTheme) {
        DynamicTheme.of(context).setBrightness(Brightness.dark);
      } else {
        DynamicTheme.of(context).setBrightness(Brightness.light);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: globals.isDarkTheme ? null : Colors.white,
        title: Text('Dark mode'),
      ),
      drawer: DrawerMenu(),
      body: Center(
        child: ListTile(
          leading: Icon(
            Icons.color_lens,
            color: globals.isDarkTheme ? Colors.white : Color(0xFF00567E),
          ),
          title: Text(
            'Dark Theme',
          ),
          subtitle: Text(
            'Black and Grey Theme',
          ),
          trailing: Switch(
            onChanged: handelTheme,
            value: globals.isDarkTheme,
          ),
        ),
      ),
    );
  }
}
