import 'package:componentes_flutter/router/app_routes.dart';
import 'package:componentes_flutter/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text( menuOptions[index].name ),
          leading: Icon(menuOptions[index].icon),
          onTap: (){
            final route = MaterialPageRoute(builder: (context) => const ListView1Screen(),);
            // Destruye el stack de ventanas que tiene la app
            // Útil para un login
            //Navigator.pushReplacement(context, route);
            Navigator.pushNamed(context, menuOptions[index].route );

          },
        ),
        separatorBuilder: ( _, __ ) => const Divider( ),
        itemCount: menuOptions.length,
        )
    );
  }
}