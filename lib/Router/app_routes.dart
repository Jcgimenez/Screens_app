import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/models.dart';
import '../screens/screens.dart';

class AppRoutes {

  static const initialRoute = '/home';

  static final menuOptions = <MenuOption>[
    // TODO: borrar home
    // MenuOption(route: '/home', icon: Icons.house, name: 'Home Screen', screen: const HomeScreen()),
    MenuOption(route: '/listview1', icon: Icons.list, name: 'Listview tipo 1', screen: const ListView1Screen()),
    MenuOption(route: '/listview2', icon: Icons.list, name: 'Listview tipo 2', screen: const ListView2Screen()),
    MenuOption(route: '/alert', icon: Icons.dangerous, name: 'Alert', screen: const AlertScreen()),
    MenuOption(route: '/card', icon: Icons.card_giftcard, name: 'Card', screen: const CardScreen()),
    MenuOption(route: '/avatar', icon: Icons.supervised_user_circle_outlined, name: 'Circle Avatar', screen: const AvatarScreen()),
    MenuOption(route: '/anomated', icon: Icons.play_circle_outline_rounded, name: 'Animated Container', screen: const AnimatedScreen()),
    MenuOption(route: '/inputs', icon: Icons.input_rounded, name: 'Text Inputs', screen: const InputsScreen()),
    MenuOption(route: '/slider', icon: Icons.slow_motion_video_rounded, name: 'Slider', screen: const SliderScreen()),
    MenuOption(route: '/listviewbuilder', icon: Icons.build_circle_rounded, name: 'InifiniteScrol and Pull to refresh', screen: const ListViewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //       '/home': ((context) => const HomeScreen()),
  //        '/listview1': ((context) => const ListView1Screen()),
  //        '/listview2': ((context) => const ListView2Screen()),
  //        '/alert': ((context) => const AlertScreen()),
  //        '/card': ((context) => const CardScreen()),
  //  };

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => const HomeScreen()
        );
  }

}