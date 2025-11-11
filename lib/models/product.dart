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
    id: json['id'],
    name: json['name'],
    brand: json['brand'],
    type: json['type'],
    price: (json['price'] as num).toDouble(),
    discountPrice: json['discountPrice'] != null
        ? (json['discountPrice'] as num).toDouble()
        : null,
    image: json['image'],
    promotion: json['promotion'],
    quantity: json['quantity'] ?? 1,
  );
}
