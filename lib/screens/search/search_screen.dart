import 'package:booking_app/base/widgets/app_double_text.dart';
import 'package:booking_app/screens/search/widgets/app_text_icon.dart';
import 'package:booking_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:booking_app/screens/search/widgets/find_tickets.dart';
import 'package:booking_app/screens/search/widgets/ticketpromotion.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeeedf2),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text(
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            "What are you\nLooking for?",
          ),
          const SizedBox(
            height: 30,
          ),
          const AppTicketTabs(
              tabtextone: "AirLine Tickets", tabtexttwo: "Hotels"),
          const SizedBox(
            height: 30,
          ),
          const AppTextIcon(
              appIcon: Icons.flight_takeoff_outlined, appText: "Departure"),
          const SizedBox(
            height: 25,
          ),
          const AppTextIcon(
              appIcon: Icons.flight_land_outlined, appText: "Arrival"),
          const SizedBox(
            height: 25,
          ),
          const FindTickets(),
          const SizedBox(
            height: 40,
          ),
          AppDoubleText(
            bigText: 'Upcoming Flights',
            smallText: 'View all',
            func: () {
              Navigator.pushNamed(context, "/all_tickets");
            },
          ),
          const SizedBox(
            height: 30,
          ),
          const Ticketpromotion(),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
