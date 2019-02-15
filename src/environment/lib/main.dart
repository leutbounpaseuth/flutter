import 'app_config.dart';
import 'app.dart';

import 'package:flutter/material.dart';

void main() {
  var configuredApp = new AppConfig(
    appName: 'Build flavors DEV',
    flavorName: 'development',
    apiBaseUrl: 'https://dev-api.example.com/',
    child: new MyApp(),
  );
  
  runApp(configuredApp);
}