class UserAddress {
  final String id;
  final String receiverName; // Tên người nhận
  final String phone; // Số điện thoại
  final String fullAddress; // Địa chỉ đầy đủ
  final double? lat; // Vĩ độ
  final double? lng; // Kinh độ

  UserAddress({
    required this.id,
    required this.receiverName,
    required this.phone,
    required this.fullAddress,
    this.lat,
    this.lng,
  });

  /// Convert sang JSON để lưu vào Firebase/Local
  Map<String, dynamic> toJson() => {
    'id': id,
    'receiverName': receiverName,
    'phone': phone,
    'fullAddress': fullAddress,
    'lat': lat,
    'lng': lng,
  };

  /// Parse từ JSON (API/Firebase)
  factory UserAddress.fromJson(Map<String, dynamic> json) => UserAddress(
    id: json['id']?.toString() ?? '',
    receiverName: json['receiverName'] ?? '',
    phone: json['phone'] ?? '',
    fullAddress: json['fullAddress'] ?? '',
    lat: (json['lat'] as num?)?.toDouble(),
    lng: (json['lng'] as num?)?.toDouble(),
  );

  /// Parse từ Map (mock/local data)
  factory UserAddress.fromMap(Map<String, dynamic> map) => UserAddress(
    id: (map['id'] ?? '').toString(),
    receiverName: (map['receiverName'] ?? '').toString(),
    phone: (map['phone'] ?? '').toString(),
    fullAddress: (map['fullAddress'] ?? '').toString(),
    lat: (map['lat'] as num?)?.toDouble(),
    lng: (map['lng'] as num?)?.toDouble(),
  );

  /// Tạo bản sao có chỉnh sửa
  UserAddress copyWith({
    String? id,
    String? receiverName,
    String? phone,
    String? fullAddress,
    double? lat,
    double? lng,
  }) {
    return UserAddress(
      id: id ?? this.id,
      receiverName: receiverName ?? this.receiverName,
      phone: phone ?? this.phone,
      fullAddress: fullAddress ?? this.fullAddress,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
    );
  }

  @override
  String toString() {
    return 'UserAddress(id: $id, receiverName: $receiverName, phone: $phone, '
        'fullAddress: $fullAddress, lat: $lat, lng: $lng)';
  }
}
