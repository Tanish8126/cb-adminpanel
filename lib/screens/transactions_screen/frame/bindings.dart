import 'package:get/get.dart';

import 'controller.dart';

class DescriptionBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DescriptionController());
  }
}
