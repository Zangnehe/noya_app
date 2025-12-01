import 'dart:async';
import 'package:flutter/material.dart';
import '../product_data/product_data.dart';
import 'search_result_card.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> with TickerProviderStateMixin {
  final TextEditingController searchController = TextEditingController();
  List<Map<String, dynamic>> searchResults = [];
  List<String> searchHistory = [];
  late AnimationController fadeController;
  late Animation<double> fadeAnimation;
  bool isSearching = false;
  String selectedKeyword = '';

  String selectedPriceFilter = 'Tất cả';
  String selectedBrandFilter = 'Tất cả';
  String selectedTypeFilter = 'Tất cả';

  final List<String> popularKeywords = [
    'serum',
    'kem chống nắng',
    'Paula’s Choice',
    'La Roche-Posay',
    'tẩy tế bào chết',
    'dưỡng ẩm',
  ];

  final List<String> priceFilters = [
    'Tất cả',
    'Dưới 300k',
    '300k - 600k',
    'Trên 600k',
  ];

  late List<String> brandFilters;
  late List<String> typeFilters;

  @override
  void initState() {
    super.initState();

    fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    fadeAnimation = CurvedAnimation(
      parent: fadeController,
      curve: Curves.easeIn,
    );
    fadeController.forward();

    loadSearchHistory();

    // ✅ Khởi tạo brand/type filters an toàn
    final brands = productList
        .map((p) => p['brand']?.toString().trim())
        .whereType<String>()
        .toSet();
    final types = productList
        .map((p) => p['type']?.toString().trim())
        .whereType<String>()
        .toSet();

    brandFilters = ['Tất cả', ...brands];
    typeFilters = ['Tất cả', ...types];
  }

  void loadSearchHistory() async {
    final prefs = await SharedPreferences.getInstance();
    final saved = prefs.getStringList('searchHistory') ?? [];
    setState(() {
      searchHistory = saved;
    });
  }

  void saveToHistory(String keyword) async {
    keyword = keyword.trim();
    if (keyword.isEmpty) return;
    if (!searchHistory.contains(keyword)) {
      setState(() {
        searchHistory.insert(0, keyword);
      });
      final prefs = await SharedPreferences.getInstance();
      prefs.setStringList('searchHistory', searchHistory);
    }
  }

  void deleteHistoryItem(int index) async {
    setState(() {
      searchHistory.removeAt(index);
    });
    final prefs = await SharedPreferences.getInstance();
    prefs.setStringList('searchHistory', searchHistory);
  }

  void clearAllHistory() async {
    setState(() {
      searchHistory.clear();
    });
    final prefs = await SharedPreferences.getInstance();
    prefs.setStringList('searchHistory', []);
  }

  void performSearch(String keyword) {
    setState(() {
      isSearching = true;
      selectedKeyword = keyword;
    });

    saveToHistory(keyword);

    final keywordLower = keyword.toLowerCase();
    final results = productList.where((product) {
      final name = product['name']?.toString().toLowerCase() ?? '';
      final brand = product['brand']?.toString().toLowerCase() ?? '';
      final type = product['type']?.toString().toLowerCase() ?? '';
      return name.contains(keywordLower) ||
          brand.contains(keywordLower) ||
          type.contains(keywordLower);
    }).toList();

    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        searchResults = applyFilters(results);
        isSearching = false;
        fadeController.forward(from: 0);
      });
    });
  }

  List<Map<String, dynamic>> _getBaseResults() {
    final keyword = selectedKeyword.trim().toLowerCase();

    // Nếu không có từ khóa, trả toàn bộ danh sách
    if (keyword.isEmpty) {
      return List<Map<String, dynamic>>.from(productList);
    }

    // Tìm kiếm theo từ khóa đã nhập
    return productList.where((product) {
      final name = product['name']?.toString().toLowerCase().trim() ?? '';
      final brand = product['brand']?.toString().toLowerCase().trim() ?? '';
      final type = product['type']?.toString().toLowerCase().trim() ?? '';

      // So khớp chính xác hơn bằng contains sau khi chuẩn hóa
      return name.contains(keyword) ||
          brand.contains(keyword) ||
          type.contains(keyword);
    }).toList();
  }

  List<Map<String, dynamic>> applyFilters(List<Map<String, dynamic>> results) {
    List<Map<String, dynamic>> filtered = results;

    if (selectedPriceFilter != 'Tất cả') {
      filtered = filtered.where((product) {
        final price =
            (product['discountPrice'] ?? product['price']) as num? ?? 0;
        if (selectedPriceFilter == 'Dưới 300k') return price < 300000;
        if (selectedPriceFilter == '300k - 600k')
          return price >= 300000 && price <= 600000;
        if (selectedPriceFilter == 'Trên 600k') return price > 600000;
        return true;
      }).toList();
    }

    if (selectedBrandFilter != 'Tất cả') {
      final brandFilter = selectedBrandFilter.toLowerCase().trim();
      filtered = filtered.where((product) {
        final brand = product['brand']?.toString().toLowerCase().trim() ?? '';
        return brand == brandFilter;
      }).toList();
    }

    if (selectedTypeFilter != 'Tất cả') {
      final typeFilter = selectedTypeFilter.toLowerCase().trim();
      filtered = filtered.where((product) {
        final type = product['type']?.toString().toLowerCase().trim() ?? '';
        return type == typeFilter;
      }).toList();
    }

    return filtered;
  }

  void _showFilterSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Bộ lọc sản phẩm',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFBFAF9B),
                  ),
                ),
                const SizedBox(height: 12),
                _buildDropdown(
                  '💰 Giá',
                  priceFilters,
                  selectedPriceFilter,
                  (val) => setState(() => selectedPriceFilter = val),
                ),
                const SizedBox(height: 12),
                _buildDropdown(
                  '🏷️ Thương hiệu',
                  brandFilters,
                  selectedBrandFilter,
                  (val) => setState(() => selectedBrandFilter = val),
                ),
                const SizedBox(height: 12),
                _buildDropdown(
                  '🧴 Loại sản phẩm',
                  typeFilters,
                  selectedTypeFilter,
                  (val) => setState(() => selectedTypeFilter = val),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: const Color(0xFFBFAF9B),
                          side: const BorderSide(color: Color(0xFFBFAF9B)),
                        ),
                        onPressed: () {
                          setState(() {
                            // Reset tất cả bộ lọc
                            selectedPriceFilter = 'Tất cả';
                            selectedBrandFilter = 'Tất cả';
                            selectedTypeFilter = 'Tất cả';

                            // Nếu có từ khóa, lọc lại theo từ khóa + bộ lọc rỗng
                            // Nếu không có từ khóa, hiển thị toàn bộ sản phẩm
                            final base = _getBaseResults();
                            searchResults = applyFilters(base);
                          });

                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.refresh),
                        label: const Text('Đặt lại'),
                      ),
                    ),

                    const SizedBox(width: 12),
                    Expanded(
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFBFAF9B),
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          final base = _getBaseResults();
                          setState(() {
                            searchResults = applyFilters(base);
                          });
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.check),
                        label: const Text('Áp dụng'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildDropdown(
    String title,
    List<String> items,
    String selected,
    Function(String) onChanged,
  ) {
    return DropdownButtonFormField<String>(
      value: selected,
      decoration: InputDecoration(
        labelText: title,
        labelStyle: const TextStyle(color: Color(0xFFBFAF9B)),
        border: const OutlineInputBorder(),
      ),
      dropdownColor: Colors.white,
      iconEnabledColor: const Color(0xFFBFAF9B),
      items: items
          .map(
            (e) => DropdownMenuItem<String>(
              value: e,
              child: Text(e, style: const TextStyle(color: Color(0xFFBFAF9B))),
            ),
          )
          .toList(),
      onChanged: (val) => onChanged(val!),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          '🔍 Tìm kiếm sản phẩm',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFBFAF9B),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list, color: Color(0xFFBFAF9B)),
            onPressed: _showFilterSheet,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 400),
          child: isSearching
              ? const Center(
                  child: CircularProgressIndicator(color: Color(0xFFBFAF9B)),
                )
              : SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Ô nhập tìm kiếm
                      TextField(
                        controller: searchController,
                        decoration: InputDecoration(
                          hintText: 'Nhập từ khóa tìm kiếm...',
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Color(0xFFBFAF9B),
                          ),
                          suffixIcon: searchController.text.isNotEmpty
                              ? IconButton(
                                  icon: const Icon(
                                    Icons.clear,
                                    color: Color(0xFFBFAF9B),
                                  ),
                                  onPressed: () {
                                    searchController.clear();
                                    setState(() {
                                      searchResults.clear();
                                      selectedKeyword = '';
                                    });
                                  },
                                )
                              : null,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color(0xFFBFAF9B),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color(0xFFBFAF9B),
                              width: 2,
                            ),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
                        ),
                        onChanged: (_) => setState(() {}),
                        onSubmitted: (value) {
                          final keyword = value.trim();
                          if (keyword.isNotEmpty) performSearch(keyword);
                        },
                      ),
                      const SizedBox(height: 16),

                      // Gợi ý từ khóa phổ biến
                      const Text(
                        '🔎 Gợi ý từ khóa phổ biến',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFBFAF9B),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        children: popularKeywords.map((keyword) {
                          final isSelected = keyword == selectedKeyword;
                          return ChoiceChip(
                            label: Text(keyword),
                            selected: isSelected,
                            onSelected: (_) {
                              searchController.text = keyword;
                              performSearch(keyword);
                            },
                            selectedColor: const Color(
                              0xFFBFAF9B,
                            ).withOpacity(0.3),
                            backgroundColor: Colors.grey[200],
                            labelStyle: TextStyle(
                              color: isSelected
                                  ? const Color(0xFFBFAF9B)
                                  : Colors.black87,
                              fontWeight: isSelected
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 16),

                      // Lịch sử tìm kiếm
                      if (searchHistory.isNotEmpty) ...[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              '🕘 Lịch sử tìm kiếm',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFBFAF9B),
                              ),
                            ),
                            TextButton.icon(
                              icon: const Icon(
                                Icons.delete_outline,
                                color: Color(0xFFBFAF9B),
                              ),
                              label: const Text(
                                'Xóa tất cả',
                                style: TextStyle(color: Color(0xFFBFAF9B)),
                              ),
                              onPressed: clearAllHistory,
                            ),
                          ],
                        ),
                        Wrap(
                          spacing: 8,
                          children: searchHistory.map((keyword) {
                            return InputChip(
                              label: Text(keyword),
                              deleteIcon: const Icon(
                                Icons.close,
                                color: Color(0xFFBFAF9B),
                              ),
                              onDeleted: () => deleteHistoryItem(
                                searchHistory.indexOf(keyword),
                              ),
                              onPressed: () {
                                searchController.text = keyword;
                                performSearch(keyword);
                              },
                              backgroundColor: Colors.grey[200],
                              selectedColor: const Color(
                                0xFFBFAF9B,
                              ).withOpacity(0.3),
                            );
                          }).toList(),
                        ),
                        const SizedBox(height: 16),
                      ],

                      // Kết quả tìm kiếm
                      FadeTransition(
                        opacity: fadeAnimation,
                        child: searchResults.isEmpty
                            ? Center(
                                child: Text(
                                  selectedKeyword.isEmpty
                                      ? 'Hãy chọn hoặc nhập từ khóa để bắt đầu tìm kiếm'
                                      : 'Không có sản phẩm nào phù hợp',
                                  style: const TextStyle(color: Colors.grey),
                                ),
                              )
                            : GridView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: searchResults.length,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      mainAxisExtent: 360,
                                      crossAxisSpacing: 12,
                                      mainAxisSpacing: 12,
                                    ),
                                itemBuilder: (context, index) {
                                  return SearchResultCard(
                                    product: searchResults[index],
                                  );
                                },
                              ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
