import 'package:cloud_firestore/cloud_firestore.dart';

Stream<QuerySnapshot> getPaidOrders() {
  return FirebaseFirestore.instance
      .collection('orders')
      .where('status', isEqualTo: 'paid')
      .snapshots();
}
