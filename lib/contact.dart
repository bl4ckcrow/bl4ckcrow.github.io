import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/services.dart';
import 'package:web_profile/responsive_widget.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key key}) : super(key: key);

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
                  ContactInfo(),
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

class ContactInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final contactFields = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Contact",
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text("Would you like to contact me? please, send me an email."),
        Text("Thank you!"),
        SizedBox(height: 20.0),
        SizedBox(
          width: ResponsiveWidget.isSmallScreen(context)
              ? MediaQuery.of(context).size.height * 0.45
              : MediaQuery.of(context).size.width * 0.25,
          child: GestureDetector(
            onTap: () {
              Clipboard.setData(ClipboardData(text: 'azortega@live.com.mx'));
            },
            child: Tooltip(
              preferBelow: false,
              message: "Copy",
              child: Card(
                color: Colors.grey,
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: ListTile(
                  leading: Icon(Icons.email),
                  title: SelectableText('azortega@live.com.mx'),
                ),
              ),
            ),
          ),
        )
      ],
    );

    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          contactFields,
        ],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          contactFields
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
