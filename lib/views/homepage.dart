import 'package:flutter/material.dart';
import 'package:pcash_ui/config.dart';
import 'package:pcash_ui/widgets/cash/home.dart';
import 'package:pcash_ui/views/verification.dart';
import 'package:pcash_ui/widgets/home.dart';
import 'package:pcash_ui/views/qrcodeview.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({ Key? key }) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}
class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(title: Text("P-Cash"), bottom: TabBar(tabs: [
        Tab(text: "Accueil", icon: Icon(Icons.home),),
        Tab(text: "Cash", icon: Icon(Icons.money,)),
        Tab(text: "Paiements", icon: Icon(Icons.monetization_on_sharp,))
      ],),),
      body: TabBarView(children: [
        HomeScreen(),
        CashHomeScreen(),
        QRCodeScreen(),
      ],),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Accueil"),
        BottomNavigationBarItem(icon: Icon(Icons.list), label:"List"),
        BottomNavigationBarItem(icon: Icon(Icons.notifications,), label:"Notifications")
      ])
    ));
  }
}