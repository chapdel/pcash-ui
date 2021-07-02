import 'package:flutter/material.dart';
import 'package:pcash_ui/config.dart';

class TopUpFormScreen extends StatefulWidget {
  const TopUpFormScreen({ Key? key }) : super(key: key);

  @override
  _TopUpFormScreenState createState() => _TopUpFormScreenState();
}

class _TopUpFormScreenState extends State<TopUpFormScreen> {
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
                Text("Paiement de service(s)", style: TextStyle(color: Config.primaryColor, fontSize: 20),),
                Text("Vous allez effectué un paiement! Veuillez entrer le montant et confirmer les informations du destinataire")
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
              hintText: 'Addresse',
              suffixIcon: Icon(Icons.map)
            ),
            
          ),
          TextField(
                  keyboardType: TextInputType.phone,
                  
            decoration: const InputDecoration(
              hintText: 'Profession',
              suffixIcon: Icon(Icons.book)
            ),
            
          ),
          SizedBox(height: 48,),
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
            ),
            ),
            
        ],
      )),
    
    );
  }
}