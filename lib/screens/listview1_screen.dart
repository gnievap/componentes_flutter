import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const ['Kansas City Chiefs', 'Detroit Lions', 'Jacksonville Jaguars', 'Philadelphia Eagles'];
   
  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 1'),
      ),
      body: ListView(
        children:  [
          ...options.map((team) => ListTile(
             leading: Icon(Icons.arrow_circle_right),
             title: Text(team),
             trailing: const Icon(Icons.arrow_forward_ios_outlined),
          ),
           ).toList(),

        ],
  
    )
    );
  }
}