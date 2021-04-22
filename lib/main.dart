import 'package:flutter/material.dart';
import 'package:web_profile/config/themes/custom_theme.dart';

import 'pages/ui/profile_page.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.theme,
      home: ProfilePage(),
    );
  }
}
