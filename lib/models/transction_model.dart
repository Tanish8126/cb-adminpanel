class TransactionDataModel {
  late String orderId;
  late String name;
  late String date;
  late String createdAt;
  late String amount;
  late String status;
  late String transactionId;

  TransactionDataModel(
      {required this.orderId,
      required this.date,
      required this.createdAt,
      required this.amount,
      required this.status,
      required this.transactionId});

  TransactionDataModel.fromJson(Map<String, dynamic> map) {
    orderId = map["outletId"];
    date = map["image"];
    createdAt = map["latlang"];
    amount = map["outletUid"];
    status = map["outletName"];
    transactionId = map["isDelivering"];
  }
}
