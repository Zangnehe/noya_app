import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'SkinIssue.dart';
import 'SkinAssessmentProvider.dart';

class SkinAssessmentPage extends StatefulWidget {
  const SkinAssessmentPage({super.key});

  @override
  State<SkinAssessmentPage> createState() => _SkinAssessmentPageState();
}

class _SkinAssessmentPageState extends State<SkinAssessmentPage> {
  late TextEditingController _noteCtrl;

  @override
  void initState() {
    super.initState();
    final provider = Provider.of<SkinAssessmentProvider>(
      context,
      listen: false,
    );
    _noteCtrl = TextEditingController(text: provider.note);
  }

  @override
  void dispose() {
    _noteCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const brand = Color(0xFFBFAF9B);
    final provider = Provider.of<SkinAssessmentProvider>(context);

    // Nhóm SkinIssue theo group
    final Map<String, List<SkinIssue>> grouped = {};
    for (final issue in kSkinIssues) {
      grouped.putIfAbsent(issue.group, () => []).add(issue);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chọn tình trạng da'),
        backgroundColor: brand,
        elevation: 4,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Nhóm chips theo danh mục
            ...grouped.entries.map((entry) {
              return _sectionContainer(
                title: entry.key,
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: entry.value.map((issue) {
                    final selected = provider.selectedIds.contains(issue.id);
                    return ChoiceChip(
                      label: Text(issue.label),
                      selected: selected,
                      selectedColor: brand.withOpacity(0.25),
                      labelStyle: TextStyle(
                        color: selected ? Colors.brown[800] : Colors.black87,
                        fontWeight: selected
                            ? FontWeight.w600
                            : FontWeight.w400,
                      ),
                      onSelected: (value) {
                        final newSelected = [...provider.selectedIds];
                        if (value) {
                          newSelected.add(issue.id);
                        } else {
                          newSelected.remove(issue.id);
                        }
                        provider.saveAssessment(
                          ids: newSelected,
                          sev: provider.severity,
                          desc: provider.note,
                        );
                      },
                    );
                  }).toList(),
                ),
              );
            }).toList(),

            const SizedBox(height: 16),

            // Mức độ nghiêm trọng
            _sectionContainer(
              title: 'Mức độ nghiêm trọng',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Slider(
                    value: provider.severity,
                    min: 1,
                    max: 5,
                    divisions: 4,
                    activeColor: brand,
                    label: provider.severity.round().toString(),
                    onChanged: (v) {
                      provider.saveAssessment(
                        ids: provider.selectedIds,
                        sev: v,
                        desc: provider.note,
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Nhẹ'),
                      Text('Trung bình'),
                      Text('Nặng'),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Ghi chú thêm
            _sectionContainer(
              title: 'Mô tả thêm (không bắt buộc)',
              child: TextField(
                controller: _noteCtrl,
                maxLines: 3,
                onChanged: (val) {
                  provider.saveAssessment(
                    ids: provider.selectedIds,
                    sev: provider.severity,
                    desc: val,
                  );
                },
                decoration: InputDecoration(
                  hintText: 'Ví dụ: da đỏ rát sau khi dùng retinol...',
                  filled: true,
                  fillColor: const Color(0xFFF5F5F5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Nút xác nhận
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: brand,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                icon: const Icon(Icons.check_circle),
                label: const Text(
                  'Xác nhận tình trạng da',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                onPressed: () {
                  provider.saveAssessment(
                    ids: provider.selectedIds,
                    sev: provider.severity,
                    desc: _noteCtrl.text.trim(),
                  );

                  // 👉 Thoát khỏi trang SkinAssessmentPage, quay về màn hình trước
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _sectionContainer({required String title, required Widget child}) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.brown,
            ),
          ),
          const SizedBox(height: 8),
          child,
        ],
      ),
    );
  }
}
