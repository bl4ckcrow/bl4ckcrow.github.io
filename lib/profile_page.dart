import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web_profile/responsive_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  List<Widget> navButtons() => [
        NavButton(
          iconID: FontAwesomeIcons.linkedin,
          tooltipText: "Linkedin",
          onPressed: () {
            html.window.open(
                "https://www.linkedin.com/in/azael-ortega-in/", "Linkedin");
          },
        ),
        NavButton(
          iconID: FontAwesomeIcons.github,
          tooltipText: "GitHub",
          onPressed: () {
            html.window.open("https://github.com/bl4ckcrow", "Git");
          },
        ),
        NavButton(
          iconID: FontAwesomeIcons.twitter,
          tooltipText: "Twitter",
          onPressed: () {
            html.window.open("https://twitter.com/_bl4ckcrow_", "Twitter");
          },
        ),
        NavButton(
          iconID: FontAwesomeIcons.instagram,
          tooltipText: "Instagram",
          onPressed: () {
            html.window
                .open("https://www.instagram.com/bl4ckcrow_/", "Instagram");
          },
        ),
        NavButton(
          iconID: FontAwesomeIcons.facebookF,
          tooltipText: "Facebook",
          onPressed: () {
            html.window.open("https://www.facebook.com/azortega7", "Fb");
          },
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.black,
        ),
        drawer: ResponsiveWidget.isSmallScreen(context)
            ? Drawer(
                child: ListView(
                  padding: const EdgeInsets.all(20),
                  children: navButtons(),
                ),
              )
            : null,
        body: SingleChildScrollView(
          child: AnimatedPadding(
            duration: Duration(seconds: 1),
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
            child: ResponsiveWidget(
              largeScreen: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  NavHeader(navButtons: navButtons()),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  ProfileInfo(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  SocialInfo(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NavHeader extends StatelessWidget {
  final List<Widget> navButtons;

  const NavHeader({Key key, this.navButtons}) : super(key: key);

  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          AODot(),
//          Spacer(),
          if (!ResponsiveWidget.isSmallScreen(context))
            Row(
              children: navButtons,
            )
        ],
      ),
    );
  }
}

class AODot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          "</AO>",
          textScaleFactor: 2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        AnimatedContainer(
          duration: Duration(seconds: 1),
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.orange,
          ),
        ),
      ],
    );
  }
}

class NavButton extends StatelessWidget {
  final IconData iconID;
  final tooltipText;
  final onPressed;

  const NavButton(
      {Key key,
      @required this.iconID,
      @required this.onPressed,
      this.tooltipText = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(iconID),
      tooltip: tooltipText,
      hoverColor: Colors.white24,
      onPressed: onPressed,
    );
  }
}

class ProfileInfo extends StatelessWidget {
  profileImage(context) => Container(
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.luminosity,
          color: Colors.white,
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("AO_photo.jpeg"),
            alignment: Alignment.bottomLeft,
            fit: BoxFit.cover,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    final profileData = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Hello! my name is",
          textScaleFactor: 2,
          style: TextStyle(color: Colors.orange),
        ),
        Text(
          "Azael\nOrtega",
          textScaleFactor: 5,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "A SAP Abap Developer expert, with experience designing &\n"
          "programming SAP solutions for different industries & countries.\n"
          "I also like to develop apps for mobile and web using mainly\n"
          "Flutter - Google's open source UI toolkit.",
          softWrap: true,
          textScaleFactor: 1.5,
          style: TextStyle(color: Colors.white70),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              shape: StadiumBorder(),
              child: Text("LinkedIn"),
              color: Colors.red,
              hoverColor: Colors.redAccent,
              onPressed: () {
                html.window.open(
                    "https://www.linkedin.com/in/azael-ortega-in/", "Linkedin");
              },
              padding: EdgeInsets.all(10),
            ),
            SizedBox(
              width: 20,
            ),
            OutlineButton(
              borderSide: BorderSide(
                color: Colors.red,
              ),
              shape: StadiumBorder(),
              child: Text("Contact"),
              color: Colors.red,
              onPressed: () {
                Navigator.pushNamed(context, 'contact');
              },
              padding: EdgeInsets.all(10),
            )
          ],
        )
      ],
    );

    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[profileImage(context), profileData],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          profileImage(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          profileData
        ],
      ),
    );
  }
}

class SocialInfo extends StatelessWidget {
  Widget copyRightText() => Text(
        "©️bl4ckcrow 2019",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.grey,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          copyRightText(),
        ],
      ),
      smallScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          copyRightText(),
        ],
      ),
    );
  }
}
