import 'package:flutter/material.dart';
import 'pages/home_page.dart';

import 'package:dsm_43_app/src/pages/avatar_page.dart';
import 'package:dsm_43_app/src/pages/alert_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        'alert': (BuildContext context) => AlertPage(),
        'avatar': (BuildContext context) => Avatar_Page(),
      },
      initialRoute: '/',
    );
  }
}
