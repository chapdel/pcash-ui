import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
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
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Dépôt d'argent réussit !"),
                Text("+237 655 72 73 77 vers compte P-Cash"),
                Text(
                    "ID du Compte: CE554. Montant de la transaction 20 000 XAF"),
              ],
            ),
          );
        },
        itemCount: 18,
      ),
    );
  }
}
