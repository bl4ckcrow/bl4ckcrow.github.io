import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Hello! my name is",
          textScaleFactor: 2,
          style: TextStyle(
            color: Theme.of(context).accentColor,
          ),
        ),
        Text(
          "Azael\nOrtega",
          textScaleFactor: 5,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "A SAP Abap Developer expert, with experience designing and "
          "programming SAP solutions for different industries & countries.\n"
          "I also like to develop apps for mobile and web using mainly "
          "Flutter - Google's open source UI toolkit.",
          softWrap: true,
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Theme.of(context).shadowColor,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset("images/logos/sap-logo.svg"),
            SvgPicture.asset("images/logos/flutter-logo.svg"),
          ],
        )
      ],
    );
  }
}
