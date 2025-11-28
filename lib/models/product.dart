class Product {
  final String id;
  final String name;
  final String brand;
  final String type;
  final double price; // Giá hiện tại
  final double? originalPrice; // Giá gốc
  final double? discountPrice; // Giá sau giảm
  final bool isDiscountActive; // Trạng thái khuyến mãi
  final DateTime? promotionStart; // Thời gian bắt đầu khuyến mãi
  final DateTime? promotionEnd; // Thời gian kết thúc khuyến mãi
  final int stockQuantity; // Số lượng tồn kho
  final String image;
  final String? promotion; // Quà tặng/khuyến mãi kèm theo
  final String? category;
  final String? description;
  final Map<String, String>? specs;
  final List<String>? ingredients;
  final String? usage;
  int quantity; // Số lượng trong giỏ hàng

  Product({
    required this.id,
    required this.name,
    required this.brand,
    required this.type,
    required this.price,
    this.originalPrice,
    this.discountPrice,
    this.isDiscountActive = false,
    this.promotionStart,
    this.promotionEnd,
    this.stockQuantity = 0,
    required this.image,
    this.promotion,
    this.category,
    this.description,
    this.specs,
    this.ingredients,
    this.usage,
    this.quantity = 1,
  });

  /// Parse từ JSON (API/Firebase)
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: (json['id'] ?? '').toString(),
      name: (json['name'] ?? '').toString(),
      brand: (json['brand'] ?? '').toString(),
      type: (json['type'] ?? '').toString(),
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      originalPrice: (json['originalPrice'] as num?)?.toDouble(),
      discountPrice: (json['discountPrice'] as num?)?.toDouble(),
      isDiscountActive: json['isDiscountActive'] == true,
      promotionStart: json['promotionStart'] != null
          ? DateTime.tryParse(json['promotionStart'].toString())
          : null,
      promotionEnd: json['promotionEnd'] != null
          ? DateTime.tryParse(json['promotionEnd'].toString())
          : null,
      stockQuantity: (json['stockQuantity'] as int?) ?? 0,
      image: (json['image'] ?? '').toString(),
      promotion: json['promotion']?.toString(),
      category: json['category']?.toString(),
      description: json['description']?.toString(),
      specs: json['specs'] != null
          ? Map<String, String>.from(json['specs'] as Map)
          : null,
      ingredients: json['ingredients'] != null
          ? List<String>.from(json['ingredients'] as List)
          : null,
      usage: json['usage']?.toString(),
      quantity: (json['quantity'] as int?) ?? 1,
    );
  }

  /// Parse từ Map (mock/local data)
  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: (map['id'] ?? '').toString(),
      name: (map['name'] ?? '').toString(),
      brand: (map['brand'] ?? '').toString(),
      type: (map['type'] ?? '').toString(),
      price: (map['price'] as num?)?.toDouble() ?? 0.0,
      originalPrice: (map['originalPrice'] as num?)?.toDouble(),
      discountPrice: (map['discountPrice'] as num?)?.toDouble(),
      isDiscountActive: map['isDiscountActive'] == true,
      promotionStart: map['promotionStart'] != null
          ? DateTime.tryParse(map['promotionStart'].toString())
          : null,
      promotionEnd: map['promotionEnd'] != null
          ? DateTime.tryParse(map['promotionEnd'].toString())
          : null,
      stockQuantity: (map['stockQuantity'] as int?) ?? 0,
      image: (map['image'] ?? '').toString(),
      promotion: map['promotion']?.toString(),
      category: map['category']?.toString(),
      description: map['description']?.toString(),
      specs: map['specs'] != null
          ? Map<String, String>.from(map['specs'] as Map)
          : null,
      ingredients: map['ingredients'] != null
          ? List<String>.from(map['ingredients'] as List)
          : null,
      usage: map['usage']?.toString(),
      quantity: (map['quantity'] as int?) ?? 1,
    );
  }

  /// Convert sang JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'brand': brand,
      'type': type,
      'price': price,
      'originalPrice': originalPrice,
      'discountPrice': discountPrice,
      'isDiscountActive': isDiscountActive,
      'promotionStart': promotionStart?.toIso8601String(),
      'promotionEnd': promotionEnd?.toIso8601String(),
      'stockQuantity': stockQuantity,
      'image': image,
      'promotion': promotion,
      'category': category,
      'description': description,
      'specs': specs,
      'ingredients': ingredients,
      'usage': usage,
      'quantity': quantity,
    };
  }

  /// Tạo bản sao có chỉnh sửa
  Product copyWith({
    String? id,
    String? name,
    String? brand,
    String? type,
    double? price,
    double? originalPrice,
    double? discountPrice,
    bool? isDiscountActive,
    DateTime? promotionStart,
    DateTime? promotionEnd,
    int? stockQuantity,
    String? image,
    String? promotion,
    String? category,
    String? description,
    Map<String, String>? specs,
    List<String>? ingredients,
    String? usage,
    int? quantity,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      brand: brand ?? this.brand,
      type: type ?? this.type,
      price: price ?? this.price,
      originalPrice: originalPrice ?? this.originalPrice,
      discountPrice: discountPrice ?? this.discountPrice,
      isDiscountActive: isDiscountActive ?? this.isDiscountActive,
      promotionStart: promotionStart ?? this.promotionStart,
      promotionEnd: promotionEnd ?? this.promotionEnd,
      stockQuantity: stockQuantity ?? this.stockQuantity,
      image: image ?? this.image,
      promotion: promotion ?? this.promotion,
      category: category ?? this.category,
      description: description ?? this.description,
      specs: specs ?? this.specs,
      ingredients: ingredients ?? this.ingredients,
      usage: usage ?? this.usage,
      quantity: quantity ?? this.quantity,
    );
  }

  /// Kiểm tra khuyến mãi còn hiệu lực
  bool get isPromotionValid {
    if (!isDiscountActive) return false;
    final now = DateTime.now();
    if (promotionStart != null && now.isBefore(promotionStart!)) return false;
    if (promotionEnd != null && now.isAfter(promotionEnd!)) return false;
    return true;
  }

  @override
  String toString() {
    return 'Product(id: $id, name: $name, brand: $brand, type: $type, '
        'price: $price, originalPrice: $originalPrice, discountPrice: $discountPrice, '
        'isDiscountActive: $isDiscountActive, promotionStart: $promotionStart, promotionEnd: $promotionEnd, '
        'stockQuantity: $stockQuantity, promotion: $promotion, category: $category, '
        'description: $description, specs: $specs, '
        'ingredients: $ingredients, usage: $usage, '
        'quantity: $quantity)';
  }
}
