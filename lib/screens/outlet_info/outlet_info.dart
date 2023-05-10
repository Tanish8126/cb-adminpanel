import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class OutletInfo extends StatelessWidget {
  static String routeName = './outletinfo';
  OutletInfo({super.key});

  final Stream<QuerySnapshot> outletstream =
      FirebaseFirestore.instance.collection('OutletInfo').snapshots();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(title: const Text("Outlet Data"), centerTitle: true),
            body: StreamBuilder<QuerySnapshot>(
                stream: outletstream,
                builder: ((context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else {
                    final List outletdata = [];
                    snapshot.data?.docs.map((DocumentSnapshot document) {
                      Map bookdataold = document.data() as Map<String, dynamic>;
                      outletdata.add(bookdataold);
                      print(outletdata);
                    }).toList();
                    return Flexible(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: outletdata.length,
                            itemBuilder: (context, index) {
                              DocumentSnapshot document =
                                  snapshot.data!.docs[index];
                              return Padding(
                                padding: const EdgeInsets.all(12),
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        children: [
                                          const SizedBox(height: 10),
                                          buildOption(
                                            context,
                                            'Parent Name: ${document["name"]}',
                                          ),
                                          // buildOption(context,
                                          //     'Baby Name: ${document["babyName"]}'),
                                          // buildOption(context,
                                          //     'Mobile Number: ${document["phoneNumber"]}'),
                                          // buildOption(context,
                                          //     'Email Id: ${document["email"]}'),
                                          // buildOption(context,
                                          //     'Gender: ${document["babyGender"]}'),
                                          // buildOption(context,
                                          //     'Booking Start: ${DateFormat('dd-MM-yyyy : h:mm a').format(document["bookingStart"].toDate())}'),
                                          // buildOption(context,
                                          //     'Booking End: ${DateFormat('yyyy-MM-dd : h:mm a').format(document["bookingEnd"].toDate())}'),
                                          // buildOption(context,
                                          //     'Doctor Name: ${document["doctorName"]}'),
                                          const SizedBox(height: 5),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }));
                  }
                }))));
  }

  buildOption(
    BuildContext context,
    String title,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
