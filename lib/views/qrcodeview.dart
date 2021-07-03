import 'package:flutter/material.dart';
import 'package:pcash_ui/config.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class QRCodeScreen extends StatefulWidget {
  const QRCodeScreen({ Key? key }) : super(key: key);

  @override
  _QRCodeScreenState createState() => _QRCodeScreenState();
}
class _QRCodeScreenState extends State<QRCodeScreen> {
  @override
   Widget  build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 24),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Text("Paiement", style: TextStyle(color: Config.primaryColor, fontSize: 25, fontWeight: FontWeight.bold),),
                SizedBox(height: 18,),
                Text("Faites scanner votre QR-Code"),
                Text("pour recevoir un paiement"),
              ],
            ),
          ),
          SizedBox(height: 28,),
          Container(child: Image.asset("assets/images/qrcode.jpg", height: 252,)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 12),
            child: null
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () async  {
          String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode("#ff6666", "Cancel", false, ScanMode.DEFAULT);
        },
        child: const Icon(Icons.aspect_ratio),
        backgroundColor: Colors.blue,
      ),
    );
  }
}