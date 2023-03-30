import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/header.dart';

import 'components/my_files.dart';
import 'components/recent_files.dart';
import 'components/storage_details.dart';

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
                    children: const [
                      MyFiles(),
                      SizedBox(height: defaultPadding),
                      RecentFiles(),
                      SizedBox(height: defaultPadding),
                      StorageDetails(),
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
