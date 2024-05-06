import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/phone_one_screen/phone_one_screen.dart';
import '../presentation/phone_three_screen/phone_three_screen.dart';
import '../presentation/phone_two_container_screen/phone_two_container_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String phoneOneScreen = '/phone_one_screen';

  static const String phoneThreeScreen = '/phone_three_screen';

  static const String phoneTwoContainerScreen = '/phone_two_container_screen';

  static const String phoneTwoPage = '/phone_two_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    phoneOneScreen: (context) => PhoneOneScreen(),
    phoneThreeScreen: (context) => PhoneThreeScreen(),
    phoneTwoContainerScreen: (context) => PhoneTwoContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => PhoneOneScreen()
  };
}
