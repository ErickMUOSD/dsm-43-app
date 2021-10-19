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
    '/': (context) => const HomePage(),
    'alert': (context) => const AlertPage(),
    'avatar': (context) => const AvatarPage(),
    'animatedContainer': (context) => const AnimateContainer(),
    'inputs': (context) => InputPage(),
    'slider': (context) => const SliderPage(),
    // ignore: prefer_const_constructors
    'list': (context) => ListPage(),
  };
}
