import '../Models/Product.dart';
//Dữ liệu cứng
final List<Product> dummyProducts = [
  Product(
    id: 1,
    name: 'Sữa rửa mặt La Roche-Posay',
    price: 320000,
    image: 'https://hasaki.vn/catalogue/laroche-facewash.jpg',
    description: 'Làm sạch nhẹ nhàng, dành cho da dầu mụn.',
    category: 'Sữa rửa mặt',
  ),
  Product(
    id: 2,
    name: 'Kem dưỡng ẩm CeraVe',
    price: 380000,
    image: 'https://hasaki.vn/catalogue/cerave-moisture.jpg',
    description: 'Phục hồi hàng rào bảo vệ da, cấp ẩm suốt 24h.',
    category: 'Kem dưỡng',
  ),
  Product(
    id: 3,
    name: 'Serum Vitamin C Melano CC',
    price: 290000,
    image: 'https://hasaki.vn/catalogue/melano-cc.jpg',
    description: 'Giúp sáng da, mờ thâm, chống oxy hóa.',
    category: 'Serum',
  ),
];
