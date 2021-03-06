import 'package:flutter/material.dart';

import 'package:component_test/src/pages/home_page.dart';
import 'package:component_test/src/pages/alert_page.dart';
import 'package:component_test/src/pages/avatar_page.dart';
import 'package:component_test/src/pages/card_page.dart';
import 'package:component_test/src/pages/animated_container_page.dart';
import 'package:component_test/src/pages/input_page.dart';
import 'package:component_test/src/pages/sliders_page.dart';
import 'package:component_test/src/pages/listview_page.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => alertPage(),
    'avatar': (BuildContext context) => avatarPage(),
    'card': (BuildContext context) => cardPage(),
    'animatedContainer': (BuildContext context) => animatedContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'sliders': (BuildContext context) => slidersPage(),
    'list': (BuildContext context) => listPage(),
  };
}
