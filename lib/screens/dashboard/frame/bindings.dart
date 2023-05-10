import 'package:get/get.dart';

import 'controller.dart';

class DashboardScreenBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardScreenController());
  }
}
