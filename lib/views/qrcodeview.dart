import 'package:flutter/material.dart';
import 'package:pcash_ui/config.dart';

class QRCodeScreen extends StatefulWidget {
  const QRCodeScreen({ Key? key }) : super(key: key);

  @override
  _QRCodeScreenState createState() => _QRCodeScreenState();
}
class _QRCodeScreenState extends State<QRCodeScreen> {
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
                Text("Paiement", style: TextStyle(color: Config.primaryColor, fontSize: 20),),
                SizedBox(height: 18,),
                Text("Faites scanner votre QR-Code pour recevoir un paiement"),
              ],
            ),
          ),
          
          SizedBox(height: 28,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 12),
            child: null
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.navigation),
        backgroundColor: Colors.green,
      ),
    );
  }
}