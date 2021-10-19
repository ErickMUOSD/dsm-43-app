import 'package:dsm_43_app/src/pages/list_page.dart';
import 'package:flutter/material.dart';

import 'package:dsm_43_app/src/pages/avatar_page.dart';
import 'package:dsm_43_app/src/pages/alert_page.dart';
import 'package:dsm_43_app/src/pages/home_page.dart';
import 'package:dsm_43_app/src/pages/animated_container_page.dart';
import 'package:dsm_43_app/src/pages/input_page.dart';
import 'package:dsm_43_app/src/pages/slider_page.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    '/': (context) => HomePage(),
    'alert': (context) => const AlertPage(),
    'avatar': (context) => const Avatar_Page(),
    'animatedContainer': (context) => AnimateContainer(),
    'inputs': (context) => InputPage(),
    'slider': (context) => SliderPage(),
    'list': (context) => ListPage(),
  };
}
