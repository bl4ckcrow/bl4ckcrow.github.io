import 'package:flutter/material.dart';

import 'package:web_profile/pages/widgets/utils/responsive_layout.dart';

class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ResponsiveLayout.isMobileScreen(context)
          ? MediaQuery.of(context).size.height * 0.25
          : MediaQuery.of(context).size.width * 0.25,
      width: ResponsiveLayout.isMobileScreen(context)
          ? MediaQuery.of(context).size.height * 0.25
          : MediaQuery.of(context).size.width * 0.25,
      decoration: BoxDecoration(
        backgroundBlendMode: BlendMode.luminosity,
        color: Colors.white,
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage("images/photos/ao_photo.jpg"),
          alignment: Alignment.bottomLeft,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
