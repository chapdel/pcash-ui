import 'package:flutter/material.dart';
import 'package:pcash_ui/config.dart';
import 'package:timeline_tile/timeline_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 25),
              padding: EdgeInsets.all(12),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Config.primaryDarkColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Compte P-Cash", style: TextStyle(color: Colors.white)),
                  Text(
                    "18 000 XAF",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
                height: 20,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    height: 2,
                  ),
                )),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Dernières transactions",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                          SizedBox(height: 8,),
                  Container(
                    //height: 500,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: _recentTransactionions(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> _recentTransactionions() {
    List<Widget> _transaction = [];

    for (var i = 0; i < 10; i++) {
      _transaction.add(Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Config.primaryDarkColor)
        ),
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * .48,
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(width: 1.0, color: Color(0xFF000000)),
                ),
                
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Text('Paiement :'),
                    Text('300 :'),
                  ],),
                  Row(children: [
                    Text('ID Transaction :'),
                    Text('CHEkjld-'+(i+1).toString()),
                  ],)
                ],
              ),
            ),Container(
              width: MediaQuery.of(context).size.width * .48,
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("John Doe / Taximan"),
                  Text("25 Juin 2021"),
                ],
              ),
            )
          ],
        ),
        margin: EdgeInsets.only(bottom: 10),
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(8),
      ));
    }

    return _transaction;
  }
}
