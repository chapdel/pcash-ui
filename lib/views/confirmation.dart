import 'package:flutter/material.dart';
import 'package:pcash_ui/config.dart';

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
      ),
      body: SingleChildScrollView(child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 24),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Text("Confirmation du numéro", style: TextStyle(color: Config.primaryColor, fontSize: 20),),
                SizedBox(height: 28,),
                Text("Un message sera envoyé au numéro de téléphone :"),
                Text("+237 652 58 98", style: TextStyle(color: Config.primaryColor,))
              ],
            ),
          ),
          
          SizedBox(height: 28,),
          
          SizedBox(height: 48,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 12),
            child: ElevatedButton(
                onPressed: () {
                    
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    shape: StadiumBorder()
                ),
                child: const Text('Continuer'),
            ),
          ),
          SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 12),
            child: ElevatedButton(
                onPressed: () {
                    
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    shape: StadiumBorder()
                ),
                child: const Text('Annuler'),
            ),
          ),
        ],
      )),
    );
  }
}