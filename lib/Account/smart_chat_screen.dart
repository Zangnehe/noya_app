import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../product_data/product_utils.dart';

class SmartChatScreen extends StatefulWidget {
  const SmartChatScreen({super.key});

  @override
  State<SmartChatScreen> createState() => _SmartChatScreenState();
}

class _SmartChatScreenState extends State<SmartChatScreen> {
  final TextEditingController _controller = TextEditingController();
  List<Map<String, String>> messages = [];

  @override
  void initState() {
    super.initState();
    _loadMessages();
  }

  Future<void> _saveMessages() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('chatHistory', jsonEncode(messages));
  }

  Future<void> _loadMessages() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString('chatHistory');
    if (raw != null) {
      final decoded = jsonDecode(raw) as List;
      setState(() {
        messages = decoded.map((e) => Map<String, String>.from(e)).toList();
      });
    }
  }

  void sendMessage(String input) {
    setState(() {
      messages.add({'role': 'user', 'text': input});
    });

    final results = processInput(input);

    if (results.isEmpty) {
      setState(() {
        messages.add({'role': 'ai', 'text': 'Không tìm thấy sản phẩm phù hợp.'});
      });
    } else {
      // ✅ chỉ lấy tối đa 5 sản phẩm
      for (var product in results.take(5)) {
        messages.add({
          'role': 'ai',
          'text': product['name'] ?? 'Sản phẩm không tên',
          'image': product['image'] ?? '',
          'price': getCurrentPrice(product).toInt().toString(),
          'promotion': product['promotion'] ?? '',
        });
      }
      // Nếu có nhiều hơn 5 sản phẩm, thêm thông báo
      if (results.length > 5) {
        messages.add({
          'role': 'ai',
          'text': 'Có nhiều sản phẩm hơn, hãy lọc chi tiết hơn để xem thêm.'
        });
      }
    }

    _saveMessages();
    _controller.clear();
  }

  List<Map<String, dynamic>> processInput(String input) {
    final normalized = input.toLowerCase();

    // Loại da
    String? skinType;
    if (normalized.contains('da dầu')) skinType = 'da dầu';
    if (normalized.contains('da nhạy cảm')) skinType = 'da nhạy cảm';
    if (normalized.contains('da khô')) skinType = 'da khô';
    if (normalized.contains('da mụn')) skinType = 'da mụn';

    // Loại sản phẩm
    String? type;
    if (normalized.contains('chống nắng')) type = 'chống nắng';
    if (normalized.contains('sữa rửa mặt')) type = 'sữa rửa mặt';
    if (normalized.contains('serum')) type = 'serum';
    if (normalized.contains('toner')) type = 'toner';
    if (normalized.contains('kem dưỡng')) type = 'kem dưỡng';
    if (normalized.contains('tẩy trang')) type = 'tẩy trang';

    // Thương hiệu
    String? brand;
    if (normalized.contains('la roche')) brand = 'La Roche-Posay';
    if (normalized.contains('cetaphil')) brand = 'Cetaphil';
    if (normalized.contains('paula')) brand = 'Paula’s Choice';
    if (normalized.contains('klairs')) brand = 'Klairs';
    if (normalized.contains('cerave')) brand = 'CeraVe';
    if (normalized.contains('bioderma')) brand = 'Bioderma';

    // Giá tiền (ví dụ: dưới 100k)
    double? maxPrice;
    final regexPrice = RegExp(r'(\d+)\s?k');
    final match = regexPrice.firstMatch(normalized);
    if (match != null) {
      maxPrice = double.tryParse(match.group(1)!);
      if (maxPrice != null) maxPrice = maxPrice * 1000;
    }

    // Thời điểm sử dụng
    String? timeOfUse;
    if (normalized.contains('ban đêm') || normalized.contains('tối')) timeOfUse = 'tối';
    if (normalized.contains('ban ngày') || normalized.contains('sáng')) timeOfUse = 'sáng';

    return filterProducts(
      skinType: skinType,
      type: type,
      brand: brand,
      maxPrice: maxPrice,
      timeOfUse: timeOfUse,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chat Thông Minh')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final msg = messages[index];
                final isUser = msg['role'] == 'user';

                if (!isUser && msg.containsKey('image') && msg['image']!.isNotEmpty) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            msg['image']!,
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                            errorBuilder: (_, __, ___) => const Icon(Icons.broken_image),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(msg['text']!, style: const TextStyle(fontWeight: FontWeight.bold)),
                                Text('Giá: ${msg['price']} VND'),
                                if (msg['promotion'] != null && msg['promotion']!.isNotEmpty)
                                  Text('🎁 ${msg['promotion']}'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }

                return Align(
                  alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    decoration: BoxDecoration(
                      color: isUser ? Colors.blue[200] : Colors.grey[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(msg['text']!),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Nhập câu hỏi...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    if (_controller.text.trim().isNotEmpty) {
                      sendMessage(_controller.text.trim());
                    }
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
