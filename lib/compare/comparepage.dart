// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import '../models/product.dart';

// class ComparePage extends StatelessWidget {
//   final Product productA;
//   final Product productB;
//   final Product? productC; // thêm sản phẩm thứ 3 tùy chọn

//   const ComparePage({
//     super.key,
//     required this.productA,
//     required this.productB,
//     this.productC,
//   });

//   String _formatCurrency(double value) {
//     final formatter = NumberFormat.currency(
//       locale: 'vi_VN',
//       symbol: 'đ',
//       decimalDigits: 0,
//     );
//     return formatter.format(value);
//   }

//   @override
//   Widget build(BuildContext context) {
//     final hasThird = productC != null;

//     // Tính giá hiệu lực
//     final prices = [
//       productA.discountPrice ?? productA.price,
//       productB.discountPrice ?? productB.price,
//       if (hasThird) productC!.discountPrice ?? productC!.price,
//     ];
//     final minPrice = prices.reduce((a, b) => a < b ? a : b);
//     final maxPrice = prices.reduce((a, b) => a > b ? a : b);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("So sánh sản phẩm"),
//         backgroundColor: const Color(0xFFBFAF9B),
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             // Hình ảnh sản phẩm
//             Row(
//               children: [
//                 Expanded(child: _buildImage(productA)),
//                 Expanded(child: _buildImage(productB)),
//                 if (hasThird) Expanded(child: _buildImage(productC!)),
//               ],
//             ),
//             const SizedBox(height: 20),

//             // Bảng so sánh chi tiết
//             Table(
//               border: TableBorder.all(color: Colors.grey),
//               columnWidths: hasThird
//                   ? const {
//                       0: FlexColumnWidth(2),
//                       1: FlexColumnWidth(3),
//                       2: FlexColumnWidth(3),
//                       3: FlexColumnWidth(3),
//                     }
//                   : const {
//                       0: FlexColumnWidth(2),
//                       1: FlexColumnWidth(3),
//                       2: FlexColumnWidth(3),
//                     },
//               children: [
//                 _buildRow(
//                   "Tên",
//                   productA.name,
//                   productB.name,
//                   c: hasThird ? productC!.name : null,
//                 ),
//                 _buildRow(
//                   "Thương hiệu",
//                   productA.brand ?? "-",
//                   productB.brand ?? "-",
//                   c: hasThird ? productC!.brand ?? "-" : null,
//                 ),
//                 _buildRow(
//                   "Loại",
//                   productA.type ?? "-",
//                   productB.type ?? "-",
//                   c: hasThird ? productC!.type ?? "-" : null,
//                 ),
//                 _buildRow(
//                   "Giá gốc",
//                   _formatCurrency(productA.originalPrice ?? productA.price),
//                   _formatCurrency(productB.originalPrice ?? productB.price),
//                   c: hasThird
//                       ? _formatCurrency(
//                           productC!.originalPrice ?? productC!.price,
//                         )
//                       : null,
//                 ),
//                 _buildRow(
//                   "Giá KM",
//                   productA.discountPrice != null
//                       ? _formatCurrency(productA.discountPrice!)
//                       : "-",
//                   productB.discountPrice != null
//                       ? _formatCurrency(productB.discountPrice!)
//                       : "-",
//                   c: hasThird
//                       ? (productC!.discountPrice != null
//                             ? _formatCurrency(productC!.discountPrice!)
//                             : "-")
//                       : null,
//                   highlight: true,
//                   minPrice: minPrice,
//                   maxPrice: maxPrice,
//                   values: [
//                     productA.discountPrice ?? productA.price,
//                     productB.discountPrice ?? productB.price,
//                     if (hasThird) productC!.discountPrice ?? productC!.price,
//                   ],
//                 ),
//                 _buildRow(
//                   "Khuyến mãi",
//                   productA.promotion ?? "-",
//                   productB.promotion ?? "-",
//                   c: hasThird ? productC!.promotion ?? "-" : null,
//                 ),
//                 // Xuất xứ
//                 _buildRow(
//                   "Xuất xứ",
//                   productA.specs?["Xuất xứ"] ?? "-",
//                   productB.specs?["Xuất xứ"] ?? "-",
//                   c: hasThird ? (productC!.specs?["Xuất xứ"] ?? "-") : null,
//                 ),

//                 // Dung tích
//                 _buildRow(
//                   "Dung tích",
//                   productA.specs?["Dung tích"] ?? "-",
//                   productB.specs?["Dung tích"] ?? "-",
//                   c: hasThird ? (productC!.specs?["Dung tích"] ?? "-") : null,
//                 ),

