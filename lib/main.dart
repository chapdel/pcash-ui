import 'package:flutter/material.dart';
import 'package:pcash_ui/config.dart';
import 'package:pcash_ui/widgets/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PCash UI',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          primaryColor: Config.primaryColor),
      home: App(),
    );
  }
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
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
        Text('cash'),
        Text('paiements'),
      ],),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Accueil"),
        BottomNavigationBarItem(icon: Icon(Icons.list), label:"List"),
        BottomNavigationBarItem(icon: Icon(Icons.notifications,), label:"Notifications")
      ])
    ));
  }
}
