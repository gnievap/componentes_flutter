import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const ['Kansas City Chiefs', 'Detroit Lions', 'Jacksonville Jaguars', 'Philadelphia Eagles'];
   
  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 2'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.arrow_circle_right),
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
        ),  // construye o renderiza algun widget, en este caso, cada item de la lista 
        separatorBuilder: ( _, __ ) => const Divider(),
        itemCount: options.length),
        // children:  [
        //   ...options.map((team) => ListTile(
        //      leading: Icon(Icons.arrow_circle_right),
        //      title: Text(team),
        //      trailing: const Icon(Icons.arrow_forward_ios_outlined),
        //   ),
        //    ).toList(),

       // ],
  
    //)
    );
  }
}