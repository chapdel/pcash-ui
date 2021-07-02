import 'package:flutter/material.dart';
import 'package:pcash_ui/config.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class RetraitConfirmScreen extends StatefulWidget {
  const RetraitConfirmScreen({ Key? key }) : super(key: key);

  @override
  _RetraitConfirmScreenState createState() => _RetraitConfirmScreenState();
}

class _RetraitConfirmScreenState extends State<RetraitConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('P-Cash'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: EdgeInsets.only(top: 24),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Text("Retrait d'argent", style: TextStyle(color: Config.primaryColor, fontSize: 20),),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Veuillez entrer le code de vérification envoyé à +237"),
                      Text("655 7** *77", style: TextStyle(color: Config.primaryColor),),
                    ],
                  ),
                ),
                

              ],
            ),
          ),
          Container(
            child: Container(margin: EdgeInsets.symmetric(vertical: 26, horizontal: 12), child: PinCodeTextField(
                  hideCharacter: true,
                    highlight: true,
                    maxLength: 6,
                    wrapAlignment: WrapAlignment.spaceAround,
                ),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 12),
            child: ElevatedButton(
              onPressed: () {
                
              },
              style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            shape: StadiumBorder()),
              child: const Text('Continuer'),
            ),
          ),
            
        ],
      )
    
    
    );
  }
}