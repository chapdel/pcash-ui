import 'package:flutter/material.dart';
import 'package:pcash_ui/config.dart';

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
                            prefixIcon: Icon(Icons.phone)
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