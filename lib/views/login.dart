import 'package:flutter/material.dart';
import 'package:pcash_ui/config.dart';
import 'package:pcash_ui/views/verification.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Identification",style: TextStyle(color: Config.primaryColor, fontSize: 20)),
        backgroundColor: Colors.white,
        leading: CloseButton(color: Colors.black,),
      ),
      body: SingleChildScrollView(child: Column(
        children: [
            Container(
            margin: EdgeInsets.only(top: 24),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Text("Connexion", style: TextStyle(color: Config.primaryColor, fontSize: 25, fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Text("Veuillez entrer votre code du pays ",
                    textAlign: TextAlign.center,
                ),
                Text("et votre numéro de téléphone",
                    textAlign: TextAlign.center
                ),
                
              ],
            ),
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
        SizedBox(height: 48,),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 12),
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
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
            shape: StadiumBorder()),
            child: const Text('Continuer'),
            ),
        ),  
        ],
      )),
    );
  }
}