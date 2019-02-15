import 'package:flutter/material.dart';
import 'app_config.dart';
import 'home_page.dart';

class MyApp extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    // Call AppConfig.of(context) anywhere to obtain the 
    // environment specific configuration 
    var config = AppConfig.of(context);
    
    return new MaterialApp(
      title: config.appName,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(),
    );
  }
}