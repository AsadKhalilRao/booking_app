import 'package:booking_app/base/widgets/Bigtextticket.dart';
import 'package:booking_app/base/widgets/Smalltextticket.dart';
import 'package:booking_app/base/widgets/big_circle.dart';
import 'package:booking_app/base/widgets/ticket_column_text.dart';
import 'package:flutter/material.dart';
import 'package:booking_app/base/widgets/aap_layoutbuider_widget.dart';
import 'package:booking_app/base/widgets/big_dot.dart';

class TicketView extends StatelessWidget {
  final bool? isColor;
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  const TicketView(
      {super.key,
      required this.ticket,
      this.wholeScreen = false,
      this.isColor});
  @override
  Widget build(BuildContext context) {
    // MediaQuery.of(context).size.width   gives us the width of the screen
    // MediaQuery.of(context).size.height  gives us the height of the screen
    final screenWidth = MediaQuery.of(context).size.width;

    // final screenHeight = MediaQuery.of(context).size.height;

    // final screenHeight=MediaQuery.of(context).size.height;
    return SizedBox(
        width: screenWidth * 0.85,
        // height: screenHeight * 140,
        child: Container(
          // color: Colors.yellow,
          // margin will be provided at the outer side of the container
          margin: EdgeInsets.only(right: wholeScreen == true ? 10 : 0),
          child: Column(
            children: [
/********************************************************************************************/
// RED PART OF THE TICKET
              Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      boxShadow: [],
                      border: Border.all(color: Colors.transparent),
                      color: isColor == null ? Colors.red : Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      )),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Bigtextticket(
                              isColor: isColor,
                              bigtextticket: ticket["from"]["code"]),
                          Expanded(
                            child: Container(),
                          ),
                          BigDot(
                            isColor: isColor,
                          ),
                          Expanded(
                              child: Stack(
                            children: [
                              const SizedBox(
                                height: 30,
                                child: AapLayoutbuiderWidget(
                                  randomDivider: 6,
                                ),
                              ),
                              Center(
                                // Transform is a WIDGET
                                // rotate is a method in Tranform Widget
                                child: Transform.rotate(
                                  //pi/2 where pi=3.142
                                  angle: 1.571,
                                  child: Icon(
                                    Icons.local_airport_rounded,
                                    color: isColor == null
                                        ? Colors.white
                                        : Colors.blue,
                                    size: 30,
                                  ),
                                ),
                              )
                            ],
                          )),
                          BigDot(
                            isColor: isColor,
                          ),
                          Expanded(child: Container()),
                          Bigtextticket(
                              isColor: isColor,
                              bigtextticket: ticket["to"]["code"],
                              align: TextAlign.end),
                        ],
                      ),
                      //  Space between two ROWS
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          Bigtextticket(
                              isColor: isColor,
                              bigtextticket: ticket["from"]["name"]),
                          Expanded(child: Container()),
                          Smalltextticket(
                              isColor: isColor,
                              ticketTextsmall: ticket["flying_time"]),
                          Expanded(child: Container()),
                          Bigtextticket(
                              isColor: isColor,
                              bigtextticket: ticket["to"]["name"],
                              align: TextAlign.end)
                        ],
                      ),

                      //  Show departure and destination with names with time
                    ],
                  )),
/********************************************************************************************/
// BIG  & SMALL  STREAK part of ticket
              Container(
                decoration: BoxDecoration(
                  boxShadow: [],
                  border: Border.all(color: Colors.transparent),
                  color: isColor == null
                      ? const Color.fromARGB(255, 143, 112, 255)
                      : Colors.white,
                ),
                child: Row(
                  children: [
                    BigCircleDots(
                      isColor: isColor,
                      topRight: 10,
                      bottomRight: 10,
                    ),
                    Expanded(
                        child: AapLayoutbuiderWidget(
                      isColor: isColor,
                      randomDivider: 10,
                      smallcirclewidth: 4,
                      smallcircleheight: 4,
                    )),
                    BigCircleDots(
                      isColor: isColor,
                      topLeft: 10,
                      bottomLeft: 10,
                    )
                  ],
                ),
              ),
/********************************************************************************************/
// PURPLE PART OF TICKET
              Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      boxShadow: [],
                      border: Border.all(color: Colors.transparent),
                      color: isColor == null
                          ? const Color.fromARGB(255, 143, 112, 255)
                          : Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(isColor == null ? 25 : 0),
                        bottomRight: Radius.circular(isColor == null ? 25 : 0),
                      )),
                  child: Column(
                    children: [
                      //  Show departure and destination with icons first line
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Ticketcolumntext(
                              customBigtextticketWidget: Bigtextticket(
                                bigtextticket: ticket['date'],
                                isColor: isColor,
                              ),
                              customWSmalltextticketidget: Bigtextticket(
                                  isColor: isColor, bigtextticket: "Date"),
                            ),
                            Ticketcolumntext(
                              customBigtextticketWidget: Bigtextticket(
                                  isColor: isColor,
                                  bigtextticket: ticket["departure_time"]),
                              customWSmalltextticketidget: Bigtextticket(
                                  isColor: isColor,
                                  bigtextticket: "Departure Time"),
                              crossAxisAlignment: CrossAxisAlignment.center,
                            ),
                            Ticketcolumntext(
                              customBigtextticketWidget: Bigtextticket(
                                  isColor: isColor,
                                  bigtextticket: ticket["number"].toString()),
                              customWSmalltextticketidget: Bigtextticket(
                                bigtextticket: "Number",
                                isColor: isColor,
                              ),
                              crossAxisAlignment: CrossAxisAlignment.end,
                            )
                          ]),

                      // NYC TEXT
                    ],
                  ))
/********************************************************************************************/
            ],
          ),
        ));
  }
}
