import 'package:booking_app/base/widgets/hotelColumnText.dart';
import 'package:flutter/material.dart';

class Hotel extends StatelessWidget {
  final Map<String, dynamic> singleHotel;
  final bool wholeScreen;
  const Hotel({
    super.key,
    this.wholeScreen = false,
    required this.singleHotel,
  });

  @override
  Widget build(BuildContext context) {
    // MediaQuery.of(context).size.width   gives us the width of the screen
    // MediaQuery.of(context).size.height  gives us the height of the screen
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    // final screenHeight=MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 10),
      padding: const EdgeInsets.all(15),
      width: screenWidth * .60,
      height: screenHeight * .41,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: const Color(0xFF687daf),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
                width: 200,
                height: 200,
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
          const SizedBox(
            height: 5,
          ),
          Hotelcolumntext(
            color: const Color(0xFFd2bdb6),
            hotelColumnText: singleHotel["place"],
            hotelColumnTextFontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 100,
            child: Hotelcolumntext(
              color: const Color(0xFFd2bdb6),
              hotelColumnText: singleHotel["destination"],
              hotelColumnTextFontSize: 16,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Hotelcolumntext(
            color: const Color(0xFFd2bdb6),
            hotelColumnText: '\$${singleHotel["price"].toString()}/NIGHT',
            hotelColumnTextFontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
