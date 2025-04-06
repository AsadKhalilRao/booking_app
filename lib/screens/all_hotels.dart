import 'package:booking_app/base/utils/all_jason.dart';
import 'package:booking_app/base/widgets/hotelColumnText.dart';
import 'package:booking_app/screens/widget/hotel.dart';
import 'package:flutter/material.dart';

class Allhotels extends StatelessWidget {
  const Allhotels({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeeedf2),
      appBar: AppBar(
        backgroundColor: const Color(0xffeeedf2),
        title: const Text("All Hotels"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.homePage);
          },
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 14,
              mainAxisSpacing: 30,
              childAspectRatio: 0.9,
            ),
            itemCount: hotelList.length,
            itemBuilder: (context, index) {
              var individualHotelmap = hotelList[index];
              return HotelGridView(
                  singleHotel: individualHotelmap, index: index);
            }),
      ),
    );
  }
}

class HotelGridView extends StatelessWidget {
  final Map<String, dynamic> singleHotel;
  final int index;
  final bool wholeScreen;
  const HotelGridView({
    super.key,
    this.wholeScreen = false,
    required this.singleHotel,
    required this.index,
  });
  @override
  Widget build(BuildContext context) {
    // MediaQuery.of(context).size.width   gives us the width of the screen
    // MediaQuery.of(context).size.height  gives us the height of the screen
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    // final screenHeight=MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.hotelDetail, arguments: {
          "hotel_index": index,
        });

        // var index = ticketList.indexOf(individualMap);
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        height: screenHeight * .41,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: const Color(0xFF687daf),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: AspectRatio(
                aspectRatio: 1.25,
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                        // DecorationImage must have image property
                        image: DecorationImage(
                            // image provider are different classes in flutter
                            // NetworkImage(image_url) is an image provider
                            //AssetImage(path_to_image) is an image provider

                            image: NetworkImage(singleHotel["image"]),
                            fit: BoxFit.cover))),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Hotelcolumntext(
              color: const Color(0xFFd2bdb6),
              hotelColumnText: singleHotel["place"],
              hotelColumnTextFontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(
                  child: Hotelcolumntext(
                    color: const Color(0xFFd2bdb6),
                    hotelColumnText: singleHotel["destination"],
                    hotelColumnTextFontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Expanded(child: Container()),
                Hotelcolumntext(
                  color: const Color(0xFFd2bdb6),
                  hotelColumnText: '\$${singleHotel["price"].toString()}/NIGHT',
                  hotelColumnTextFontSize: 14,
                  fontWeight: FontWeight.bold,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
