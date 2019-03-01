import 'package:flutter/material.dart';
import 'package:dynamic_theme/dynamic_theme.dart';

import 'globals.dart' as globals;
import 'pages/home.dart';
import 'pages/dialog_popup.dart';
import 'pages/text.dart';
import 'pages/dark_mode.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _homePage = MyHomePage(title: 'Flutter Demo Home Page');

    return DynamicTheme(
        defaultBrightness: Brightness.light,
        data: (brightness) => ThemeData(
            primarySwatch: Colors.blue,
            primaryColorBrightness:
                globals.isDarkTheme ? Brightness.dark : Brightness.light,
            brightness: brightness,
          ),
        themedWidgetBuilder: (context, theme) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: theme,
            home: _homePage,
            routes: <String, WidgetBuilder>{
              "/home": (BuildContext context) => _homePage,
              "/dialogpopup": (BuildContext context) => DialogPopupPage(),
              "/text": (BuildContext context) => TextPage(),
              "/darkmode": (BuildContext context) => DarkModePage(),
            },
          );
        });
  }
}
