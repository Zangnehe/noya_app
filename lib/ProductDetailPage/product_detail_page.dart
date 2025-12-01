// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:provider/provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:share_plus/share_plus.dart';
// import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

// import '../models/product.dart';
// import '../provider/cart_provider.dart';
// import 'favorite_provider.dart';
// import '../product_data/product_data.dart';

// class ProductDetailPage extends StatefulWidget {
//   final Product product;
//   const ProductDetailPage({Key? key, required this.product}) : super(key: key);

//   static const Color themeColor = Color(0xFFBFAF9B);

//   @override
//   State<ProductDetailPage> createState() => _ProductDetailPageState();
// }

// class _ProductDetailPageState extends State<ProductDetailPage> {
//   bool isFavorite = false;

//   @override
//   void initState() {
//     super.initState();
//     _loadFavorite();
//   }

//   Future<void> _loadFavorite() async {
//     final prefs = await SharedPreferences.getInstance();
//     setState(() {
//       isFavorite = prefs.getBool('favorite_${widget.product.id}') ?? false;
//     });
//   }

//   Future<void> _toggleFavorite(FavoriteProvider favorites) async {
//     final prefs = await SharedPreferences.getInstance();
//     setState(() {
//       isFavorite = !isFavorite;
//     });
//     await prefs.setBool('favorite_${widget.product.id}', isFavorite);

