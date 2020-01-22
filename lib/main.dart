import 'package:flutter/material.dart';
import 'package:web_profile/profile_page.dart';
import 'package:web_profile/routes/routes.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColorDark: Colors.black,
        fontFamily: "GoogleSansRegular",
      ),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta Llamada: ${settings.name}');
        return MaterialPageRoute(
            builder: (BuildContext context) => ProfilePage());
      },
    );
  }
}