import 'package:flutter/material.dart';
import 'package:pcash_ui/config.dart';
import 'package:pcash_ui/views/verification.dart';
import 'package:pcash_ui/views/change_number.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({ Key? key }) : super(key: key);

  @override
  _MyAccountScreenState createState() => _MyAccountScreenState();
}
class _MyAccountScreenState extends State<MyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Supprimer mon compte",style: TextStyle(color: Config.primaryColor, fontSize: 20)),
        backgroundColor: Colors.white,
        leading: CloseButton(color: Colors.black,),
      ),
      body: SingleChildScrollView(child: Column(
        children: [
            Container(
            margin: EdgeInsets.only(top: 24,left:24,right:24),
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: <Widget> [
                Flexible(
                    flex: 1,
                    child: Image.asset("assets/images/qrcode.jpg", height: 20,),
                ),
                SizedBox(width: 8,),
                Flexible(
                     flex: 2,
                    child: Text("La suppression de votre implique", style: TextStyle(color: Colors.red, fontSize: 15, fontWeight: FontWeight.bold),),
                ),
              ],
            ),
        ),
        Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(24),
            padding: EdgeInsets.all(8),
            child: Column (
              children: [
                SizedBox(height: 20,),
                Text("• La suppression de votre compte"),
                Text("• Effacer l'historique des transactions"),
                Text("• La perte de votre solde courant"),
               ]
            )
        ),
        SizedBox(height: 28,),
        Container(
            margin: EdgeInsets.only(top: 24, left:24, right:24),
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: <Widget> [
                Flexible(
                    flex: 1,
                    child: Image.asset("assets/images/qrcode.jpg", height: 20,),
                ),
                SizedBox(width: 8,),
                Flexible(
                     flex: 2,
                    child: Text("Changer le numéro à la place", style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),),
                ),
              ],
            )
        ),
        SizedBox(height: 8,),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 12),
            child: ElevatedButton(
            onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                        return ChangeNumberScreen();
                    }),
                );
            },
            style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
            shape: StadiumBorder()),
            child: const Text('Changer de numéro'),
            ),
        ),
        Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(24),
            padding: EdgeInsets.all(8),
            child: Text("Pour supprimer votre compte, veuillez confirmer votre numéro de téléphone", style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold),),
        ),
        Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(24),
            padding: EdgeInsets.all(8),
            child: Row (
              children:  <Widget>[
                Flexible(
                    flex: 1,
                    child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                        hintText: 'Code Pays',   
                    ))
                ),
                SizedBox(width: 8,),
                 Flexible(
                     flex: 2,
                    child: TextField(
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                            hintText: 'Numéro Télephone',
                            //prefixIcon: Icon(Icons.phone)
                        ),
                    ),
                ),
               ]
            )
        ),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: ElevatedButton(
            onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                        return VerificationScreen();
                    }),
                );
            },
            style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
            shape: StadiumBorder()),
            child: const Text('Supprimer mon compte'),
            ),
        ),
        ],
      )),
    );
  }
}