//                 _buildRow(
//                   "Số lượng tồn",
//                   "${productA.stockQuantity}",
//                   "${productB.stockQuantity}",
//                   c: hasThird ? "${productC!.stockQuantity}" : null,
//                 ),
//               ],
//             ),
//             const SizedBox(height: 20),

//             // Mô tả chi tiết
//             _buildDescription(
//               "Mô tả",
//               productA.description,
//               productB.description,
//               c: hasThird ? productC!.description : null,
//             ),
//             _buildDescription(
//               "Cách dùng",
//               productA.usage,
//               productB.usage,
//               c: hasThird ? productC!.usage : null,
//             ),

//             // Thành phần (ingredients)
//             _buildIngredients(
//               "Thành phần",
//               productA.ingredients,
//               productB.ingredients,
//               c: hasThird ? productC!.ingredients : null,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildImage(Product product) {
//     return Column(
//       children: [
//         ClipRRect(
//           borderRadius: BorderRadius.circular(12),
//           child: Image.network(
//             product.image,
//             width: 120,
//             height: 120,
//             fit: BoxFit.cover,
//             errorBuilder: (_, __, ___) =>
//                 const Icon(Icons.broken_image, size: 80),
//           ),
//         ),
//         const SizedBox(height: 8),
//         Text(
//           product.name,
//           maxLines: 2,
//           overflow: TextOverflow.ellipsis,
//           style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
//           textAlign: TextAlign.center,
//         ),
//       ],
//     );
//   }

//   TableRow _buildRow(
//     String title,
//     String a,
//     String b, {
//     String? c,
//     bool highlight = false,
//     double? minPrice,
//     double? maxPrice,
//     List<double>? values,
//   }) {
//     List<Widget> cells = [
//       Padding(
//         padding: const EdgeInsets.all(8),
//         child: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
//       ),
//       _buildCell(
//         a,
//         highlight,
//         values != null ? values[0] : null,
//         minPrice,
//         maxPrice,
//       ),
//       _buildCell(
//         b,
//         highlight,
//         values != null ? values[1] : null,
//         minPrice,
//         maxPrice,
//       ),
//     ];
//     if (c != null) {
//       cells.add(
//         _buildCell(
//           c,
//           highlight,
//           values != null ? values[2] : null,
//           minPrice,
//           maxPrice,
//         ),
//       );
//     }
//     return TableRow(children: cells);
//   }

//   Widget _buildCell(
//     String text,
//     bool highlight,
//     double? value,
//     double? minPrice,
//     double? maxPrice,
//   ) {
//     Color? color;
//     if (highlight && value != null) {
//       if (value == minPrice) color = Colors.green;
//       if (value == maxPrice) color = Colors.red;
//     }
//     return Padding(
//       padding: const EdgeInsets.all(8),
//       child: Text(text, style: TextStyle(color: color)),
//     );
//   }

