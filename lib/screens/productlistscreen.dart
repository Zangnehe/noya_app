// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class ProductListScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Danh sách sản phẩm')),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: FirebaseFirestore.instance.collection('products').snapshots(),
//         builder: (context, snapshot) {
//           if (!snapshot.hasData)
//             return Center(child: CircularProgressIndicator());

//           final products = snapshot.data!.docs;

//           return ListView.builder(
//             itemCount: products.length,
//             itemBuilder: (context, index) {
//               final data = products[index].data() as Map<String, dynamic>;
//               return ListTile(
//                 leading: Image.network(
//                   data['image'],
//                   width: 50,
//                   height: 50,
//                   fit: BoxFit.cover,
//                 ),
//                 title: Text(data['name']),
//                 subtitle: Text('${data['brand']} - ${data['price']} đ'),
//                 trailing: data['promotion'] != null
//                     ? Text(data['promotion'])
//                     : null,
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }
