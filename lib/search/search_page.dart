import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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

  final List<String> popularKeywords = [
    'serum',
    'kem chống nắng',
    'Paula’s Choice',
    'La Roche-Posay',
    'tẩy tế bào chết',
    'dưỡng ẩm',
  ];

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

    final lowerKeyword = keyword.toLowerCase();
    final results = productList.where((product) {
      final name = product['name']?.toString().toLowerCase() ?? '';
      return name.contains(lowerKeyword);
    }).toList();

    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        searchResults = results;
        isSearching = false;
        fadeController.forward(from: 0);
      });
    });
  }

  @override
  void dispose() {
    fadeController.dispose();
    searchController.dispose();
    super.dispose();
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
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 400),
          child: isSearching
              ? const Center(child: CircularProgressIndicator())
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        hintText: 'Nhập từ khóa tìm kiếm...',
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: searchController.text.isNotEmpty
                            ? IconButton(
                                icon: const Icon(Icons.clear),
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
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12,
                        ),
                      ),
                      onChanged: (_) => setState(() {}),
                      onSubmitted: (value) {
                        final keyword = value.trim();
                        if (keyword.isNotEmpty) {
                          performSearch(keyword);
                        }
                      },
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      '🔎 Gợi ý từ khóa phổ biến',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      children: popularKeywords.map((keyword) {
                        final isSelected = keyword == selectedKeyword;
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeOut,
                          decoration: BoxDecoration(
                            color: isSelected
                                ? Colors.blue[100]
                                : Colors.grey[200],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ChoiceChip(
                            label: Text(keyword),
                            selected: isSelected,
                            backgroundColor: Colors.transparent,
                            selectedColor: Colors.transparent,
                            onSelected: (_) {
                              searchController.text = keyword;
                              performSearch(keyword);
                            },
                            labelStyle: TextStyle(
                              color: isSelected
                                  ? Colors.blue[900]
                                  : Colors.black87,
                              fontWeight: isSelected
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 16),
                    if (searchHistory.isNotEmpty) ...[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '🕘 Lịch sử tìm kiếm',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextButton.icon(
                            icon: const Icon(
                              Icons.delete_outline,
                              color: Colors.red,
                            ),
                            label: const Text(
                              'Xóa tất cả',
                              style: TextStyle(color: Colors.red),
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
                            deleteIcon: const Icon(Icons.close),
                            onDeleted: () => deleteHistoryItem(
                              searchHistory.indexOf(keyword),
                            ),
                            onPressed: () {
                              searchController.text = keyword;
                              performSearch(keyword);
                            },
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 16),
                    ],
                    Expanded(
                      child: searchResults.isEmpty
                          ? FadeTransition(
                              opacity: fadeAnimation,
                              child: selectedKeyword.isEmpty
                                  ? const Center(
                                      child: Text(
                                        'Hãy chọn hoặc nhập từ khóa để bắt đầu tìm kiếm',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    )
                                  : const Center(
                                      child: Text(
                                        'Không có sản phẩm nào phù hợp',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                            )
                          : FadeTransition(
                              opacity: fadeAnimation,
                              child: GridView.builder(
                                itemCount: searchResults.length,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      childAspectRatio: 0.72,
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
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
