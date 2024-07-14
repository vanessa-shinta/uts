import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/phone_one_screen/phone_one_screen.dart';
import '../presentation/phone_three_screen/phone_three_screen.dart';
import '../presentation/phone_two_container_screen/phone_two_container_screen.dart';
import '../presentation/phone_two_page/phone_two_page.dart';
import '../presentation/ticket_list_screen.dart'; // Import TicketListScreen

class AppRoutes {
  static const String phoneOneScreen = '/phone_one_screen';
  static const String phoneThreeScreen = '/phone_three_screen';
  static const String phoneTwoContainerScreen = '/phone_two_container_screen';
  static const String phoneTwoPage = '/phone_two_page';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String ticketListScreen = '/ticket_list_screen'; // Tambahkan rute untuk TicketListScreen
  static const String initialRoute = phoneOneScreen;

  static Map<String, WidgetBuilder> routes = {
    phoneOneScreen: (context) => PhoneOneScreen(),
    phoneThreeScreen: (context) => PhoneThreeScreen(),
    phoneTwoContainerScreen: (context) => PhoneTwoContainerScreen(),
    phoneTwoPage: (context) => PhoneTwoPage(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    ticketListScreen: (context) => TicketListScreen(), // Tambahkan rute untuk TicketListScreen
    initialRoute: (context) => PhoneOneScreen(),
  };
}
