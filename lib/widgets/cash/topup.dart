import 'package:flutter/material.dart';
import 'package:pcash_ui/config.dart';
import 'package:pcash_ui/widgets/cash/depot.dart';
import 'package:pcash_ui/widgets/cash/payform.dart';
import 'package:pcash_ui/widgets/cash/retrait.dart';

class TopUpScreen extends StatefulWidget {
  const TopUpScreen({ Key? key }) : super(key: key);

  @override
  _TopUpScreenState createState() => _TopUpScreenState();
}

class _TopUpScreenState extends State<TopUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.close, color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 24),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Text("Méthode de paiement", style: TextStyle(color: Config.primaryColor, fontSize: 20),),
                Text("Veuillez choisir un moyen de paiement parmi ceux disponible")
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("Mobile"),
                    Container(child: Image.asset("assets/images/mtnmomo.png", height: 42,)),
                  ],),
                  onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DepotScreen()),
                          ),
                ),
                ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("Carte de crédit / débit"),
                    Container(child: Image.asset("assets/images/cardpayment.png", height: 42,)),
                  ],),
                  onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RetraitScreen()),
                          ),
                ),

              ],
            ),
          )
        ],
      )),
    );
  }
}