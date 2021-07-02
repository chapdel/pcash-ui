import 'package:flutter/material.dart';
import 'package:pcash_ui/widgets/cash/retrait.dart';
import 'package:pcash_ui/widgets/cash/topup.dart';

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
            onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TopUpScreen()),
                          ),
          ),
          ListTile(
            onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RetraitScreen()),
                          ),
            leading: Icon(Icons.money_off_csred),
            title: Text("Retrait"),
          ),
        ],
      ),
    );
  }
}