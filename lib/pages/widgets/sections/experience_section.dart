import 'package:flutter/material.dart';

import 'package:web_profile/business_logic/models/experience_item.dart';
import 'package:web_profile/config/constants/responsive_breakpoints.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Experience",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          textScaleFactor: 1.5,
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        ExperienceCards()
      ],
    );
  }
}

class ExperienceCards extends StatelessWidget {
  final List<ExperienceItem> experiences = [
    ExperienceItem(
      companyName: "Rockers App, Coffee Blak, Epicx",
      position: "Maker of",
      period: "2019 - Now",
    ),
    ExperienceItem(
      companyName: "AstraZeneca",
      position: "SAP ABAP Project Lead",
      period: "2015 - 2019",
    ),
    ExperienceItem(
      companyName: "Hyundai",
      position: "SAP IT Specialist",
      period: "2014 - 2015",
    ),
    ExperienceItem(
      companyName: "Deloitte",
      position: "SAP ABAP Jr. Lead",
      period: "2010 - 2014",
    ),
    ExperienceItem(
      companyName: "Grupo 2X",
      position: "SAP ABAP Analyst",
      period: "2009 - 2010",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          experiences.length,
          (index) => Card(
            child: Container(
              height: 180.0,
              width: 250.0,
              padding: EdgeInsets.all(kDefaultPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    experiences[index].companyName,
                  ),
                  Text(
                    experiences[index].position,
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    experiences[index].period,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
