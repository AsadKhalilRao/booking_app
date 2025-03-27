import 'package:booking_app/app_routes.dart';
import 'package:booking_app/screens/all_hotels.dart';
import 'package:booking_app/screens/all_tickets.dart';
import 'package:booking_app/screens/search/search_screen.dart';
import 'package:booking_app/screens/ticket/ticket_view.dart';
import 'package:flutter/material.dart';
import 'package:booking_app/base/bottom_nav_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        //root Route
        AppRoutes.homePage: (context) {
          // return const SearchScreen();
          return const BottomNavBar();
        },
        AppRoutes.ticketScreen: (context) {
          return const TicketScreen();
        },
        // Route 1
        AppRoutes.allTickets: (context) {
          return const AllTickets();
        },
        AppRoutes.allHotels: (context) {
          return const Allhotels();
        },
        AppRoutes.search: (context) {
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
