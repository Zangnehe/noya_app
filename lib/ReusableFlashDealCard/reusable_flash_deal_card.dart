// import 'dart:async';
// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import '../models/product.dart';
// import '../provider/cart_provider.dart';

// class ReusableFlashDealCard extends StatefulWidget {
//   final Map<String, dynamic> item;
//   final CartProvider cart;

//   const ReusableFlashDealCard({
//     required this.item,
//     required this.cart,
//     super.key,
//   });

//   @override
//   State<ReusableFlashDealCard> createState() => _ReusableFlashDealCardState();
// }

// class _ReusableFlashDealCardState extends State<ReusableFlashDealCard> {
//   int? discountPercent;
//   Duration? remainingTime;
//   double? discountedPrice;
//   late double originalPrice;
//   bool isLoaded = false;
//   Timer? countdownTimer;

//   @override
//   void initState() {
//     super.initState();
//     originalPrice = (widget.item['price'] as num?)?.toDouble() ?? 0;
//     _loadDiscount();
//   }

//   Future<void> _loadDiscount() async {
//     final promo = widget.item['promotion'];
//     discountPercent = promo != null
//         ? _extractDiscountPercent(promo)
//         : await getDiscountPercent(widget.item['id'].toString());

//     final savedTime = await getDiscountStartTime(widget.item['id'].toString());
//     final endTime = savedTime.add(const Duration(hours: 4));
//     remainingTime = endTime.difference(DateTime.now());

//     discountedPrice = originalPrice * (1 - discountPercent! / 100.0);
//     isLoaded = true;

//     countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
//       final now = DateTime.now();
//       setState(() {
//         remainingTime = endTime.difference(now);
//         if (remainingTime!.isNegative) {
//           countdownTimer?.cancel();
//           remainingTime = Duration.zero;
//         }
//       });
//     });

//     setState(() {});
//   }

//   @override
//   void dispose() {
//     countdownTimer?.cancel();
//     super.dispose();
//   }

//   Future<DateTime> getDiscountStartTime(String productId) async {
//     final prefs = await SharedPreferences.getInstance();
//     final savedTime = prefs.getInt('discount_time_$productId');
//     return savedTime != null
//         ? DateTime.fromMillisecondsSinceEpoch(savedTime)
//         : DateTime.now();
//   }

//   Future<int> getDiscountPercent(String productId) async {
//     final prefs = await SharedPreferences.getInstance();
//     final key = 'discount_$productId';
//     final timeKey = 'discount_time_$productId';
//     final now = DateTime.now().millisecondsSinceEpoch;
//     const fourHours = 4 * 60 * 60 * 1000;

//     final saved = prefs.getInt(key);
//     final savedTime = prefs.getInt(timeKey);

//     if (saved != null && savedTime != null && now - savedTime < fourHours) {
//       return saved;
//     } else {
//       final newDiscount = Random().nextInt(30) + 5;
//       await prefs.setInt(key, newDiscount);
//       await prefs.setInt(timeKey, now);
//       return newDiscount;
//     }
//   }

//   int _extractDiscountPercent(String? promotion) {
//     if (promotion == null) return 0;
//     final match = RegExp(r'Giảm (\d+)%').firstMatch(promotion);
//     return match != null ? int.parse(match.group(1)!) : 0;
//   }

//   String formatCurrency(double value) {
//     final formatter = NumberFormat.currency(
//       locale: 'vi_VN',
//       symbol: 'đ',
//       decimalDigits: 0,
//     );
//     return formatter.format(value);
//   }

//   @override
//   Widget build(BuildContext context) {
//     final item = widget.item;
//     final name = item['name']?.toString() ?? 'Không rõ tên';
//     final id = item['id']?.toString() ?? '';
//     final brand = item['brand']?.toString() ?? '';
//     final type = item['type']?.toString() ?? '';
//     final imageUrl = item['image']?.toString();
//     final isValidImage =
//         imageUrl != null && Uri.tryParse(imageUrl)?.hasAbsolutePath == true;

//     if (!isLoaded ||
//         discountPercent == null ||
//         remainingTime == null ||
//         discountedPrice == null) {
//       return const Center(child: CircularProgressIndicator());
//     }

