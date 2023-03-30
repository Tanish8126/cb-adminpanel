import 'package:adminpanel/controllers/menucontroller.dart';
import 'package:adminpanel/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<ControllerMenu>().scaffoldKey,
      drawer: const SideMenu(),
      body: const SafeArea(
        child: DashboardScreen(),
      ),
    );
  }
}
