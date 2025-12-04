import 'package:flutter/material.dart';

class RoutineSuggestionScreen extends StatefulWidget {
  const RoutineSuggestionScreen({super.key});

  @override
  State<RoutineSuggestionScreen> createState() => _RoutineSuggestionScreenState();
}

class _RoutineSuggestionScreenState extends State<RoutineSuggestionScreen> {
  String selectedSkinType = 'da dầu';

  // Routine mẫu cho từng loại da
  final Map<String, Map<String, List<Map<String, String>>>> routines = {
    'da dầu': {
      'morning': [
        {
          'step': 'Bước 1: Sữa rửa mặt',
          'product': 'Cetaphil Gentle Skin Cleanser',
          'image': 'https://www.guardian.com.vn/media/catalog/product/...jpg',
          'price': '145000',
          'promotion': '',
        },
        {
          'step': 'Bước 2: Kem chống nắng',
          'product': 'La Roche-Posay Anthelios',
          'image': 'https://product.hstatic.net/...jpg',
          'price': '250000',
          'promotion': 'Tặng 1 gel rửa mặt',
        },
      ],
      'night': [
        {
          'step': 'Bước 1: Tẩy trang',
          'product': 'Bioderma Sensibio',
          'image': 'https://bioderma.vn/...jpg',
          'price': '260000',
          'promotion': 'Tặng 1 bông tẩy trang',
        },
        {
          'step': 'Bước 2: Serum',
          'product': 'Paula’s Choice BHA 2%',
          'image': 'https://mint07.com/...jpg',
          'price': '450000',
          'promotion': 'Giảm 10%',
        },
      ],
    },
    'da nhạy cảm': {
      'morning': [
        {
          'step': 'Bước 1: Sữa rửa mặt',
          'product': 'Sữa rửa mặt dịu nhẹ Cetaphil',
          'image': 'https://www.guardian.com.vn/media/catalog/product/...jpg',
          'price': '145000',
          'promotion': '',
        },
        {
          'step': 'Bước 2: Kem chống nắng',
          'product': 'Kem chống nắng Klairs',
          'image': 'https://klairsvietnam.vn/...jpg',
          'price': '280000',
          'promotion': 'Giảm 10% khi mua kèm serum',
        },
      ],
      'night': [
        {
          'step': 'Bước 1: Tẩy trang',
          'product': 'Nước tẩy trang Bioderma Sensibio',
          'image': 'https://bioderma.vn/...jpg',
          'price': '260000',
          'promotion': '',
        },
        {
          'step': 'Bước 2: Kem dưỡng',
          'product': 'CeraVe Moisturizing Cream',
          'image': 'https://cerave.vn/...jpg',
          'price': '280000',
          'promotion': 'Tặng 1 mặt nạ',
        },
      ],
    },
  };

  @override
  Widget build(BuildContext context) {
    final routine = routines[selectedSkinType]!;

    return Scaffold(
      appBar: AppBar(title: const Text('Gợi ý Combo Routine')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dropdown chọn loại da
            Row(
              children: [
                const Text('Loại da: ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                DropdownButton<String>(
                  value: selectedSkinType,
                  items: routines.keys.map((skin) {
                    return DropdownMenuItem(value: skin, child: Text(skin));
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedSkinType = value!;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),

            const Text('Routine buổi sáng',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            ...routine['morning']!.map((item) => _buildRoutineCard(item)),

            const SizedBox(height: 20),
            const Text(' Routine buổi tối',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            ...routine['night']!.map((item) => _buildRoutineCard(item)),
          ],
        ),
      ),
    );
  }

  Widget _buildRoutineCard(Map<String, String> item) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            item['image']!,
            width: 80,
            height: 80,
            fit: BoxFit.cover,
            errorBuilder: (_, __, ___) => const Icon(Icons.broken_image),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item['step']!,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.brown)),
                  Text(item['product']!,
                      style: const TextStyle(fontSize: 14)),
                  Text('Giá: ${item['price']} VND'),
                  if (item['promotion'] != null && item['promotion']!.isNotEmpty)
                    Text('${item['promotion']}'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