//     return SizedBox(
//       height: 280,
//       child: Card(
//         elevation: 3,
//         child: Column(
//           children: [
//             // Ảnh + nhãn giảm giá
//             Stack(
//               children: [
//                 isValidImage
//                     ? Image.network(
//                         imageUrl,
//                         fit: BoxFit.cover,
//                         width: double.infinity,
//                         height: 120,
//                       )
//                     : Container(
//                         height: 120,
//                         alignment: Alignment.center,
//                         child: const Icon(Icons.broken_image),
//                       ),
//                 if (discountPercent! > 0)
//                   Positioned(
//                     top: 8,
//                     right: 8,
//                     child: Container(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 6,
//                         vertical: 4,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Colors.red,
//                         borderRadius: BorderRadius.circular(4),
//                       ),
//                       child: Text(
//                         'Giảm ${discountPercent!}%',
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 12,
//                         ),
//                       ),
//                     ),
//                   ),
//               ],
//             ),

//             // Nội dung cuộn được
//             Expanded(
//               child: SingleChildScrollView(
//                 padding: const EdgeInsets.all(8),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(name, maxLines: 2, overflow: TextOverflow.ellipsis),
//                     const SizedBox(height: 4),
//                     if (discountPercent! > 0)
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             formatCurrency(originalPrice),
//                             style: const TextStyle(
//                               decoration: TextDecoration.lineThrough,
//                               color: Colors.grey,
//                               fontSize: 12,
//                             ),
//                           ),
//                           Text(
//                             formatCurrency(discountedPrice!),
//                             style: const TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: Colors.red,
//                               fontSize: 14,
//                             ),
//                           ),
//                         ],
//                       )
//                     else
//                       Text(
//                         formatCurrency(originalPrice),
//                         style: const TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 14,
//                         ),
//                       ),
//                     if (item['sold'] != null)
//                       Text(
//                         'Đã bán: ${item['sold']}',
//                         style: const TextStyle(fontSize: 12),
//                       ),
//                     Text(
//                       'Còn lại: ${remainingTime!.inHours.toString().padLeft(2, '0')}:${(remainingTime!.inMinutes % 60).toString().padLeft(2, '0')}:${(remainingTime!.inSeconds % 60).toString().padLeft(2, '0')}',
//                       style: const TextStyle(
//                         fontSize: 12,
//                         color: Colors.orange,
//                       ),
//                     ),
//                     Align(
//                       alignment: Alignment.centerRight,
//                       child: IconButton(
//                         icon: const Icon(Icons.add_shopping_cart),
//                         onPressed: () {
//                           widget.cart.addToCart(
//                             Product(
//                               id: id,
//                               name: name,
//                               brand: brand,
//                               type: type,
//                               price: originalPrice,
//                               discountPrice: discountPercent! > 0
//                                   ? discountedPrice
//                                   : null,
//                               image: imageUrl ?? '',
//                               promotion: item['promotion']?.toString(),
//                               quantity: 1,
//                             ),
//                           );
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             SnackBar(
//                               content: Text('$name đã thêm vào giỏ hàng'),
//                               duration: const Duration(seconds: 2),
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ReusableFlashDealCard extends StatelessWidget {
  final Map<String, dynamic> item;

  const ReusableFlashDealCard({required this.item, super.key});

  String formatCurrency(double value) {
    final formatter = NumberFormat.currency(
      locale: 'vi_VN',
      symbol: 'đ',
      decimalDigits: 0,
    );
    return formatter.format(value);
  }

  double _getPrice(dynamic value) {
    if (value is num) return value.toDouble();
    if (value is String) return double.tryParse(value) ?? 0.0;
    return 0.0;
  }

  @override
  Widget build(BuildContext context) {
    final name = item['name']?.toString() ?? 'Không rõ tên';
    final imageUrl = item['image']?.toString() ?? '';

    final originalPrice = _getPrice(item['originalPrice'] ?? item['price']);
    final discountPrice = _getPrice(item['discountPrice']);
    final hasDiscount = discountPrice > 0 && discountPrice < originalPrice;

    final discountPercent = hasDiscount
        ? ((1 - discountPrice / originalPrice) * 100).round()
        : 0;

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product_detail', arguments: item);
      },
      child: Card(
        color: const Color(0xFFF5F5F5), // ✅ trắng xám nổi bật
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12),
              ),
              child: Image.network(
                imageUrl,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(
                  height: 120,
                  color: Colors.grey[300],
                  child: const Center(child: Icon(Icons.image_not_supported)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4),

                  if (hasDiscount) ...[
                    Text(
                      'Giá gốc: ${formatCurrency(originalPrice)}',
                      style: const TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'Giá giảm: ${formatCurrency(discountPrice)}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Giảm $discountPercent%',
                      style: const TextStyle(color: Colors.green, fontSize: 12),
                    ),
                  ] else
                    Text(
                      'Giá: ${formatCurrency(originalPrice)}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
