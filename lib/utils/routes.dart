import 'package:flutter/cupertino.dart';

import '../screens/main/main_screen.dart';
import '../screens/outlet_info/outlet_info.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  MainScreen.routeName: (context) => const MainScreen(),
  OutletInfo.routeName: (context) => OutletInfo(),
};
