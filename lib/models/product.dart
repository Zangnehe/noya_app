class Product {
  final String id;
  final String name;
  final String brand;
  final String type;
  final double price;
  final double? discountPrice;
  final String image;
  final String? promotion;
  int quantity;

  Product({
    required this.id,
    required this.name,
    required this.brand,
    required this.type,
    required this.price,
    this.discountPrice,
    required this.image,
    this.promotion,
    this.quantity = 1,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'brand': brand,
    'type': type,
    'price': price,
    'discountPrice': discountPrice,
    'image': image,
    'promotion': promotion,
    'quantity': quantity,
  };

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: (json['id'] ?? '').toString(),
    name: (json['name'] ?? '').toString(),
    brand: (json['brand'] ?? '').toString(),
    type: (json['type'] ?? '').toString(),
    price: (json['price'] as num?)?.toDouble() ?? 0.0,
    discountPrice: json['discountPrice'] != null
        ? (json['discountPrice'] as num).toDouble()
        : null,
    image: (json['image'] ?? '').toString(),
    promotion: json['promotion']?.toString(),
    quantity: (json['quantity'] is int)
        ? json['quantity'] as int
        : int.tryParse(json['quantity']?.toString() ?? '1') ?? 1,
  );
}
