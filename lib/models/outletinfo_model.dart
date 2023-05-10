import 'package:cloud_firestore/cloud_firestore.dart';

class OutletInfoModel {
  late String outletId;
  late String image;
  late String outletName;
  late String outletUid;
  late String openTime;
  late String closeTime;
  late String viewMap;
  late bool isDelivering;
  late GeoPoint latlang;
  OutletInfoModel(
      {required this.image,
      required this.latlang,
      required this.isDelivering,
      required this.outletId,
      required this.openTime,
      required this.closeTime,
      required this.outletName,
      required this.viewMap,
      required this.outletUid});

  OutletInfoModel.fromJson(Map<String, dynamic> map) {
    outletId = map["outletId"];
    image = map["image"];
    latlang = map["latlang"];
    outletUid = map["outletUid"];
    outletName = map["outletName"];
    isDelivering = map["isDelivering"];
    openTime = map["openTime"];
    closeTime = map["closeTime"];
    viewMap = map["viewMap"];
  }
}
