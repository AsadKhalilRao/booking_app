import 'package:flutter/material.dart';

class Ticketpromotion extends StatelessWidget {
  const Ticketpromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * .57,
      width: screenWidth * .44,
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        children: [
          Container(
            width: screenWidth * .42,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image
                Container(
                  height: screenHeight * .30,
                  // No NEED
                  // width: screenWidth * .41,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://xx.bstatic.com/xdata/images/xphoto/max1024/358293159.jpg?k=25dc0bf135c56c250312664018907c43c1229fac65eba69c18e0b263eaf9dbee&o="),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Text content
                const SizedBox(
                    height:
                        10), // Add a bit of space between the image and text
                const Text(
                  "20% discount on the early booking of this flight. Don't miss.",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          // Spacer
          Expanded(child: Container()),

          // Right side column with two containers
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    height: screenHeight * .28,
                    width: screenWidth * .42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFF3AB8B8),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Discount\nfor survey",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Take the survey about our services and get discount",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: -45,
                    top: -40,
                    child:
                        // Circle
                        Container(
                      // Padding is being applied from inside
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 18, color: const Color(0xFF189999))),
                    ),
                  ),
                ],
              ),
              Expanded(child: Container()),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                height: screenHeight * .28,
                width: screenWidth * .42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
                child: const Column(
                  children: [
                    Text(
                      "Take love\n",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      "😘😍🥰",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
