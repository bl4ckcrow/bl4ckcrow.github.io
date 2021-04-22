import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'nav_button.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        NavButton(
          iconID: FontAwesomeIcons.linkedin,
          tooltipText: "Linkedin",
          onPressed: () {
            window.open("https://www.linkedin.com/in/azael-ortega-in/", "Linkedin");
          },
        ),
        NavButton(
          iconID: FontAwesomeIcons.github,
          tooltipText: "GitHub",
          onPressed: () {
            window.open("https://github.com/bl4ckcrow", "Git");
          },
        ),
        NavButton(
          iconID: FontAwesomeIcons.twitter,
          tooltipText: "Twitter",
          onPressed: () {
            window.open("https://twitter.com/bl4kcrow", "Twitter");
          },
        ),
        NavButton(
          iconID: FontAwesomeIcons.instagram,
          tooltipText: "Instagram",
          onPressed: () {
            window.open("https://www.instagram.com/bl4kcrow/", "Instagram");
          },
        ),
      ],
    );
  }
}
