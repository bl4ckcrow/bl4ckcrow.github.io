import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        copyRightText(context),
      ],
    );
  }

  Widget copyRightText(BuildContext context) => Text(
        "©️bl4kcrow ${DateTime.now().year}",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Theme.of(context).shadowColor,
        ),
      );
}
