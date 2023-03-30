import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controllers/menucontroller.dart';
import '../dashboard/dashboard_screen.dart';
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
