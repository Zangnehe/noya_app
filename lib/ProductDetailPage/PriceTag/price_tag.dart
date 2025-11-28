import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../product_detail_page.dart'; // để dùng themeColor

class PriceTag extends StatelessWidget {
  final double price; // giá hiện tại
  final double? originalPrice; // giá gốc
  final double? discountPrice; // giá giảm
  final bool compact; // hiển thị nhỏ gọn
  final TextStyle? textStyle; // cho phép custom style

  const PriceTag({
    Key? key,
    required this.price,
    this.originalPrice,
    this.discountPrice,
    this.compact = false,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat.currency(
      locale: 'vi_VN',
      symbol: 'đ',
      decimalDigits: 0,
    );

    final basePrice = originalPrice ?? price;
    final hasDiscount = discountPrice != null && discountPrice! < basePrice;
    final displayedPrice = hasDiscount ? discountPrice! : basePrice;

    final discountPercent = hasDiscount
        ? (((basePrice - discountPrice!) / basePrice) * 100).round()
        : null;

    final mainStyle =
        textStyle ??
        TextStyle(
          fontSize: compact ? 16 : 22,
          fontWeight: FontWeight.bold,
          color: ProductDetailPage.themeColor,
        );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (hasDiscount)
          Text(
            formatter.format(basePrice),
            style: TextStyle(
              fontSize: compact ? 12 : 16,
              color: Colors.grey,
              decoration: TextDecoration.lineThrough,
            ),
          ),
        if (hasDiscount) const SizedBox(width: 6),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: Text(
            formatter.format(displayedPrice),
            key: ValueKey(displayedPrice),
            style: mainStyle,
          ),
        ),
        if (hasDiscount) const SizedBox(width: 6),
        if (hasDiscount)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              '-$discountPercent%',
              style: TextStyle(
                color: Colors.white,
                fontSize: compact ? 11 : 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
      ],
    );
  }
}
