import 'package:flutter/material.dart';
import 'package:pcash_ui/config.dart';

class LanguageSettingScreen extends StatefulWidget {
  const LanguageSettingScreen({Key? key}) : super(key: key);

  @override
  _LanguageSettingScreenState createState() => _LanguageSettingScreenState();
}

class _LanguageSettingScreenState extends State<LanguageSettingScreen> {
  String _currentLanguage = "fr";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('P-Cash'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text("Français"),
              subtitle: Text("French"),
              trailing: _currentLanguage == "fr"? Icon(Icons.check_box, color: Config.primaryColor,): null,
              onTap: () {
                setState(() {
                  _currentLanguage = "fr";
                });
              },
            ),
            ListTile(
              title: Text("Anglais"),
              subtitle: Text("English"),
              trailing: _currentLanguage == "en"? Icon(Icons.check_box, color: Config.primaryColor,): null,
              onTap: () {
                setState(() {
                  _currentLanguage = "en";
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
