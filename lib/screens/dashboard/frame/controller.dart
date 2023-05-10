import 'package:cb_admin_panel/models/transction_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import 'state.dart';

class DashboardScreenController extends GetxController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  late List<TransactionDataModel> transactionData;
  bool isLoading = true;

  void getnewData() async {
    await Future.wait([getProductData()]).then((value) {
      isLoading = false;
      update();
    });
  }

  Future<void> getProductData() async {
    await _firestore.collection('products').get().then((value) {
      transactionData = value.docs
          .map((e) => TransactionDataModel.fromJson(e.data()))
          .toList();
    });
  }

  @override
  void onInit() {
    super.onInit();
    getnewData();
  }

  final state = DashboardScreenState();
}
