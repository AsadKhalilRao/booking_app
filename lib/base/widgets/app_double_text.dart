import 'package:booking_app/base/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

// AppDoubleText is the child class
// StatelessWidget is the parent class
class AppDoubleText extends StatelessWidget {
  final VoidCallback func;
  // Field of AppDoubleText
  final String bigText;
  // Field of AppDoubleText
  final String smallText;
// AppDoubleText({super.key}) is the generative constructor of AppDoubleText class
  // super() is calling constructor of  Parent Class (StatelessWidget class)
  // and passing key as parameter to the  Parent Class (StatelessWidget class)
  const AppDoubleText(
      {Key? key,
      required this.bigText,
      required this.smallText,
      required this.func})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          // AppStyles.headLineStyle1
          style: AppStyles.headLineStyle1,
        ),
        InkWell(
          // onTap is an event which is hardcoded
          onTap: func,
          child: Text(smallText,
              style: const TextStyle(color: Color.fromARGB(255, 0, 38, 252))),
        ),
      ],
    );
  }
}
