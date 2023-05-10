import 'package:cb_admin_panel/screens/outlet_info/outlet_info.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import 'components/header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      //  MyFiles(),
                      // SizedBox(height: defaultPadding),
                      //  RecentFiles(),
                      //  SizedBox(height: defaultPadding),
                      // StorageDetails(),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, OutletInfo.routeName);
                          },
                          child: const Text("Outlet Details"))
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
