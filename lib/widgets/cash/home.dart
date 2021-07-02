import 'package:flutter/material.dart';

class CashHomeScreen extends StatefulWidget {
  const CashHomeScreen({ Key? key }) : super(key: key);

  @override
  _CashHomeScreenState createState() => _CashHomeScreenState();
}

class _CashHomeScreenState extends State<CashHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.attach_money),
            title: Text("Dépot P-Cash"),
          ),
          ListTile(
            leading: Icon(Icons.money_off_csred),
            title: Text("Retrait"),
          ),
        ],
      ),
    );
  }
}