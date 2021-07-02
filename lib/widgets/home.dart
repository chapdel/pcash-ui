import 'package:flutter/material.dart';
import 'package:pcash_ui/config.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

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
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  Text("Compte P-Cash"),
                  Text("18 000 XAF", style: TextStyle(fontSize: 16, color: Colors.white),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}