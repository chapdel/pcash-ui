import 'package:flutter/material.dart';
import 'package:pcash_ui/config.dart';
import 'package:pcash_ui/widgets/cash/retrait_confirm.dart';

class RetraitScreen extends StatefulWidget {
  const RetraitScreen({ Key? key }) : super(key: key);

  @override
  _RetraitScreenState createState() => _RetraitScreenState();
}

class _RetraitScreenState extends State<RetraitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('P-Cash'),
      ),
      body: SingleChildScrollView(child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 24),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Text("Retrait P-Cash", style: TextStyle(color: Config.primaryColor, fontSize: 20),),
                Text("Vous allez effectué un retrait! Veuillez entrez le montant pour confirmer")
              ],
            ),
          ),
          SizedBox(height: 48,),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black)
            ),
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                TextField(
                  keyboardType: TextInputType.phone,
                  
            decoration: const InputDecoration(
              hintText: 'Télephone',
              suffixIcon: Icon(Icons.phone)
            ),
            
          ),
          TextField(
                  keyboardType: TextInputType.number,
                  
            decoration: const InputDecoration(
              hintText: 'Montant (XAF)',
              suffixIcon: Icon(Icons.money)
            ),
            
          ),
          TextField(
                  
            decoration: const InputDecoration(
              hintText: 'Nom',
              suffixIcon: Icon(Icons.person)
            ),
            
          ),
          TextField(
                  keyboardType: TextInputType.phone,
                  
            decoration: const InputDecoration(
              hintText: 'ville',
              suffixIcon: Icon(Icons.map)
            ),
            
          ),
          SizedBox(height: 48,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 12),
            child: ElevatedButton(
              onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RetraitConfirmScreen())),
              style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            shape: StadiumBorder()),
              child: const Text('Continuer'),
            ),
          ),
              ],
            ),
            ),
            
        ],
      )),
    
    );
  }

}