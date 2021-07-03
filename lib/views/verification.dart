import 'package:flutter/material.dart';
import 'package:pcash_ui/config.dart';
import 'package:pcash_ui/views/homepage.dart';
import 'package:pcash_ui/views/confirmation.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({ Key? key }) : super(key: key);

  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}
class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vérification OPT",style: TextStyle(color: Config.primaryColor, fontSize: 20)),
        backgroundColor: Colors.white,
        leading: BackButton(color: Colors.black,),
      ),
      body: SingleChildScrollView(child: Column(
        children: [
        
        Container(
            margin: EdgeInsets.only(top: 24),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Text("Code de vérification", style: TextStyle(color: Config.primaryColor, fontSize: 25, fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Text("Veuillez entrer le code de vérification envoyé au +237",
                    textAlign: TextAlign.center,
                ),
                Text("65572*******02",
                    textAlign: TextAlign.center, style: TextStyle(color: Config.primaryColor)
                ),
                SizedBox(height: 15,),
                Text("Vous n'avez pas recu de code ?",
                    textAlign: TextAlign.center
                ),
                Text("Demander un nouveau code",
                    textAlign: TextAlign.center, style: TextStyle(color: Config.primaryColor)
                ),
              ],
            ),
        ),
        SizedBox(height: 28,),
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
                        hintText: '',   
                    ))
                ),
                SizedBox(width: 15,),
                 Flexible(
                    flex: 1,
                    child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                        hintText: '',   
                    ))
                ),
                SizedBox(width: 15,),
                 Flexible(
                    flex: 1,
                    child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                        hintText: '',   
                    ))
                ),SizedBox(width: 15,),
                 Flexible(
                    flex: 1,
                    child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                        hintText: '',   
                    ))
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
                        return ConfirmationScreen();
                    }),
                );
            },
            style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            shape: StadiumBorder()),
            child: const Text('Continuer'),
            ),
        ),  
        ],
      )),
    );
  }
}