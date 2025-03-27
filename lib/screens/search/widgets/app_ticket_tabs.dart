import 'package:booking_app/screens/search/widgets/app_tab.dart';
import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String tabtextone;
  final String tabtexttwo;
  const AppTicketTabs({super.key, this.tabtextone = "", this.tabtexttwo = ""});
  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;
    // print("The screen width is: $screenWidth");

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xFFF4F6FD)),
      child: Row(
        children: [
          AppTab(
            tabText: tabtextone,
            color: true,
          ),
          AppTab(
            tabText: tabtexttwo,
            borderRadius: true,
          ),
        ],
      ),
    );
  }
}
