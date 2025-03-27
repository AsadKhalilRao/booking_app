import 'package:booking_app/base/utils/all_jason.dart';
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
      // body: GridView.builder(gridDelegate: gridDelegate, itemBuilder: itemBuilder),
    );
  }
}
