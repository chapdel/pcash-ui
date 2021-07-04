import 'package:flutter/material.dart';
import 'package:pcash_ui/config.dart';
import 'package:pcash_ui/widgets/cash/home.dart';
import 'package:pcash_ui/views/verification.dart';
import 'package:pcash_ui/widgets/home.dart';
import 'package:pcash_ui/views/qrcodeview.dart';
import 'package:pcash_ui/widgets/notifications.dart';
import 'package:pcash_ui/widgets/seetings/home.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Text("P-Cash"),
              actions: [

                PopupMenuButton<String>(itemBuilder: (context) => [
                  PopupMenuItem(child: Text("Notifications"), value: "notifications"),
                  PopupMenuItem(child: Text("Settings"), value: "settings"),
                ], onSelected: (item) => SelectedItem(context, item),),
                
                    /* DropdownButton(
                      icon: Icon(Icons.more_vert),
                       value: _value,
                      items: [
                      PopupMenuItem(child: Text("Notifications"),onTap: () =>  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                        return NotificationsScreen();
                    }))),
                    PopupMenuItem(child: Text("Notifications"),onTap: () =>  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                        return SettingsHomeScreen();
                    })))
                    ]) */
              ],
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: "Accueil",
                    icon: Icon(Icons.home),
                  ),
                  Tab(
                      text: "Cash",
                      icon: Icon(
                        Icons.money,
                      )),
                  Tab(
                      text: "Paiements",
                      icon: Icon(
                        Icons.monetization_on_sharp,
                      ))
                ],
              ),
            ),
            body: TabBarView(
              children: [
                HomeScreen(),
                CashHomeScreen(),
                QRCodeScreen(),
              ],
            ),
            )
            );
  }

  void SelectedItem(BuildContext context, item) {
    switch (item) {
      case "settings":
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => SettingsHomeScreen()));
        break;
      case "notifications":
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => NotificationsScreen()));
        break;
    }
  }
}
