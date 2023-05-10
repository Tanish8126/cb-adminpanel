import 'package:flutter/material.dart';

import '../../utils/constants/constants.dart';
import '../dashboard/dashboard_screen.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  static String routeName = './mainscreen';
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      drawer: const SideMenu(),
      body: SafeArea(
        child: DashboardScreen(),
      ),
    );
  }
}
