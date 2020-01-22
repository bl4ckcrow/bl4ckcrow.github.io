import 'package:flutter/material.dart';
import 'package:web_profile/contact.dart';
import 'package:web_profile/profile_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => ProfilePage(),
    'contact': (BuildContext context) => ContactPage(),
  };
}