//     if (isFavorite) {
//       favorites.addFavorite(widget.product);
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text(' Đã thêm ${widget.product.name} vào yêu thích'),
//           backgroundColor: Colors.redAccent,
//         ),
//       );
//     } else {
//       favorites.removeFavorite(widget.product.id);
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text(' Đã bỏ ${widget.product.name} khỏi yêu thích'),
//           backgroundColor: Colors.redAccent,
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final formatter = NumberFormat.currency(
//       locale: 'vi_VN',
//       symbol: 'đ',
//       decimalDigits: 0,
//     );

//     final originalPrice = widget.product.originalPrice ?? widget.product.price;
//     final discountPrice = widget.product.discountPrice;

//     // ✅ Kiểm tra trạng thái giảm giá
//     final isDiscountActive =
//         widget.product.isDiscountActive == true &&
//         widget.product.promotionStart != null &&
//         widget.product.promotionEnd != null;

//     final now = DateTime.now();
//     final promotionEnd = widget.product.promotionEnd;
//     final isExpired = promotionEnd != null && now.isAfter(promotionEnd);

//     final hasDiscount =
//         !isExpired &&
//         isDiscountActive &&
//         discountPrice != null &&
//         discountPrice < originalPrice;

//     final displayedPrice = hasDiscount ? discountPrice! : originalPrice;
//     final discountPercent = hasDiscount
//         ? (((originalPrice - discountPrice!) / originalPrice) * 100).round()
//         : null;

//     final cart = Provider.of<CartProvider>(context, listen: false);
//     final favorites = Provider.of<FavoriteProvider>(context, listen: false);

//     return Scaffold(
//       backgroundColor: Colors.grey[50],
//       appBar: AppBar(
//         backgroundColor: ProductDetailPage.themeColor,
//         title: Text(
//           widget.product.name,
//           style: const TextStyle(fontWeight: FontWeight.bold),
//         ),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.share),
//             onPressed: () {
//               Share.share(
//                 'Xem sản phẩm ${widget.product.name} tại link: ${widget.product.image}',
//               );
//             },
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Hero(
//               tag: widget.product.id,
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(16),
//                 child: Image.network(
//                   widget.product.image,
//                   height: 280,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),

//             Text(
//               widget.product.name,
//               style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             // ✅ Hiển thị Loại da phù hợp
//             if (widget.product.skinTypeTags != null &&
//                 widget.product.skinTypeTags!.isNotEmpty)
//               _buildHorizontalTags(
//                 "Loại da phù hợp",
//                 widget.product.skinTypeTags!,
//               ),

//             // ✅ Hiển thị Vấn đề da
//             if (widget.product.skinConcerns != null &&
//                 widget.product.skinConcerns!.isNotEmpty)
//               _buildHorizontalTags("Vấn đề da", widget.product.skinConcerns!),
//             const SizedBox(height: 4),
//             Text(
//               'Thương hiệu: ${widget.product.brand ?? "Không rõ"}',
//               style: const TextStyle(color: Colors.black54),
//             ),
//             Text(
//               'Loại: ${widget.product.type ?? "Không rõ"}',
//               style: const TextStyle(color: Colors.black54),
//             ),
//             // Text(
//             //   'Danh mục: ${widget.product.category ?? "Không rõ"}',
//             //   style: const TextStyle(color: Colors.black54),
//             // ),

//             // const SizedBox(height: 12),

//             // ✅ Hiển thị giá: nếu hết hạn thì chỉ hiện giá gốc
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     if (hasDiscount)
//                       Text(
//                         formatter.format(originalPrice),
//                         style: const TextStyle(
//                           fontSize: 16,
//                           color: Colors.grey,
//                           decoration: TextDecoration.lineThrough,
//                         ),
//                       ),
//                     if (hasDiscount) const SizedBox(width: 8),
//                     Text(
//                       formatter.format(displayedPrice),
//                       style: const TextStyle(
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold,
//                         color: ProductDetailPage.themeColor,
//                       ),
//                     ),
//                     if (hasDiscount) const SizedBox(width: 8),
//                     if (hasDiscount)
//                       Container(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 6,
//                           vertical: 2,
//                         ),
//                         decoration: BoxDecoration(
//                           color: Colors.redAccent,
//                           borderRadius: BorderRadius.circular(6),
//                         ),
//                         child: Text(
//                           '-$discountPercent%',
//                           style: const TextStyle(
//                             color: Colors.white,
//                             fontSize: 13,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                   ],
//                 ),

//                 // Countdown chỉ hiển thị khi khuyến mãi còn hạn
//                 if (hasDiscount && widget.product.promotionEnd != null)
//                   Padding(
//                     padding: const EdgeInsets.only(top: 6),
//                     child: CountdownTimer(
//                       endTime:
//                           widget.product.promotionEnd!.millisecondsSinceEpoch,
//                       textStyle: const TextStyle(
//                         fontSize: 14,
//                         color: Colors.red,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),

//                 // Chip khuyến mãi chỉ hiển thị khi còn hạn
//                 if (widget.product.promotion != null && !isExpired)
//                   Padding(
//                     padding: const EdgeInsets.only(top: 6),
//                     child: Chip(
//                       backgroundColor: ProductDetailPage.themeColor.withOpacity(
//                         0.2,
//                       ),
//                       label: Text(
//                         widget.product.promotion!,
//                         style: const TextStyle(
//                           color: ProductDetailPage.themeColor,
//                         ),
//                       ),
//                     ),
//                   ),

//                 Padding(
//                   padding: const EdgeInsets.only(top: 6),
//                   child: Text(
//                     'Số lượng còn: ${widget.product.stockQuantity}',
//                     style: const TextStyle(
//                       fontSize: 14,
//                       color: Colors.black87,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//               ],
//             ),

//             const Divider(height: 32),

//             _buildSection('Mô tả', widget.product.description),
//             _buildSpecsSection(widget.product.specs),
//             _buildListSection('Thành phần', widget.product.ingredients),
//             _buildSection('Hướng dẫn sử dụng', widget.product.usage),

//             const SizedBox(height: 20),

//             _buildSimilarProductsSection(
//               productData
//                   .where(
//                     (p) =>
//                         p.type == widget.product.type &&
//                         p.id != widget.product.id,
//                   )
//                   .toList(),
//             ),
//           ],
//         ),
//       ),

//       // ✅ Nút thêm giỏ hàng và yêu thích
//       bottomNavigationBar: Container(
//         padding: const EdgeInsets.all(12),
//         decoration: const BoxDecoration(
//           color: Colors.white,
//           boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
//         ),
//         child: Row(
//           children: [
//             Expanded(
//               child: ElevatedButton.icon(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: ProductDetailPage.themeColor,
//                   foregroundColor: Colors.white,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   padding: const EdgeInsets.symmetric(vertical: 14),
//                 ),
//                 onPressed: () {
//                   cart.addToCart(widget.product);
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(
//                       content: Text(
//                         '${widget.product.name} đã thêm vào giỏ hàng',
//                       ),
//                       backgroundColor: ProductDetailPage.themeColor,
//                     ),
//                   );
//                 },
//                 icon: const Icon(Icons.shopping_cart_outlined),
//                 label: const Text('Thêm vào giỏ'),
//               ),
//             ),
//             const SizedBox(width: 12),
//             Expanded(
//               child: ElevatedButton.icon(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.redAccent,
//                   foregroundColor: Colors.white,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   padding: const EdgeInsets.symmetric(vertical: 14),
//                 ),
//                 onPressed: () => _toggleFavorite(favorites),
//                 icon: Icon(
//                   isFavorite ? Icons.favorite : Icons.favorite_border,
//                   color: Colors.white,
//                 ),
//                 label: const Text('Yêu thích'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   /// Hiển thị một section dạng ExpansionTile
//   Widget _buildSection(String title, String? content) {
//     return Card(
//       margin: const EdgeInsets.symmetric(vertical: 8),
//       elevation: 2,
//       child: ExpansionTile(
//         title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(12),
//             child: Text(
//               content?.trim().isNotEmpty == true
//                   ? content!
//                   : 'Không có dữ liệu',
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   /// Hiển thị thông số kỹ thuật
//   Widget _buildSpecsSection(Map<String, String>? specs) {
//     if (specs == null || specs.isEmpty) {
//       return _buildSection(' Thông số kỹ thuật', 'Không có dữ liệu');
//     }
//     return Card(
//       margin: const EdgeInsets.symmetric(vertical: 8),
//       elevation: 2,
//       child: ExpansionTile(
//         title: const Text(
//           ' Thông số kỹ thuật',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         children: specs.entries
//             .map((e) => ListTile(title: Text('${e.key}: ${e.value}')))
//             .toList(),
//       ),
//     );
//   }

//   /// Hiển thị danh sách (thành phần, hướng dẫn…)
//   Widget _buildListSection(String title, List<String>? items) {
//     if (items == null || items.isEmpty) {
//       return _buildSection(title, 'Không có dữ liệu');
//     }
//     return Card(
//       margin: const EdgeInsets.symmetric(vertical: 8),
//       elevation: 2,
//       child: ExpansionTile(
//         title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
//         children: items.map((item) => ListTile(title: Text(item))).toList(),
//       ),
//     );
//   }

//   Widget _buildHorizontalTags(String title, List<String> tags) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           title,
//           style: const TextStyle(
//             fontSize: 14,
//             fontWeight: FontWeight.bold,
//             color: Colors.black87,
//           ),
//         ),
//         const SizedBox(height: 4),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: tags.map((tag) {
//               return Padding(
//                 padding: const EdgeInsets.only(right: 6),
//                 child: Chip(
//                   label: Text(tag),
//                   backgroundColor: ProductDetailPage.themeColor.withOpacity(
//                     0.2,
//                   ),
//                   labelStyle: const TextStyle(
//                     color: ProductDetailPage.themeColor,
//                   ),
//                 ),
//               );
//             }).toList(),
//           ),
//         ),
//       ],
//     );
//   }

//   /// Hiển thị sản phẩm tương tự (giống Flash Deals đầy đủ thông tin)
//   Widget _buildSimilarProductsSection(List<Product> products) {
//     if (products.isEmpty) return const SizedBox.shrink();

//     final formatter = NumberFormat.currency(
//       locale: 'vi_VN',
//       symbol: 'đ',
//       decimalDigits: 0,
//     );

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text(
//           '🔎 Sản phẩm tương tự',
//           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(height: 12),
//         SizedBox(
//           height: 280,
//           child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: products.length,
//             itemBuilder: (context, index) {
//               final p = products[index];
//               final originalPrice = p.originalPrice ?? p.price;
//               final discountPrice = p.discountPrice;

//               // ✅ Kiểm tra trạng thái giảm giá
//               final isDiscountActive =
//                   p.isDiscountActive == true &&
//                   p.promotionStart != null &&
//                   p.promotionEnd != null;

//               // ✅ Kiểm tra hết hạn khuyến mãi
//               final now = DateTime.now();
//               final isExpired =
//                   p.promotionEnd != null && now.isAfter(p.promotionEnd!);

//               final hasDiscount =
//                   !isExpired &&
//                   isDiscountActive &&
//                   discountPrice != null &&
//                   discountPrice < originalPrice;

//               final displayedPrice = hasDiscount
//                   ? discountPrice!
//                   : originalPrice;
//               final discountPercent = hasDiscount
//                   ? (((originalPrice - discountPrice!) / originalPrice) * 100)
//                         .round()
//                   : 0;

//               final endTime = hasDiscount && p.promotionEnd != null
//                   ? p.promotionEnd!.millisecondsSinceEpoch
//                   : null;

//               return GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (_) => ProductDetailPage(product: p),
//                     ),
//                   );
//                 },
//                 child: Container(
//                   width: 180,
//                   margin: const EdgeInsets.only(right: 12),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(12),
//                     boxShadow: const [
//                       BoxShadow(color: Colors.black12, blurRadius: 6),
//                     ],
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         ClipRRect(
//                           borderRadius: const BorderRadius.vertical(
//                             top: Radius.circular(12),
//                           ),
//                           child: Stack(
//                             children: [
//                               Image.network(
//                                 p.image,
//                                 height: 120,
//                                 width: double.infinity,
//                                 fit: BoxFit.cover,
//                               ),
//                               if (hasDiscount)
//                                 Positioned(
//                                   top: 6,
//                                   right: 6,
//                                   child: Container(
//                                     padding: const EdgeInsets.symmetric(
//                                       horizontal: 6,
//                                       vertical: 3,
//                                     ),
//                                     decoration: BoxDecoration(
//                                       color: Colors.redAccent,
//                                       borderRadius: BorderRadius.circular(6),
//                                     ),
//                                     child: Text(
//                                       '-$discountPercent%',
//                                       style: const TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 11,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(height: 6),
//                         Text(
//                           p.name,
//                           maxLines: 2,
//                           overflow: TextOverflow.ellipsis,
//                           style: const TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 14,
//                           ),
//                         ),
//                         const SizedBox(height: 4),
//                         Row(
//                           children: [
//                             if (hasDiscount)
//                               Text(
//                                 formatter.format(originalPrice),
//                                 style: const TextStyle(
//                                   fontSize: 12,
//                                   color: Colors.grey,
//                                   decoration: TextDecoration.lineThrough,
//                                 ),
//                               ),
//                             if (hasDiscount) const SizedBox(width: 4),
//                             Text(
//                               formatter.format(displayedPrice),
//                               style: TextStyle(
//                                 fontSize: 13,
//                                 fontWeight: FontWeight.bold,
//                                 color: hasDiscount
//                                     ? Colors.red
//                                     : ProductDetailPage.themeColor,
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 5),
//                         if (hasDiscount)
//                           Text(
//                             'Giảm $discountPercent% so với giá gốc',
//                             style: const TextStyle(
//                               fontSize: 12,
//                               color: Colors.green,
//                               fontStyle: FontStyle.italic,
//                             ),
//                           ),
//                         const SizedBox(height: 5),
//                         Text(
//                           'Còn ${p.stockQuantity} sp',
//                           style: const TextStyle(
//                             fontSize: 12,
//                             color: Colors.grey,
//                           ),
//                         ),
//                         const SizedBox(height: 4),
//                         if (hasDiscount && endTime != null)
//                           CountdownTimer(
//                             endTime: endTime,
//                             textStyle: const TextStyle(
//                               fontSize: 12,
//                               color: Colors.red,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         // ❌ Không còn dòng "Khuyến mãi đã kết thúc"
//                       ],
//                     ),
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

import '../models/product.dart';
import '../provider/cart_provider.dart';
import 'favorite_provider.dart';
import '../product_data/product_data.dart';

class ProductDetailPage extends StatefulWidget {
  final Product product;
  const ProductDetailPage({Key? key, required this.product}) : super(key: key);

  static const Color themeColor = Color(0xFFBFAF9B);

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    _loadFavorite();
  }

  Future<void> _loadFavorite() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      isFavorite = prefs.getBool('favorite_${widget.product.id}') ?? false;
    });
  }

  Future<void> _toggleFavorite(FavoriteProvider favorites) async {
    final prefs = await SharedPreferences.getInstance();
    setState(() => isFavorite = !isFavorite);
    await prefs.setBool('favorite_${widget.product.id}', isFavorite);

    if (isFavorite) {
      favorites.addFavorite(widget.product);
    } else {
      favorites.removeFavorite(widget.product.id);
    }

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            isFavorite
                ? 'Đã thêm ${widget.product.name} vào yêu thích'
                : 'Đã bỏ ${widget.product.name} khỏi yêu thích',
          ),
          backgroundColor: Colors.redAccent,
        ),
      );
  }

  Map<String, dynamic> _calculatePrice(Product p) {
    final originalPrice = p.originalPrice ?? p.price;
    final discountPrice = p.discountPrice;
    final now = DateTime.now();

    final isDiscountActive =
        p.isDiscountActive == true &&
        p.promotionStart != null &&
        p.promotionEnd != null;

    final isExpired = p.promotionEnd != null && now.isAfter(p.promotionEnd!);

    final hasDiscount =
        !isExpired &&
        isDiscountActive &&
        discountPrice != null &&
        discountPrice < originalPrice;

    final displayedPrice = hasDiscount ? discountPrice! : originalPrice;
    final discountPercent = hasDiscount
        ? (((originalPrice - discountPrice!) / originalPrice) * 100).round()
        : null;

    return {
      'originalPrice': originalPrice,
      'displayedPrice': displayedPrice,
      'hasDiscount': hasDiscount,
      'discountPercent': discountPercent,
      'isExpired': isExpired,
    };
  }

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat.currency(
      locale: 'vi_VN',
      symbol: 'đ',
      decimalDigits: 0,
    );

    final priceInfo = _calculatePrice(widget.product);
    final cart = Provider.of<CartProvider>(context, listen: false);
    final favorites = Provider.of<FavoriteProvider>(context, listen: false);

    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: ProductDetailPage.themeColor,
        title: Text(
          widget.product.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {
              Share.share(
                'Xem sản phẩm ${widget.product.name} tại link: ${widget.product.image}',
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: widget.product.id,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  widget.product.image,
                  height: 280,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              widget.product.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            if (widget.product.skinTypeTags?.isNotEmpty == true)
              _buildHorizontalTags(
                "Loại da phù hợp",
                widget.product.skinTypeTags ?? [],
              ),

            if (widget.product.skinConcerns?.isNotEmpty == true)
              _buildHorizontalTags(
                "Vấn đề da",
                widget.product.skinConcerns ?? [],
              ),

            const SizedBox(height: 4),
            Text(
              'Thương hiệu: ${widget.product.brand ?? "Không rõ"}',
              style: const TextStyle(color: Colors.black54),
            ),
            Text(
              'Loại: ${widget.product.type ?? "Không rõ"}',
              style: const TextStyle(color: Colors.black54),
            ),

            const SizedBox(height: 12),

            // ✅ Hiển thị giá
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (priceInfo['hasDiscount'])
                  Text(
                    formatter.format(priceInfo['originalPrice']),
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                if (priceInfo['hasDiscount']) const SizedBox(width: 8),
                Text(
                  formatter.format(priceInfo['displayedPrice']),
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: ProductDetailPage.themeColor,
                  ),
                ),
                if (priceInfo['hasDiscount']) const SizedBox(width: 8),
                if (priceInfo['hasDiscount'])
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      '-${priceInfo['discountPercent']}%',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ],
            ),

            if (priceInfo['hasDiscount'] && widget.product.promotionEnd != null)
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: CountdownTimer(
                  endTime: widget.product.promotionEnd!.millisecondsSinceEpoch,
                  textStyle: const TextStyle(
                    fontSize: 14,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Text(
                'Số lượng còn: ${widget.product.stockQuantity}',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            const Divider(height: 32),

            _buildSection('Mô tả', widget.product.description),
            _buildSpecsSection(widget.product.specs),
            _buildListSection('Thành phần', widget.product.ingredients),
            _buildSection('Hướng dẫn sử dụng', widget.product.usage),

            const SizedBox(height: 20),

            _buildSimilarProductsSection(
              productData
                  .where(
                    (p) =>
                        p.type == widget.product.type &&
                        p.id != widget.product.id,
                  )
                  .toList(),
            ),
          ],
        ),
      ),

      // ✅ Nút thêm giỏ hàng và yêu thích
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
        ),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ProductDetailPage.themeColor,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                onPressed: () {
                  cart.addToCart(widget.product);
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      SnackBar(
                        content: Text(
                          '${widget.product.name} đã thêm vào giỏ hàng',
                        ),
                        backgroundColor: ProductDetailPage.themeColor,
                      ),
                    );
                },
                icon: const Icon(Icons.shopping_cart_outlined),
                label: const Text('Thêm vào giỏ'),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                onPressed: () => _toggleFavorite(favorites),
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: Colors.white,
                ),
                label: const Text('Yêu thích'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Hiển thị một section dạng ExpansionTile
  Widget _buildSection(String title, String? content) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 2,
      child: ExpansionTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              content?.trim().isNotEmpty == true
                  ? content!
                  : 'Không có dữ liệu',
            ),
          ),
        ],
      ),
    );
  }

  /// Hiển thị thông số kỹ thuật
  Widget _buildSpecsSection(Map<String, String>? specs) {
    if (specs == null || specs.isEmpty) {
      return _buildSection('Thông số kỹ thuật', 'Không có dữ liệu');
    }
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 2,
      child: ExpansionTile(
        title: const Text(
          'Thông số kỹ thuật',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        children: specs.entries
            .map((e) => ListTile(title: Text('${e.key}: ${e.value}')))
            .toList(),
      ),
    );
  }

  /// Hiển thị danh sách (thành phần, hướng dẫn…)
  Widget _buildListSection(String title, List<String>? items) {
    if (items == null || items.isEmpty) {
      return _buildSection(title, 'Không có dữ liệu');
    }
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 2,
      child: ExpansionTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        children: items.map((item) => ListTile(title: Text(item))).toList(),
      ),
    );
  }

  Widget _buildHorizontalTags(String title, List<String> tags) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 4),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: tags.map((tag) {
              return Padding(
                padding: const EdgeInsets.only(right: 6),
                child: Chip(
                  label: Text(tag),
                  backgroundColor: ProductDetailPage.themeColor.withOpacity(
                    0.2,
                  ),
                  labelStyle: const TextStyle(
                    color: ProductDetailPage.themeColor,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  /// Hiển thị sản phẩm tương tự
  Widget _buildSimilarProductsSection(List<Product> products) {
    if (products.isEmpty) return const SizedBox.shrink();

    final formatter = NumberFormat.currency(
      locale: 'vi_VN',
      symbol: 'đ',
      decimalDigits: 0,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '🔎 Sản phẩm tương tự',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 280,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              final p = products[index];
              final priceInfo = _calculatePrice(p);

              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ProductDetailPage(product: p),
                    ),
                  );
                },
                child: Container(
                  width: 180,
                  margin: const EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(color: Colors.black12, blurRadius: 6),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(12),
                          ),
                          child: Stack(
                            children: [
                              Image.network(
                                p.image,
                                height: 120,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                              if (priceInfo['hasDiscount'])
                                Positioned(
                                  top: 6,
                                  right: 6,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 6,
                                      vertical: 3,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.redAccent,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Text(
                                      '-${priceInfo['discountPercent']}%',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          p.name,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            if (priceInfo['hasDiscount'])
                              Text(
                                formatter.format(priceInfo['originalPrice']),
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            if (priceInfo['hasDiscount'])
                              const SizedBox(width: 4),
                            Text(
                              formatter.format(priceInfo['displayedPrice']),
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: priceInfo['hasDiscount']
                                    ? Colors.red
                                    : ProductDetailPage.themeColor,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Còn ${p.stockQuantity} sp',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        if (priceInfo['hasDiscount'] && p.promotionEnd != null)
                          CountdownTimer(
                            endTime: p.promotionEnd!.millisecondsSinceEpoch,
                            textStyle: const TextStyle(
                              fontSize: 12,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
