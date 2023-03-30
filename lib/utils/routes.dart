import 'package:cb_admin_panel/screens/main/main_screen.dart';
import 'package:cb_admin_panel/screens/outlet_info/outlet_info.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  MainScreen.routeName: (context) => const MainScreen(),
  OutletInfo.routeName: (context) => const OutletInfo(),
};
