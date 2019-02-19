import 'package:flutter/material.dart';

import '../drawer.dart';
import '../utils/popup.dart';

class DialogPopupPage extends StatefulWidget {
  _DialogPopupPageState createState() => _DialogPopupPageState();
}

class _DialogPopupPageState extends State<DialogPopupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog popup'),
      ),
      drawer: DrawerMenu(),
      body: Center(
        child: RaisedButton(
          child: Text('Show popup'),
          onPressed: () {
            PopupUtils.showAlertPopup(context, 'Info', "That's all folks");
          },
        ),
      ),
    );
  }
}
