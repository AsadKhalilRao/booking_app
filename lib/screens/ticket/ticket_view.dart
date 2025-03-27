import 'package:barcode_widget/barcode_widget.dart';
import 'package:booking_app/base/utils/all_jason.dart';
import 'package:booking_app/base/widgets/Bigtextticket.dart';
import 'package:booking_app/base/widgets/aap_layoutbuider_widget.dart';
import 'package:booking_app/base/widgets/ticket_column_text.dart';
import 'package:booking_app/base/widgets/ticket_view.dart';
import 'package:booking_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:flutter/material.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeeedf2),
      body: Stack(children: [
        ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            const SizedBox(
              height: 30,
            ),
            // TICKETS TEXT
            const Text(
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              "Tickets",
            ),
            //SPACE
            const SizedBox(
              height: 20,
            ),
            //Upcoming and Previous TABS
            const AppTicketTabs(
              tabtextone: "Upcoming",
              tabtexttwo: "Previous",
            ),
            //SPACE
            const SizedBox(
              height: 20,
            ),
            // ENTIRE TICKET
            Container(
                // color: Colors.green,
                child: TicketView(
              isColor: true,
              ticket: ticketList[0],
            )),
            const SizedBox(
              height: 2,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.only(
                //     bottomLeft: Radius.circular(20),
                //     bottomRight: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Ticketcolumntext(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        customBigtextticketWidget: Bigtextticket(
                          bigtextticket: "Flutter DB",
                          isColor: true,
                        ),
                        customWSmalltextticketidget: Bigtextticket(
                            isColor: true, bigtextticket: "Passenger"),
                      ),
                      Expanded(child: Container()),
                      const Ticketcolumntext(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        customBigtextticketWidget: Bigtextticket(
                          bigtextticket: "5221364869",
                          isColor: true,
                        ),
                        customWSmalltextticketidget: Bigtextticket(
                            isColor: true, bigtextticket: "Passport"),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const AapLayoutbuiderWidget(
                    randomDivider: 4,
                    isColor: false,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Ticketcolumntext(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        customBigtextticketWidget: Bigtextticket(
                          bigtextticket: "364738 28274478",
                          isColor: true,
                        ),
                        customWSmalltextticketidget: Bigtextticket(
                            isColor: true, bigtextticket: "Number of E-ticket"),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      const Ticketcolumntext(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        customBigtextticketWidget: Bigtextticket(
                          bigtextticket: "B2SG28",
                          isColor: true,
                        ),
                        customWSmalltextticketidget: Bigtextticket(
                            isColor: true, bigtextticket: "Booking code"),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const AapLayoutbuiderWidget(
                    randomDivider: 4,
                    isColor: false,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Ticketcolumntext(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            customBigtextticketWidget: Row(
                              children: [
                                Image(
                                  fit: BoxFit.contain,
                                  image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjXLgpc7zLbzQdt9hzRUvrG6L2IrXYQm_oPg&s',
                                    scale: 11,
                                  ),
                                ),
                                SizedBox(width: 4),
                                Bigtextticket(
                                    isColor: true, bigtextticket: "***"),
                                SizedBox(width: 4),
                                Bigtextticket(
                                    isColor: true, bigtextticket: "2462")
                              ],
                            ),
                            customWSmalltextticketidget: Bigtextticket(
                                isColor: true, bigtextticket: "Payment method"),
                          )
                        ],
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      const Ticketcolumntext(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        customBigtextticketWidget: Bigtextticket(
                          bigtextticket: "\$249.99",
                          isColor: true,
                        ),
                        customWSmalltextticketidget: Bigtextticket(
                            isColor: true, bigtextticket: "Price"),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
              ),
              child: ClipRRect(
                // Rounded corners with a radius of 16
                borderRadius: BorderRadius.circular(16),
                child: BarcodeWidget(
                    // Take all the available space
                    width: double.infinity,
                    height: 80,
                    // Type of barcode that will be generated.
                    // Code 128 barcode format
                    barcode: Barcode.code128(),
                    // Actual data that will be encoded into the barcode
                    // redirect the user to YouTube's homepage.
                    data: 'https://www.youtube.com/',
                    // Prevents text from being drawn below the barcode
                    drawText: false),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                // color: Colors.green,
                // padding: const EdgeInsets.only(left: 10),
                child: TicketView(
              // isColor: true,
              ticket: ticketList[0],
            )),
          ],
        ),
        Positioned(
          top: 50,
          child: Container(
            decoration: BoxDecoration(
                //Giving circle shape to the Container
                shape: BoxShape.circle,
                border: Border.all(width: 4)),
            child: const CircleAvatar(
              maxRadius: 10,
              backgroundColor: Colors.red,
            ),
          ),
        )
      ]),
    );
  }
}
