import 'package:flutter/material.dart';

class GuidePage extends StatelessWidget {
  const GuidePage({super.key});
  final List<Map<String, String>> guideSteps = const [
    {
      'title': '1. Đăng nhập / Đăng ký',
      'description':
          '• Bạn có thể đăng ký bằng email, số điện thoại hoặc liên kết mạng xã hội như Google, Facebook.\n'
          '• Sau khi đăng ký, hệ thống sẽ gửi email xác minh để bảo mật tài khoản.\n'
          '• Nếu đã có tài khoản, chỉ cần nhập email/số điện thoại và mật khẩu để đăng nhập.\n'
          '• Lưu ý: bật xác thực 2 lớp để tăng cường bảo mật.\n'
          '• Nếu quên mật khẩu, bạn có thể chọn "Quên mật khẩu" để đặt lại.\n'
          '• Người dùng mới sẽ nhận được gói khuyến mãi chào mừng.\n'
          '• Bạn có thể đăng nhập trên nhiều thiết bị, dữ liệu sẽ đồng bộ qua cloud.',
    },
    {
      'title': '2. Cập nhật hồ sơ cá nhân',
      'description':
          '• Điền đầy đủ thông tin: họ tên, ngày sinh, giới tính, số điện thoại.\n'
          '• Cập nhật ảnh đại diện để dễ nhận diện.\n'
          '• Hồ sơ cá nhân giúp hệ thống gợi ý sản phẩm phù hợp với nhu cầu.\n'
          '• Bạn có thể chỉnh sửa thông tin bất cứ lúc nào trong mục "Tài khoản".\n'
          '• Thêm địa chỉ email phụ để khôi phục tài khoản khi cần.\n'
          '• Cập nhật sở thích làm đẹp để nhận gợi ý sản phẩm phù hợp.\n'
          '• Hồ sơ đầy đủ giúp bạn nhận ưu đãi cá nhân hóa.',
    },
    {
      'title': '3. Tìm kiếm sản phẩm',
      'description':
          '• Sử dụng thanh tìm kiếm để nhập tên sản phẩm, thương hiệu hoặc từ khóa.\n'
          '• Có thể lọc theo giá, khuyến mãi, tồn kho, đánh giá.\n'
          '• Ví dụ: nhập "dầu gội Dove" để tìm nhanh sản phẩm.\n'
          '• Kết quả hiển thị kèm hình ảnh, giá và khuyến mãi.\n'
          '• Có thể sắp xếp kết quả theo giá tăng/giảm, sản phẩm mới nhất.\n'
          '• Tìm kiếm thông minh gợi ý từ khóa liên quan.\n'
          '• Bạn có thể lưu lịch sử tìm kiếm để tra cứu nhanh.',
    },
    {
      'title': '4. Khám phá danh mục',
      'description':
          '• Các danh mục chính: chăm sóc tóc, chăm sóc da, trang điểm, nước hoa, thực phẩm chức năng.\n'
          '• Mỗi danh mục có banner minh họa và sản phẩm nổi bật.\n'
          '• Bạn có thể duyệt theo thương hiệu hoặc nhu cầu (ví dụ: dưỡng ẩm, chống nắng).\n'
          '• Danh mục có bộ lọc nâng cao: giá, đánh giá, khuyến mãi.\n'
          '• Có thể xem sản phẩm theo xu hướng hoặc top bán chạy.\n'
          '• Danh mục được cập nhật thường xuyên theo mùa và sự kiện.',
    },
    {
      'title': '5. Xem chi tiết sản phẩm',
      'description':
          '• Chạm vào sản phẩm để xem mô tả chi tiết, thành phần, cách sử dụng.\n'
          '• Hiển thị giá gốc, giá khuyến mãi, phần trăm giảm.\n'
          '• Có thể xem đánh giá từ người dùng khác.\n'
          '• Ảnh sản phẩm rõ nét, video hướng dẫn sử dụng.\n'
          '• Thông tin tồn kho giúp bạn biết còn bao nhiêu sản phẩm.\n'
          '• Có thể xem sản phẩm liên quan hoặc gợi ý đi kèm.\n'
          '• Hiển thị chứng nhận an toàn, nguồn gốc xuất xứ.',
    },
    {
      'title': '6. Thêm vào giỏ hàng',
      'description':
          '• Nhấn nút "Thêm vào giỏ" để lưu sản phẩm.\n'
          '• Có thể thêm nhiều sản phẩm cùng lúc.\n'
          '• Giỏ hàng hiển thị số lượng, giá và khuyến mãi.\n'
          '• Bạn có thể xóa hoặc chỉnh số lượng ngay trong giỏ.\n'
          '• Giỏ hàng đồng bộ trên nhiều thiết bị.\n'
          '• Có thể lưu giỏ hàng để mua sau.\n'
          '• Giỏ hàng hiển thị tổng tiền theo thời gian thực.',
    },
    {
      'title': '7. Quản lý giỏ hàng',
      'description':
          '• Trong giỏ hàng: tăng/giảm số lượng, áp dụng mã giảm giá.\n'
          '• Chọn sản phẩm muốn thanh toán.\n'
          '• Xem tổng tiền, thuế, phí vận chuyển.\n'
          '• Có thể lưu giỏ hàng để mua sau.\n'
          '• Giỏ hàng có chức năng chọn tất cả hoặc bỏ chọn.\n'
          '• Có thể chia sẻ giỏ hàng với bạn bè.\n'
          '• Giỏ hàng hiển thị khuyến mãi áp dụng cho từng sản phẩm.',
    },
    {
      'title': '8. Thanh toán',
      'description':
          '• Chọn phương thức: COD, thẻ ngân hàng, ví điện tử.\n'
          '• Nhập địa chỉ giao hàng hoặc chọn từ danh sách.\n'
          '• Xác nhận đơn hàng để hoàn tất.\n'
          '• Hệ thống gửi email xác nhận đơn hàng.\n'
          '• Bạn có thể thêm ghi chú cho đơn hàng.\n'
          '• Có thể chọn khung giờ giao hàng.\n'
          '• Thanh toán bảo mật với chứng chỉ SSL.\n'
          '• Có thể lưu phương thức thanh toán để dùng lại.',
    },
    {
      'title': '9. Theo dõi đơn hàng',
      'description':
          '• Vào "Lịch sử đơn hàng" để xem trạng thái: đang xử lý, đang giao, đã giao.\n'
          '• Xem chi tiết hóa đơn, phí vận chuyển, mã giảm giá.\n'
          '• Có thể hủy đơn nếu chưa giao.\n'
          '• Nhận thông báo khi đơn hàng thay đổi trạng thái.\n'
          '• Có thể đánh giá sản phẩm sau khi nhận.\n'
          '• Lưu hóa đơn điện tử để tra cứu sau.\n'
          '• Theo dõi vị trí đơn hàng theo thời gian thực.',
    },
    {
      'title': '10. Quản lý địa chỉ',
      'description':
          '• Thêm, sửa, xóa địa chỉ giao hàng.\n'
          '• Chọn chi nhánh gần nhất để tính phí vận chuyển.\n'
          '• Có thể lưu nhiều địa chỉ (nhà, công ty, người thân).\n'
          '• Địa chỉ mặc định sẽ được chọn khi thanh toán.\n'
          '• Có thể gắn nhãn cho địa chỉ (ví dụ: Nhà, Công ty).\n'
          '• Địa chỉ được lưu bảo mật trong hệ thống.\n'
          '• Có thể chia sẻ địa chỉ với người thân.',
    },
    {
      'title': '11. Ưu đãi & khuyến mãi',
      'description':
          '• Theo dõi Flash Deals để nhận ưu đãi.\n'
          '• Nhập mã giảm giá tại giỏ hàng.\n'
          '• Nhận thông báo khuyến mãi qua email hoặc app.\n'
          '• Lưu sản phẩm yêu thích để nhận thông báo khi giảm giá.\n'
          '• Có thể tham gia chương trình tích điểm.\n'
          '• Ưu đãi theo mùa, sự kiện đặc biệt.\n'
          '• Khuyến mãi dành riêng cho thành viên VIP.',
    },
    {
      'title': '12. Sản phẩm yêu thích',
      'description':
          '• Nhấn biểu tượng trái tim để thêm sản phẩm vào danh sách yêu thích.\n'
          '• Danh sách giúp bạn theo dõi sản phẩm quan tâm.\n'
          '• Có thể chia sẻ danh sách yêu thích với bạn bè.\n'
          '• Nhận thông báo khi sản phẩm yêu thích có khuyến mãi.\n'
          '• Có thể sắp xếp danh sách theo giá, thương hiệu.\n'
          '• Danh sách yêu thích đồng bộ trên nhiều thiết bị.\n'
          '• Có thể xuất danh sách yêu thích thành file PDF.',
    },
    {
      'title': '13. Đặt hẹn dịch vụ',
      'description':
          '• Đặt hẹn dịch vụ làm đẹp tại chi nhánh: chăm sóc da, làm tóc, tư vấn trang điểm.\n'
          '• Chọn ngày giờ phù hợp với lịch cá nhân.\n'
          '• Nhận thông báo nhắc lịch hẹn qua app và email.\n'
          '• Có thể hủy hoặc đổi lịch hẹn trực tiếp trong app.\n'
          '• Xem chi tiết dịch vụ: giá, thời lượng, chuyên viên thực hiện.\n'
          '• Có thể đặt nhiều dịch vụ cùng lúc.\n'
          '• Lịch hẹn được lưu trong mục "Đặt hẹn" để dễ quản lý.\n'
          '• Hệ thống gợi ý dịch vụ phù hợp dựa trên sản phẩm bạn đã mua.\n'
          '• Có thể thanh toán trước hoặc sau khi sử dụng dịch vụ.\n'
          '• Nhận ưu đãi đặc biệt khi đặt hẹn online.',
    },
    {
      'title': '14. Hỗ trợ khách hàng',
      'description':
          '• Vào mục "Hỗ trợ" để chat trực tiếp với nhân viên tư vấn.\n'
          '• Gọi hotline 24/7 để được hỗ trợ khẩn cấp.\n'
          '• Gửi email để nhận phản hồi chi tiết.\n'
          '• Xem mục FAQ để giải đáp nhanh các câu hỏi thường gặp.\n'
          '• Có thể gửi phản hồi về sản phẩm hoặc dịch vụ.\n'
          '• Hệ thống lưu lịch sử hỗ trợ để bạn dễ theo dõi.\n'
          '• Đánh giá dịch vụ hỗ trợ để cải thiện chất lượng.\n'
          '• Có thể yêu cầu gọi lại nếu không tiện nghe máy.\n'
          '• Hỗ trợ đa ngôn ngữ cho khách hàng quốc tế.\n'
          '• Nhận voucher cảm ơn khi tham gia khảo sát dịch vụ.',
    },
    {
      'title': '15. Bảo mật & quyền riêng tư',
      'description':
          '• App cam kết bảo mật thông tin cá nhân theo chuẩn quốc tế.\n'
          '• Không chia sẻ dữ liệu cho bên thứ ba nếu không có sự đồng ý.\n'
          '• Bạn có thể quản lý quyền riêng tư trong phần cài đặt.\n'
          '• Có thể xóa tài khoản nếu không muốn sử dụng nữa.\n'
          '• Dữ liệu được mã hóa khi truyền tải và lưu trữ.\n'
          '• Có thể tải xuống toàn bộ dữ liệu cá nhân để kiểm tra.\n'
          '• Hệ thống tuân thủ quy định GDPR và các luật bảo vệ dữ liệu.\n'
          '• Bạn có thể chọn không nhận email quảng cáo.\n'
          '• Có thể khóa tài khoản tạm thời khi cần.\n'
          '• Chính sách bảo mật được cập nhật thường xuyên và minh bạch.',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Cẩm nang sử dụng'),
        backgroundColor: const Color(0xFFBFAF9B),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: guideSteps.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, index) {
          final step = guideSteps[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green[100],
              child: Text(
                '${index + 1}',
                style: const TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            title: Text(
              step['title']!,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            subtitle: Text(
              step['description']!,
              style: const TextStyle(fontSize: 13, color: Colors.black87),
            ),
          );
        },
      ),
    );
  }
}
