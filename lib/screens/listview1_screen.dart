import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

  final options = const ['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy'];
   
  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 1'),
      ),
      body: ListView(
        children:  [


          ...options.map(
            (game) => ListTile(
              title: Text(game),
              trailing: const Icon(Icons.gamepad),
            )
            ).toList()



          
        ],
      )
    );
  }
}