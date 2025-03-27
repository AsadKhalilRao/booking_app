import 'package:booking_app/screens/all_hotels.dart';
import 'package:booking_app/screens/all_tickets.dart';
import 'package:booking_app/screens/search/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:booking_app/base/bottom_nav_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        //root Route
        "/": (context) {
          // return const SearchScreen();
          return const BottomNavBar();
        },
        // Route 1
        "/all_tickets": (context) {
          return const AllTickets();
        },
        // Route 2
        "home": (context) {
          return const MyApp();
        },
        "/all_hotels": (context) {
          return const Allhotels();
        },
        "/Search": (context) {
          return const SearchScreen();
        },
      },
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the
      //application as you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
    );
  }
}
