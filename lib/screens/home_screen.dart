import 'package:booking_app/base/utils/all_jason.dart';
import 'package:booking_app/screens/widget/hotel.dart';
import 'package:flutter/material.dart';
import 'package:booking_app/base/res/styles/app_styles.dart';
import 'package:booking_app/base/widgets/app_double_text.dart';
import 'package:booking_app/base/widgets/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffeeedf2),
        body:
            // ListView provides us scrollable effect
            ListView(
          // children is a list that takes widget
          children: [
            const SizedBox(height: 40),
            Container(
              // Padding happens in container
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  // Row 1
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            style: AppStyles.headLineStyle1,
                            "Good Morning",
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text("Book Tickets", style: AppStyles.headlineStyle2),
                        ],
                      ),
                      Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.red,
                              // DecorationImage must have image property
                              image: const DecorationImage(
                                  // image provider are different classes in flutter
                                  // NetworkImage(image_url) is an image provider
                                  //AssetImage(path_to_image) is an image provider

                                  image: NetworkImage(
                                      "https://img.freepik.com/premium-vector/travel-tours-logo-icon-brand-identity-sign-symbol_880781-721.jpg"),
                                  fit: BoxFit.cover))),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xffffffff),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Color(0xFFBFC205),
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Search", style: TextStyle(fontSize: 20))
                        ],
                      )),
                  // AppDoubleText() is the calling object of AppDoubleText class
                  const SizedBox(
                    height: 10,
                  ),
                  AppDoubleText(
                    bigText: 'Upcoming Flights',
                    smallText: 'View all',
                    func: () {
                      Navigator.pushNamed(context, "/all_tickets");
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Calling TicketView() class
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    reverse: false,
                    child: Row(
                      children: ticketList.take(8).map((singMap) {
                        return TicketView(wholeScreen: true, ticket: singMap);
                      }).toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AppDoubleText(
                      bigText: 'HOTELS',
                      smallText: 'View all',
                      func: () {
                        Navigator.pushNamed(context, "/all_hotels");
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: hotelList.map((individualHotelmap) {
                        return Hotel(singleHotel: individualHotelmap);
                      }).toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            )
          ],
        ));
  }
}
