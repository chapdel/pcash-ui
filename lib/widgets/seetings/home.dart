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
          children: [
            ListTile(
              leading: Icon(Icons.book),
              title: Text("Termes, conditions d'utilisations et confidentialités")
            ),
            ListTile(
              leading: Icon(Icons.phone_callback),
              title: Text("Changer de numéro")
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Modifer ou completer son compte")
            ),
            ListTile(
              leading: Icon(Icons.print),
              title: Text("Imprimer le QR-Code")
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text("Langues")
            ),
            ListTile(
              leading: Icon(Icons.person_add),
              title: Text("Inviter un(e) ami(e)")
            ),
            SizedBox(height: 12,),
            Divider(),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text("Supprimer le compte")
            ),
          ],
        ),
      )
    );
  
  }
}