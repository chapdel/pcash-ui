import 'package:flutter/material.dart';
import 'package:pcash_ui/config.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ChangeNumberScreen extends StatefulWidget {
  const ChangeNumberScreen({ Key? key }) : super(key: key);

  @override
  _ChangeNumberScreenState createState() => _ChangeNumberScreenState();
}
class _ChangeNumberScreenState extends State<ChangeNumberScreen> {
  @override
   Widget  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: CloseButton(color: Colors.black,),
      ),
      body: SingleChildScrollView(child: Column(
        children: [
            SizedBox(height: 28,),
            Container(child: Image.asset("assets/images/qrcode.jpg", height: 100,)),
            SizedBox(height: 18,),
            Container(
            margin: EdgeInsets.only(top: 24),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Text("Changer de numéro", textAlign: TextAlign.center, style: TextStyle(color: Config.primaryColor, fontSize: 25, fontWeight: FontWeight.bold),),
                SizedBox(height: 8,),
                Text("+237 655 72 73 77",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blue)
                ),
              ],
            ),
        ),
        SizedBox(height: 48,),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 12),
            child: ElevatedButton(
            onPressed: () {
                
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