import 'package:booking_app/base/utils/all_jason.dart';
import 'package:booking_app/base/widgets/ticket_view.dart';
import 'package:flutter/material.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: ticketList.take(8).map((individualMap) {
                return GestureDetector(
                  onTap: () {
                    var index = ticketList.indexOf(individualMap);
                    print("Map of index $index");
                    Navigator.pushNamed(context, AppRoutes.ticketScreen,
                        // The arguments parameter sends data to the new screen
                        // It accepts any type of data (e.g., a Map, List, String, int, etc.).
                        // Here we are PASSING MAP to the ticketScreen
                        arguments: {
                          // define key value pair
                          // "index" is the key
                          "index": index
                        });
                  },
                  child: Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: TicketView(ticket: individualMap)),
                );
              }).toList(),
            ),
          )
        ],
      ),
      appBar: AppBar(
        title: const Text(
          "All Tickets",
          textAlign: TextAlign.center,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            // Navigator.pushNamed(context, "/");
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
