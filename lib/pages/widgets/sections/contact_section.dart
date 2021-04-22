import 'package:flutter/material.dart';
import 'package:web_profile/config/constants/responsive_breakpoints.dart';
import 'package:web_profile/pages/widgets/utils/social_buttons.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Contact me",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          textScaleFactor: 1.5,
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        Text(
          "I'm always open to discuss your projects and talk about new things, never stopping to learn.",
          softWrap: true,
          style: TextStyle(
            color: Theme.of(context).shadowColor,
          ),
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        Container(height: 30.0, child: SocialButtons()),
      ],
    );
  }
}