//   Widget _buildDescription(String title, String? a, String? b, {String? c}) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           title,
//           style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//         ),
//         const SizedBox(height: 8),
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Expanded(
//               child: Text(a ?? "-", style: const TextStyle(fontSize: 13)),
//             ),
//             const SizedBox(width: 12),
//             Expanded(
//               child: Text(b ?? "-", style: const TextStyle(fontSize: 13)),
//             ),
//             if (c != null) ...[
//               const SizedBox(width: 12),
//               Expanded(child: Text(c, style: const TextStyle(fontSize: 13))),
//             ],
//           ],
//         ),
//         const SizedBox(height: 16),
//       ],
//     );
//   }

//   Widget _buildIngredients(
//     String title,
//     List<String>? a,
//     List<String>? b, {
//     List<String>? c,
//   }) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           title,
//           style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//         ),
//         const SizedBox(height: 8),
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children:
//                     a
//                         ?.map(
//                           (ing) => Text(
//                             "• $ing",
//                             style: const TextStyle(fontSize: 13),
//                           ),
//                         )
//                         .toList() ??
//                     [const Text("-")],
//               ),
//             ),
//             const SizedBox(width: 12),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children:
//                     b
//                         ?.map(
//                           (ing) => Text(
//                             "• $ing",
//                             style: const TextStyle(fontSize: 13),
//                           ),
//                         )
//                         .toList() ??
//                     [const Text("-")],
//               ),
//             ),
//             if (c != null) ...[
//               const SizedBox(width: 12),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: c
//                       .map(
//                         (ing) => Text(
//                           "• $ing",
//                           style: const TextStyle(fontSize: 13),
//                         ),
//                       )
//                       .toList(),
//                 ),
//               ),
//             ],
//           ],
//         ),
//         const SizedBox(height: 16),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/product.dart';

class ComparePage extends StatelessWidget {
  final Product productA;
  final Product productB;
  final Product? productC; // thêm sản phẩm thứ 3 tùy chọn

  const ComparePage({
    super.key,
    required this.productA,
    required this.productB,
    this.productC,
  });

  String _formatCurrency(double value) {
    final formatter = NumberFormat.currency(
      locale: 'vi_VN',
      symbol: 'đ',
      decimalDigits: 0,
    );
    return formatter.format(value);
  }

  /// Helper lấy specs an toàn
  String _specOf(Product p, String key) => p.specs?[key] ?? "-";
  String _specOfNullable(Product? p, String key) => p?.specs?[key] ?? "-";

  /// Helper hiển thị list
  String _listToText(List<String>? list) {
    if (list == null || list.isEmpty) return "-";
    return list.join(', ');
  }

  /// Helper hiển thị điểm gợi ý
  String _scoreToText(int? score) {
    return score != null ? score.toString() : "-";
  }

  @override
  Widget build(BuildContext context) {
    final hasThird = productC != null;

    // Tính giá hiệu lực
    final prices = [
      productA.discountPrice ?? productA.price,
      productB.discountPrice ?? productB.price,
      if (hasThird) productC!.discountPrice ?? productC!.price,
    ];
    final minPrice = prices.reduce((a, b) => a < b ? a : b);
    final maxPrice = prices.reduce((a, b) => a > b ? a : b);

    return Scaffold(
      appBar: AppBar(
        title: const Text("So sánh sản phẩm"),
        backgroundColor: const Color(0xFFBFAF9B),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Hình ảnh sản phẩm
            Row(
              children: [
                Expanded(child: _buildImage(productA)),
                Expanded(child: _buildImage(productB)),
                if (hasThird) Expanded(child: _buildImage(productC!)),
              ],
            ),
            const SizedBox(height: 20),

            // Bảng so sánh chi tiết
            Table(
              border: TableBorder.all(color: Colors.grey),
              columnWidths: hasThird
                  ? const {
                      0: FlexColumnWidth(2),
                      1: FlexColumnWidth(3),
                      2: FlexColumnWidth(3),
                      3: FlexColumnWidth(3),
                    }
                  : const {
                      0: FlexColumnWidth(2),
                      1: FlexColumnWidth(3),
                      2: FlexColumnWidth(3),
                    },
              children: [
                _buildRow(
                  "Tên",
                  productA.name,
                  productB.name,
                  c: hasThird ? productC!.name : null,
                ),
                _buildRow(
                  "Thương hiệu",
                  productA.brand ?? "-",
                  productB.brand ?? "-",
                  c: hasThird ? productC!.brand ?? "-" : null,
                ),
                _buildRow(
                  "Loại",
                  productA.type ?? "-",
                  productB.type ?? "-",
                  c: hasThird ? productC!.type ?? "-" : null,
                ),
                _buildRow(
                  "Giá gốc",
                  _formatCurrency(productA.originalPrice ?? productA.price),
                  _formatCurrency(productB.originalPrice ?? productB.price),
                  c: hasThird
                      ? _formatCurrency(
                          productC!.originalPrice ?? productC!.price,
                        )
                      : null,
                ),
                _buildRow(
                  "Giá KM",
                  productA.discountPrice != null
                      ? _formatCurrency(productA.discountPrice!)
                      : "-",
                  productB.discountPrice != null
                      ? _formatCurrency(productB.discountPrice!)
                      : "-",
                  c: hasThird
                      ? (productC!.discountPrice != null
                            ? _formatCurrency(productC!.discountPrice!)
                            : "-")
                      : null,
                  highlight: true,
                  minPrice: minPrice,
                  maxPrice: maxPrice,
                  values: [
                    productA.discountPrice ?? productA.price,
                    productB.discountPrice ?? productB.price,
                    if (hasThird) productC!.discountPrice ?? productC!.price,
                  ],
                ),
                _buildRow(
                  "Khuyến mãi",
                  productA.promotion ?? "-",
                  productB.promotion ?? "-",
                  c: hasThird ? productC!.promotion ?? "-" : null,
                ),
                _buildRow(
                  "Xuất xứ",
                  _specOf(productA, "Xuất xứ"),
                  _specOf(productB, "Xuất xứ"),
                  c: hasThird ? _specOfNullable(productC, "Xuất xứ") : null,
                ),
                _buildRow(
                  "Dung tích",
                  _specOf(productA, "Dung tích"),
                  _specOf(productB, "Dung tích"),
                  c: hasThird ? _specOfNullable(productC, "Dung tích") : null,
                ),
                _buildRow(
                  "Số lượng tồn",
                  "${productA.stockQuantity}",
                  "${productB.stockQuantity}",
                  c: hasThird ? "${productC!.stockQuantity}" : null,
                ),

                // Các thuộc tính mới
                _buildRow(
                  "Loại da phù hợp",
                  _listToText(productA.skinTypeTags),
                  _listToText(productB.skinTypeTags),
                  c: hasThird ? _listToText(productC!.skinTypeTags) : null,
                ),
                _buildRow(
                  "Vấn đề da",
                  _listToText(productA.skinConcerns),
                  _listToText(productB.skinConcerns),
                  c: hasThird ? _listToText(productC!.skinConcerns) : null,
                ),
                _buildRow(
                  "Điểm gợi ý",
                  _scoreToText(productA.recommendationScore),
                  _scoreToText(productB.recommendationScore),
                  c: hasThird
                      ? _scoreToText(productC!.recommendationScore)
                      : null,
                ),
                _buildRow(
                  "Nhóm tuổi",
                  _listToText(productA.ageGroup),
                  _listToText(productB.ageGroup),
                  c: hasThird ? _listToText(productC!.ageGroup) : null,
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Mô tả chi tiết
            _buildDescription(
              "Mô tả",
              productA.description,
              productB.description,
              c: hasThird ? productC!.description : null,
            ),
            _buildDescription(
              "Cách dùng",
              productA.usage,
              productB.usage,
              c: hasThird ? productC!.usage : null,
            ),

            // Thành phần
            _buildIngredients(
              "Thành phần",
              productA.ingredients,
              productB.ingredients,
              c: hasThird ? productC!.ingredients : null,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage(Product product) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            product.image,
            width: 120,
            height: 120,
            fit: BoxFit.cover,
            errorBuilder: (_, __, ___) =>
                const Icon(Icons.broken_image, size: 80),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          product.name,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  TableRow _buildRow(
    String title,
    String a,
    String b, {
    String? c,
    bool highlight = false,
    double? minPrice,
    double? maxPrice,
    List<double>? values,
  }) {
    List<Widget> cells = [
      Padding(
        padding: const EdgeInsets.all(8),
        child: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
      _buildCell(
        a,
        highlight,
        values != null ? values[0] : null,
        minPrice,
        maxPrice,
      ),
      _buildCell(
        b,
        highlight,
        values != null ? values[1] : null,
        minPrice,
        maxPrice,
      ),
    ];
    if (c != null) {
      cells.add(
        _buildCell(
          c,
          highlight,
          values != null ? values[2] : null,
          minPrice,
          maxPrice,
        ),
      );
    }
    return TableRow(children: cells);
  }

  Widget _buildCell(
    String text,
    bool highlight,
    double? value,
    double? minPrice,
    double? maxPrice,
  ) {
    Color? color;
    if (highlight && value != null) {
      if (value == minPrice) color = Colors.green;
      if (value == maxPrice) color = Colors.red;
    }
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Text(text, style: TextStyle(color: color)),
    );
  }

  Widget _buildDescription(String title, String? a, String? b, {String? c}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(a ?? "-", style: const TextStyle(fontSize: 13)),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(b ?? "-", style: const TextStyle(fontSize: 13)),
            ),
            if (c != null) ...[
              const SizedBox(width: 12),
              Expanded(child: Text(c, style: const TextStyle(fontSize: 13))),
            ],
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _buildIngredients(
    String title,
    List<String>? a,
    List<String>? b, {
    List<String>? c,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                    a
                        ?.map(
                          (ing) => Text(
                            "• $ing",
                            style: const TextStyle(fontSize: 13),
                          ),
                        )
                        .toList() ??
                    [const Text("-")],
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                    b
                        ?.map(
                          (ing) => Text(
                            "• $ing",
                            style: const TextStyle(fontSize: 13),
                          ),
                        )
                        .toList() ??
                    [const Text("-")],
              ),
            ),
            if (c != null) ...[
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: c
                      .map(
                        (ing) => Text(
                          "• $ing",
                          style: const TextStyle(fontSize: 13),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
