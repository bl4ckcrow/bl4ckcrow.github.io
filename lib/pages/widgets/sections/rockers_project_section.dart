import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_profile/config/constants/responsive_breakpoints.dart';

class RockersProjectSection extends StatelessWidget {
  const RockersProjectSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Rockers Rock Music Project",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          textScaleFactor: 1.5,
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        Text(
          "Spreading with passion the Rock sounds. "
          "New and oldies rock songs, recommendations, charts from radio stations and magazines.",
          softWrap: true,
          style: TextStyle(
            color: Theme.of(context).shadowColor,
          ),
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Card(
                child: Container(
                  height: 220.0,
                  width: 250.0,
                  padding: EdgeInsets.all(kDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Rockers Rock Music Channel",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        textScaleFactor: 1.2,
                        textAlign: TextAlign.center,
                        softWrap: true,
                      ),
                      SizedBox(
                        height: kDefaultPadding,
                      ),
                      SvgPicture.asset("images/logos/youtube-logo.svg"),
                      Text(
                        "YouTube",
                      ),
                      SizedBox(
                        height: kDefaultPadding,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          window.open(
                            "https://www.youtube.com/c/RockersRockMusic",
                            "YouTube Channel",
                          );
                        },
                        child: Text(
                          "Watch",
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  height: 220.0,
                  width: 250.0,
                  padding: EdgeInsets.all(kDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Rockers Rock Music Application",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        textScaleFactor: 1.2,
                        textAlign: TextAlign.center,
                        softWrap: true,
                      ),
                      SizedBox(
                        height: kDefaultPadding,
                      ),
                      SvgPicture.asset(
                        "images/logos/google-play-logo.svg",
                      ),
                      Text(
                        "Google Play Store",
                      ),
                      SizedBox(
                        height: kDefaultPadding,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          window.open(
                            "https://play.google.com/store/apps/details?id=com.bl4ckcrow.rockers",
                            "Google Play",
                          );
                        },
                        child: Text(
                          "Download",
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
