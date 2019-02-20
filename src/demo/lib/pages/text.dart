import 'package:flutter/material.dart';

import '../drawer.dart';

class TextPage extends StatefulWidget {
  _TextPageState createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
      ),
      drawer: DrawerMenu(),
      body: Column(
        children: <Widget>[
          ListTile(
            leading: Text('Default'),
            title: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            ),
          ),
          ListTile(
            leading: Text('TextStyle'),
            title: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 20,
                letterSpacing: 5,
                wordSpacing: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Text('Underline'),
            title: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          ListTile(
            leading: Text('RichText'),
            title: RichText(
              text: TextSpan(
                  style: new TextStyle(
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: "Lorem ipsum dolor sit "),
                    TextSpan(
                        text: 'amet',
                        style: new TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: ", consectetur "),
                    TextSpan(
                        text: 'adipiscing',
                        style: new TextStyle(
                            decoration: TextDecoration.lineThrough)),
                    TextSpan(text: " elit."),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
