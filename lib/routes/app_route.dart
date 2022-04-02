import 'package:componentes_application/models/models.dart';
import 'package:componentes_application/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    /*MenuOption(
        route: 'home',
        icon: Icons.home,
        name: 'Home Screen',
        screen: const HomeScreen()),*/
    MenuOption(
        route: 'listview1',
        icon: Icons.list_alt,
        name: 'ListView 1 Screen',
        screen: const ListView1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.list_alt_rounded,
        name: 'List View 2 Screen',
        screen: const ListView2Screen()),
    MenuOption(
        route: 'card',
        icon: Icons.card_giftcard,
        name: 'Card Screen',
        screen: const CardScreen()),
    MenuOption(
        route: 'alert',
        icon: Icons.align_vertical_center_sharp,
        name: 'Alert Screen',
        screen: const AlertScreen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.verified_user,
        name: 'Avatar Screen',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animated',
        icon: Icons.animation,
        name: 'Animated Screen',
        screen: const AnimatedScreen()),
    MenuOption(
        route: 'inputs',
        icon: Icons.input,
        name: 'Inputs Screen',
        screen: const InputsScreen()),
    MenuOption(
        route: 'slider',
        icon: Icons.slideshow,
        name: 'Slider And check',
        screen: const SliderScreen()),
    MenuOption(
        route: 'listviewbuilder',
        icon: Icons.list_rounded,
        name: 'ListView Builder',
        screen: const ListViewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

/*  static Map<String, Widget Function(BuildContext)> routes = {
    'listview1': (BuildContext context) => const ListView1Screen(),
    'listview2': (BuildContext context) => const ListView2Screen(),
    'card': (BuildContext context) => const CardScreen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'home': (BuildContext context) => const HomeScreen(),
  };*/

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
