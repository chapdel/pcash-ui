import 'package:flutter/material.dart';

class SettingsHomeScreen extends StatefulWidget {
  const SettingsHomeScreen({ Key? key }) : super(key: key);

  @override
  _SettingsHomeScreenState createState() => _SettingsHomeScreenState();
}

class _SettingsHomeScreenState extends State<SettingsHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('P-Cash'),
        actions: [
          InkWell(
            child: Icon(Icons.delete),
            onTap: () => {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      )
    );
  
  }
}