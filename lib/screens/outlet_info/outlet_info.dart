import 'package:flutter/material.dart';

class OutletInfo extends StatelessWidget {
  static String routeName = './outletinfo';
  const OutletInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text("Outlet Data"), centerTitle: true),
      body: Column(
        children: [Container()],
      ),
    ));
  }
}
