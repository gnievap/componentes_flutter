import 'package:componentes_flutter/models/models.dart';
import 'package:componentes_flutter/screens/screens.dart';
import 'package:flutter/material.dart';





class AppRoutes{
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption> [
    //TODO: borrar home
    MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home),
    MenuOption(route: 'ListView1', name: 'ListView tipo 1', screen: const ListView1Screen(), icon: Icons.list_alt_outlined),
    MenuOption(route: 'ListView2', name: 'ListView tipo 2', screen: const ListView2Screen(), icon: Icons.list_rounded),
    MenuOption(route: 'alert', name: 'Alert', screen: const AlertScreen(), icon: Icons.add_alert_rounded),
    MenuOption(route: 'card', name: 'Tarjetas - Card', screen: const CardScreen(), icon: Icons.card_travel_rounded),
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
        'home'     : (BuildContext context) => const HomeScreen(),
        'listView1': (BuildContext context) => const ListView1Screen(),
        'listView2': (BuildContext context) => const ListView2Screen(),
        'alerts'   : (BuildContext context) => const AlertScreen(),
        'card'     : (BuildContext context) => const CardScreen(),
      };

      static Route<dynamic> onGenerateRoute(RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
        );
      }
}