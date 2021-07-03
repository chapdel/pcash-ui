import 'package:flutter/material.dart';
import 'package:pcash_ui/config.dart';
import 'package:pcash_ui/views/homepage.dart';

class ConfirmationScreen extends StatefulWidget {
  const ConfirmationScreen({ Key? key }) : super(key: key);

  @override
  _ConfirmationScreenState createState() => _ConfirmationScreenState();
}
class _ConfirmationScreenState extends State<ConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(color: Colors.black,),
        title: Text("Confirmation",style: TextStyle(color: Config.primaryColor, fontSize: 20)),
      ),
      body: SingleChildScrollView(child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 24, left: 24, right: 24 ),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Text("Confirmation du numéro",style: TextStyle(color: Config.primaryColor, fontSize: 20),),
                SizedBox(height: 28,),
                Text("Un message sera envoyé au numéro de téléphone :", textAlign: TextAlign.center,),
                Text("+237 652 58 98", style: TextStyle(color: Config.primaryColor,)),
                SizedBox(height: 28,),
                Text("Veuillez confirmer le numéro de téléphone ou annuler pour le modifier",textAlign: TextAlign.center,),
                SizedBox(height: 28,),
                TextField(
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                    hintText: 'Numéro Télephone',
                    )
                ),
              ],
            ),
          ),
          SizedBox(height: 48,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 12),
            child: ElevatedButton(
                onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                        return HomePageScreen();
                    }),
                    );
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                    shape: StadiumBorder()
                ),
                child: const Text('Continuer', style: TextStyle(fontSize: 20))
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 12),
            child: ElevatedButton(
                onPressed: () {
                    
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                    shape: StadiumBorder()
                ),
                child: const Text('Annuler', style: TextStyle(fontSize: 20))
            ),
          ),
        ],
      )),
    );
  }
}