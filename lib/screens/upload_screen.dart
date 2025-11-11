// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import '../product_data/product_data.dart'; // chứa danh sách productList

// class UploadScreen extends StatelessWidget {
//   void uploadProducts() async {
//     final firestore = FirebaseFirestore.instance;

//     for (var product in productList) {
//       await firestore.collection('products').doc(product['id']).set(product);
//     }

//     print('✅ Đã upload xong 200 sản phẩm!');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Upload dữ liệu sản phẩm')),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: uploadProducts,
//           child: Text('Upload sản phẩm lên Firestore'),
//         ),
//       ),
//     );
//   }
// }
