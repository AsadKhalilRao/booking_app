import 'package:booking_app/base/utils/all_jason.dart';
import 'package:flutter/material.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({super.key});

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  late int hotelIndex = 0;
  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args is Map<String, dynamic>) {
      // ?? is null-coalescing operator
      //,if "index" is null, assign 0
      hotelIndex = args["hotel_index"] ?? 0;
    } else {
      hotelIndex = 0;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Dynamic as it changes based on item
          // and height we give
          SliverAppBar(
            // Hides the DEFAULT navigation back button
            automaticallyImplyLeading: false,
            // Creating cutom back button
            leading:
                // leading property expect a widget

                Padding(
              // Using padding widget to reduce the Size
              // of GestureDetector and inturn
              // size of the circle Container is
              // reduced
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                // Using onTap
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  child: const Icon(
                    // Giving the name of icon
                    Icons.arrow_back,
                    // Giving color to the icon
                    color: Colors.white,
                    // Giving size to the icon
                    size: 20,
                  ),
                  decoration: BoxDecoration(
                    // Changing the shape of Container,DEFAULT is RECTANGLE
                    shape: BoxShape.circle,
                    // Changing the color of Container
                    color: Color.fromARGB(255, 116, 69, 255),
                  ),
                ),
              ),
            ),

            // pins the SliverAppBar
            // app bar remains visible at the top of the screen when the user scrolls down
            // it will stay pinned at the top.
            pinned: true,
            //  maximum height the app bar can expand to when fully opened.
            // The app bar starts at 200 pixels in height when fully expanded.
            // As you SCROLL UP, app bar shrinks down to its default app bar height.
            expandedHeight: 200,
            // It allows for dynamic effects like expanding and shrinking the app bar with an image or title.
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "${(hotelList[hotelIndex]["place"])}",
                style: const TextStyle(color: Colors.black),
              ),
              background: Image.network(hotelList[hotelIndex]["image"],
                  fit: BoxFit.cover),
            ),
          ),
          // SliverList widget  create a scrollable list of items.
          SliverList(
              // delegate that helps build the list items dynamically
              delegate:
                  // SliverChildListDelegate is a constructor
                  // provides a fixed list of children (widgets)
                  //that will be displayed within the SliverList
                  SliverChildListDelegate([
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetti simply dummy text of the printing and typesetti simply dummy text of the printing and typesetti simply dummy text of the printing and typesetti simply dummy text of the printing and typesetti simply dummy text of the printing and typesetti simply dummy text of the printing and typesetti simply dummy text of the printing and typesetti simply dummy text of the printing and typesetti simply dummy text of the printing and typesetti simply dummy text of the printing and typesetti simply dummy text of the printing and typesetti simply dummy text of the printing and typesetti simply dummy text of the printing and typesetti simply dummy text of the printing and typesetti simply dummy text of the printing and typesetti simply dummy text of the printing and typesetti simply dummy text of the printing and typesetti simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "More Images",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(8),
                      child: Image.network("https://placehold.co/200x200/png"),
                    );
                  }),
            )
          ]))
        ],
      ),
    );
  }
}
