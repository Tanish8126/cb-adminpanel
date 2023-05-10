import 'package:cb_admin_panel/screens/dashboard/frame/controller.dart';
import 'package:cb_admin_panel/screens/outlet_info/outlet_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/header.dart';
import 'components/my_files.dart';
import 'components/recent_transactions.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key}) : super(key: key);
  final controller = Get.put(DashboardScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      const MyFiles(),
                      const SizedBox(height: 16),
                      Column(
                        children: List.generate(
                          controller.transactionData.length,
                          (index) => RecentFiles(
                              // serves: controller.productsData[index].serves,
                              // size: controller.productsData[index].size,
                              // price: controller.productsData[index].price,
                              // image: controller.productsData[index].image,
                              // name: controller.productsData[index].name,
                              ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const StorageDetails(),
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
