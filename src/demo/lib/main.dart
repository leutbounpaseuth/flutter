import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'pages/dialog_popup.dart';
import 'pages/text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _homePage = MyHomePage(title: 'Flutter Demo Home Page');

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _homePage,
      routes: <String, WidgetBuilder>{
        "/home": (BuildContext context) => _homePage,
        "/dialogpopup": (BuildContext context) => DialogPopupPage(),
        "/text": (BuildContext context) => TextPage(),
      },
    );
  }
}
