import 'package:componentes_flutter/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: const Text('Nombre de ruta'),
          leading: const Icon(Icons.timer_outlined),
          onTap: (){
            final route = MaterialPageRoute(builder: (context) => const ListView1Screen(),);
            // Destruye el stack de ventanas que tiene la app
            // Útil para un login
            //Navigator.pushReplacement(context, route);
            Navigator.pushNamed(context, 'alerts');

          },
        ),
        separatorBuilder: ( _, __ ) => const Divider( ),
        itemCount: 100)
    );
  }
}