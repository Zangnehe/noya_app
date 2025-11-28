import '../models/product.dart';

final List<Map<String, dynamic>> productList = [
  {
    'id': 'SP001',
    'name': 'Kem chống nắng La Roche-Posay Anthelios',
    'brand': 'La Roche-Posay',
    'type': 'chống nắng',
    "originalPrice": 320000,
    "discountPrice": 250000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-26T10:30:00",
    "promotionEnd": "2025-11-29T12:00:00",
    "stockQuantity": 120,
    'image':
        'https://product.hstatic.net/200000150709/product/387857923-332923989234326-6152903455516813115-n_44225c430863446185bb52542a5ed4e9.jpg',
    'promotion': 'Tặng 1 gel rửa mặt',
    'description':
        'Kem chống nắng La Roche-Posay Anthelios giúp bảo vệ da khỏi tia UVA/UVB, giảm nguy cơ lão hóa sớm và tổn thương da do ánh nắng. Công thức dịu nhẹ, phù hợp với da nhạy cảm và dễ kích ứng.',
    'specs': {
      'Dung tích': '50ml',
      'Kết cấu': 'Dạng kem mịn, thấm nhanh',
      'Chỉ số chống nắng': 'SPF50+ PA++++',
      'Loại da phù hợp': 'Mọi loại da, đặc biệt da nhạy cảm',
      'Khả năng chống nước': 'Có',
      'Không gây mụn': 'Đã kiểm nghiệm',
      'Không chứa cồn': 'Đúng',
      'Không chứa paraben': 'Đúng',
      'Độ pH': '5.5',
      'Xuất xứ': 'Pháp',
      'Hạn sử dụng': '36 tháng kể từ ngày sản xuất',
      'Ngày sản xuất': '10/2025',
      'Mã vạch': '3337872413644',
      'Phân phối tại Việt Nam': 'Công ty TNHH L’Oréal Việt Nam',
    },
    'ingredients': [
      'Mexoryl SX & XL',
      'Titanium Dioxide',
      'Glycerin',
      'Nước khoáng La Roche-Posay',
      'Vitamin E',
      'Niacinamide',
    ],
    'usage': '''
1. **Làm sạch da**: Rửa mặt bằng sữa rửa mặt phù hợp để loại bỏ bụi bẩn và dầu thừa.

2. **Dưỡng da cơ bản** *(nếu có)*: Thoa toner, serum hoặc kem dưỡng trước khi dùng kem chống nắng.

3. **Thoa kem chống nắng**:
   - Lấy một lượng vừa đủ (khoảng 1 đốt ngón tay) cho vùng mặt.
   - Thoa đều lên mặt, cổ và vùng da tiếp xúc với ánh nắng.
   - Vỗ nhẹ để kem thẩm thấu tốt hơn.

4. **Thời điểm sử dụng**:
   - Thoa trước khi ra ngoài ít nhất 15–20 phút.
   - Nếu tiếp xúc trực tiếp với ánh nắng, nên thoa lại sau mỗi 2 giờ.

5. **Sau khi bơi hoặc lau mặt**: Cần thoa lại để đảm bảo hiệu quả bảo vệ.

6. **Lưu ý**:
   - Không dùng cho vùng da bị tổn thương.
   - Tránh tiếp xúc trực tiếp với mắt.
   - Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp.
''',
  },
  {
    "id": "SP002",
    "name": "Sữa rửa mặt Cetaphil Gentle Skin Cleanser",
    "brand": "Cetaphil",
    "type": "sữa rửa mặt",
    "originalPrice": 145000,
    "discountPrice": 145000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-26T10:30:00",
    "promotionEnd": "2025-11-29T12:00:00",
    "stockQuantity": 100,
    "image":
        "https://www.guardian.com.vn/media/catalog/product/cache/30b2b44eba57cd45fd3ef9287600968e/s/u/sua-rua-mat-cetaphil-diu-nhe-khong-xa-phong-moi-3_7e864003c68b42ecb1b42088894cf086_zlktadjrdoqhjwme.jpg",
    "promotion": null,
    "description":
        "Cetaphil Gentle Skin Cleanser là sữa rửa mặt dịu nhẹ, không chứa xà phòng, giúp làm sạch bụi bẩn và dầu thừa mà không gây khô da. Phù hợp cho da nhạy cảm và da khô.",
    "specs": {
      "Dung tích": "125ml",
      "Kết cấu": "Dạng gel lỏng, không tạo bọt",
      "Loại da phù hợp": "Da nhạy cảm, da khô, da thường",
      "Không chứa xà phòng": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Độ pH": "6.5",
      "Xuất xứ": "Canada",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "3499320001234",
      "Phân phối tại Việt Nam": "Galderma Việt Nam",
    },
    "ingredients": [
      "Nước tinh khiết",
      "Cetyl Alcohol – chất làm mềm da",
      "Stearyl Alcohol – giúp giữ ẩm",
      "Propylene Glycol – giữ nước cho da",
      "Sodium Lauryl Sulfate – chất làm sạch",
      "Panthenol (Vitamin B5) – làm dịu da",
      "Niacinamide – hỗ trợ phục hồi hàng rào da",
      "Glycerin – dưỡng ẩm",
      "Disodium EDTA – ổn định công thức",
    ],
    "usage": '''
1. **Làm ướt da mặt** bằng nước sạch.

2. **Lấy sản phẩm**: Cho một lượng vừa đủ sữa rửa mặt ra tay.

3. **Thoa đều**: Massage nhẹ nhàng lên da theo chuyển động tròn.

4. **Làm sạch**: Rửa lại bằng nước sạch hoặc lau bằng khăn mềm.

5. **Tần suất sử dụng**: 2 lần/ngày (sáng và tối).

6. **Không cần nước**: Có thể thoa trực tiếp lên da rồi lau bằng khăn mềm.

7. **Kết hợp**: Dùng thêm kem dưỡng ẩm Cetaphil để tăng hiệu quả chăm sóc da.
''',
  },
  {
    "id": "SP003",
    "name": "Serum Paula’s Choice BHA 2%",
    "brand": "Paula’s Choice",
    "type": "serum",
    "originalPrice": 500000,
    "discountPrice": 450000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 80,
    "image":
        "https://mint07.com/wp-content/uploads/2016/05/paulas-choice-skin-perfecting-2-bha-liquid-scaled.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Serum Paula’s Choice BHA 2% giúp loại bỏ tế bào chết, làm sạch sâu lỗ chân lông, giảm mụn đầu đen và cải thiện kết cấu da.",
    "specs": {
      "Dung tích": "30ml",
      "Kết cấu": "Dạng lỏng, thấm nhanh",
      "Thành phần chính": "Salicylic Acid 2%",
      "Loại da phù hợp": "Da dầu, da mụn, da hỗn hợp",
      "Không chứa hương liệu": "Đúng",
      "Không chứa cồn": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "0655439001234",
      "Phân phối tại Việt Nam": "Paula’s Choice Việt Nam",
    },
    "ingredients": [
      "Salicylic Acid (BHA) – tẩy tế bào chết",
      "Green Tea Extract – chống oxy hóa",
      "Methylpropanediol – tăng khả năng thẩm thấu",
      "Butylene Glycol – giữ ẩm",
      "Sodium Hydroxide – cân bằng pH",
      "Chamomile Extract – làm dịu da",
      "Panthenol – phục hồi da",
      "Allantoin – giảm kích ứng",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. **Làm sạch da** bằng sữa rửa mặt dịu nhẹ.

2. **Cân bằng da**: Thoa toner (nếu có).

3. **Thoa serum**:
   - Lấy 2–3 giọt serum BHA.
   - Thoa đều lên toàn mặt, tránh vùng mắt và môi.

4. **Tần suất sử dụng**:
   - 1 lần/ngày vào buổi tối.
   - Tuần 2–3 lần để da làm quen.
   - Khi da đã thích ứng, có thể tăng tần suất lên mỗi ngày.

5. **Bảo vệ da**: Luôn dùng kem chống nắng vào ban ngày khi sử dụng BHA.

6. **Kết hợp**: Có thể dùng chung với serum Niacinamide hoặc Hyaluronic Acid để tăng hiệu quả.

7. **Lưu ý**: Không dùng chung với sản phẩm chứa Retinol trong cùng một lần thoa.
''',
  },
  {
    "id": "SP004",
    "name": "Toner Klairs Supple Preparation",
    "brand": "Klairs",
    "type": "toner",
    "originalPrice": 280000,
    "discountPrice": 250000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 120,
    "image":
        "https://klairsvietnam.vn/wp-content/uploads/2020/07/nuoc-hoa-hong-khong-mui-klairs.jpg",
    "promotion": "Giảm 10% khi mua kèm serum",
    "description":
        "Toner Klairs Supple Preparation giúp cân bằng độ pH, cấp ẩm tức thì và tăng hiệu quả hấp thụ dưỡng chất cho da.",
    "specs": {
      "Dung tích": "180ml",
      "Kết cấu": "Dạng lỏng, thấm nhanh",
      "Loại da phù hợp": "Mọi loại da, đặc biệt da nhạy cảm",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Có thể dùng cho da mụn": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "8809115021234",
      "Phân phối tại Việt Nam": "Công ty TNHH Klairs Việt Nam",
    },
    "ingredients": [
      "Phyto-Oligo – cấp ẩm sâu",
      "Amino Acids – phục hồi da",
      "Beta-Glucan – tăng cường miễn dịch da",
      "Hyaluronic Acid – giữ nước",
      "Aloe Vera Extract – làm dịu da",
      "Licorice Root Extract – sáng da",
      "Centella Asiatica Extract – giảm kích ứng",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu",
    ],
    "usage": '''
1. Sau khi rửa mặt, lấy một lượng toner ra bông cotton hoặc tay sạch.

2. Thoa đều lên mặt và cổ.

3. Vỗ nhẹ để dưỡng chất thẩm thấu.

4. Sử dụng sáng và tối trước serum/kem dưỡng.

5. Có thể dùng làm lotion mask bằng cách thấm toner vào bông cotton và đắp lên da 5 phút.

6. Kết hợp với serum Vitamin C hoặc Niacinamide để tăng hiệu quả dưỡng sáng.
''',
  },
  {
    "id": "SP005",
    "name": "Kem dưỡng CeraVe Moisturizing Cream",
    "brand": "CeraVe",
    "type": "kem dưỡng",
    "originalPrice": 310000,
    "discountPrice": 280000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 150,
    "image":
        "https://media.hcdn.vn/catalog/product/k/e/kem-duong-cerave-cho-da-kho-den-rat-kho-50ml-1-1743218557_img_450x450_31d6f9_fit_center.jpg",
    "promotion": "Tặng 1 mặt nạ",
    "description":
        "Kem dưỡng CeraVe Moisturizing Cream cung cấp độ ẩm sâu, phục hồi hàng rào bảo vệ da nhờ Ceramide và Hyaluronic Acid.",
    "specs": {
      "Dung tích": "340g",
      "Kết cấu": "Dạng kem đặc, thấm nhanh",
      "Loại da phù hợp": "Da khô, da thường, da nhạy cảm",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Không chứa cồn": "Đúng",
      "Có thể dùng cho trẻ em": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "3606000531234",
      "Phân phối tại Việt Nam": "Công ty TNHH L'Oréal Việt Nam",
    },
    "ingredients": [
      "Ceramide NP, AP, EOP – phục hồi hàng rào da",
      "Hyaluronic Acid – cấp ẩm sâu",
      "Glycerin – dưỡng ẩm",
      "Petrolatum – khóa ẩm",
      "Cholesterol – tăng cường bảo vệ da",
      "Dimethicone – làm mềm da",
      "Caprylic/Capric Triglyceride – dưỡng chất từ dầu dừa",
      "Niacinamide – làm sáng da",
    ],
    "usage": '''
1. Sau bước làm sạch và toner, lấy một lượng kem vừa đủ.

2. Thoa đều lên mặt và cơ thể.

3. Sử dụng 2 lần/ngày (sáng và tối).

4. Có thể dùng cho trẻ em và người lớn.

5. Kết hợp với serum dưỡng ẩm để tăng hiệu quả phục hồi da.

6. Thoa nhiều hơn vào vùng da khô ráp như khuỷu tay, đầu gối.
''',
  },
  {
    "id": "SP006",
    "name": "Mặt nạ Mediheal Tea Tree",
    "brand": "Mediheal",
    "type": "mặt nạ",
    "originalPrice": 25000,
    "discountPrice": 20000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 500,
    "image": "https://images.soco.id/75256f56-6e90-4e3c-9b5c-602eae74f6ae-.jpg",
    "promotion": "Mua 5 tặng 1",
    "description":
        "Mặt nạ Mediheal Tea Tree giúp làm dịu da, giảm mụn và kiểm soát dầu nhờn hiệu quả.",
    "specs": {
      "Dung tích": "25ml/túi",
      "Kết cấu": "Dạng giấy cotton thấm tinh chất",
      "Loại da phù hợp": "Da dầu, da mụn",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "8809472841234",
      "Phân phối tại Việt Nam": "Công ty TNHH Mediheal Việt Nam",
    },
    "ingredients": [
      "Tea Tree Extract – kháng khuẩn, giảm mụn",
      "Centella Asiatica Extract – làm dịu da",
      "Chamomile Extract – giảm kích ứng",
      "Allantoin – phục hồi da",
      "Sodium Hyaluronate – cấp ẩm",
      "Witch Hazel Extract – se khít lỗ chân lông",
      "Panthenol – dưỡng da",
      "Betaine – giữ nước",
    ],
    "usage": '''
1. Sau khi rửa mặt, lấy mặt nạ ra khỏi túi.
2. Đắp lên mặt, căn chỉnh cho vừa vặn.
3. Thư giãn 15–20 phút.
4. Gỡ mặt nạ, vỗ nhẹ tinh chất còn lại để thẩm thấu.
5. Không cần rửa lại bằng nước, tiếp tục các bước dưỡng da sau đó.
6. Sử dụng 2–3 lần/tuần để đạt hiệu quả tốt nhất.
''',
  },
  {
    "id": "SP007",
    "name": "Nước tẩy trang Bioderma Sensibio",
    "brand": "Bioderma",
    "type": "tẩy trang",
    "originalPrice": 290000,
    "discountPrice": 260000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 300,
    "image":
        "https://media.hcdn.vn/wysiwyg/HaNguyen/nuoc-tay-trang-bioderma-danh-cho-da-nhay-cam-1_1.jpg",
    "promotion": "Tặng 1 bông tẩy trang",
    "description":
        "Nước tẩy trang Bioderma Sensibio làm sạch lớp trang điểm và bụi bẩn, đồng thời làm dịu da nhạy cảm.",
    "specs": {
      "Dung tích": "500ml",
      "Kết cấu": "Dạng nước trong suốt",
      "Loại da phù hợp": "Da nhạy cảm, da thường",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "3401345931234",
      "Phân phối tại Việt Nam": "Công ty TNHH Bioderma Việt Nam",
    },
    "ingredients": [
      "Micelle Technology – làm sạch sâu",
      "Cucumber Extract – làm dịu da",
      "Mannitol – chống oxy hóa",
      "Xylitol – giữ ẩm",
      "Propylene Glycol – dung môi",
      "Disodium EDTA – ổn định công thức",
    ],
    "usage": '''
1. Thấm nước tẩy trang vào bông cotton.
2. Lau nhẹ nhàng toàn mặt để loại bỏ lớp trang điểm và bụi bẩn.
3. Không cần rửa lại bằng nước (nhưng có thể rửa nếu muốn).
4. Sử dụng hàng ngày, sáng và tối.
5. Có thể dùng cho vùng mắt và môi.
''',
  },
  {
    "id": "SP008",
    "name": "Kem chống nắng Skin1004 Madagascar",
    "brand": "Skin1004",
    "type": "chống nắng",
    "originalPrice": 265000,
    "discountPrice": 240000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://file.hstatic.net/1000360941/file/chong_nang_skin1004_863da4e03f824793bc73ccef6e898354.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Kem chống nắng Skin1004 Madagascar Centella Air-Fit Suncream SPF50+ PA++++ bảo vệ da khỏi tia UVA/UVB, đồng thời làm dịu da nhờ chiết xuất rau má.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng kem mỏng nhẹ, thấm nhanh",
      "Chỉ số chống nắng": "SPF50+ PA++++",
      "Loại da phù hợp": "Mọi loại da, đặc biệt da nhạy cảm",
      "Khả năng chống nước": "Có",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8809572891234",
      "Phân phối tại Việt Nam": "Công ty TNHH Skin1004 Việt Nam",
    },
    "ingredients": [
      "Centella Asiatica Extract – làm dịu da",
      "Niacinamide – sáng da",
      "Titanium Dioxide – chống nắng vật lý",
      "Zinc Oxide – chống nắng phổ rộng",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
    ],
    "usage": '''
1. Làm sạch da và dưỡng da cơ bản.
2. Lấy một lượng vừa đủ thoa đều lên mặt và cổ.
3. Thoa trước khi ra ngoài 15–20 phút.
4. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng.
5. Kết hợp với kem dưỡng để tăng hiệu quả bảo vệ da.
''',
  },
  {
    "id": "SP009",
    "name": "Sữa rửa mặt Senka Perfect Whip",
    "brand": "Senka",
    "type": "sữa rửa mặt",
    "originalPrice": 85000,
    "discountPrice": 72000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 400,
    "image":
        "https://mint07.com/wp-content/uploads/2021/07/srm-senka-perfect-whip-acne-care-100g-5.jpg",
    "promotion": "Giảm 15%",
    "description":
        "Senka Perfect Whip tạo bọt mịn giúp làm sạch sâu bụi bẩn và dầu thừa, mang lại làn da mềm mịn.",
    "specs": {
      "Dung tích": "120g",
      "Kết cấu": "Dạng kem tạo bọt",
      "Loại da phù hợp": "Da thường, da dầu",
      "Có hương liệu": "Có",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "4901872441234",
      "Phân phối tại Việt Nam": "Công ty TNHH Shiseido Việt Nam",
    },
    "ingredients": [
      "Aqua – dung môi",
      "Stearic Acid – tạo bọt",
      "PEG-8 – giữ ẩm",
      "Lauric Acid – làm sạch",
      "Sodium Benzoate – chất bảo quản",
      "Glycerin – dưỡng ẩm",
      "Potassium Hydroxide – cân bằng pH",
      "Myristic Acid – tăng khả năng tạo bọt",
      "Fragrance – hương liệu",
    ],
    "usage": '''
1. Làm ướt da mặt bằng nước sạch.

2. Lấy một lượng nhỏ sản phẩm, tạo bọt với nước.

3. Massage nhẹ nhàng lên mặt theo chuyển động tròn.

4. Rửa lại bằng nước sạch.

5. Sử dụng 2 lần/ngày (sáng và tối).

6. Kết hợp với toner và kem dưỡng để đạt hiệu quả chăm sóc da tối ưu.
''',
  },
  {
    "id": "SP010",
    "name": "Serum The Ordinary Niacinamide 10%",
    "brand": "The Ordinary",
    "type": "serum",
    "originalPrice": 280000,
    "discountPrice": 250000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 100,
    "image":
        "https://naricosmetics.com/wp-content/uploads/2021/04/serum-the-ordinari.jpg",
    "promotion": null,
    "description":
        "Serum The Ordinary Niacinamide 10% + Zinc 1% giúp giảm dầu thừa, thu nhỏ lỗ chân lông và cải thiện kết cấu da.",
    "specs": {
      "Dung tích": "30ml",
      "Kết cấu": "Dạng lỏng, thấm nhanh",
      "Thành phần chính": "Niacinamide 10%, Zinc PCA 1%",
      "Loại da phù hợp": "Da dầu, da mụn, da hỗn hợp",
      "Không chứa hương liệu": "Đúng",
      "Không chứa cồn": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Canada",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "7699151901234",
      "Phân phối tại Việt Nam": "Công ty TNHH Deciem Việt Nam",
    },
    "ingredients": [
      "Niacinamide – giảm dầu thừa, thu nhỏ lỗ chân lông",
      "Zinc PCA – kiểm soát bã nhờn",
      "Pentylene Glycol – dung môi, giữ ẩm",
      "Tamarindus Indica Seed Gum – làm mềm da",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy 2–3 giọt serum.

2. Thoa đều lên mặt, tránh vùng mắt và môi.

3. Sử dụng 1–2 lần/ngày.

4. Luôn dùng kem chống nắng ban ngày khi sử dụng Niacinamide.

5. Có thể kết hợp với Hyaluronic Acid để tăng hiệu quả dưỡng ẩm.
''',
  },
  {
    "id": "SP011",
    "name": "Toner Mamonde Rose Water",
    "brand": "Mamonde",
    "type": "toner",
    "originalPrice": 210000,
    "discountPrice": 190000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 150,
    "image":
        "https://product.hstatic.net/200000150709/product/nuoc_hoa_hong_duong_am_mamonde_rose_water_toner_150ml2_51c7110f41564d659b9fe6e83ecf3a6c.jpg",
    "promotion": "Tặng 1 mặt nạ",
    "description":
        "Toner Mamonde Rose Water chứa 90,97% chiết xuất hoa hồng Damask, giúp cấp ẩm và làm dịu da.",
    "specs": {
      "Dung tích": "250ml",
      "Kết cấu": "Dạng lỏng, mùi hương hoa hồng dịu nhẹ",
      "Loại da phù hợp": "Mọi loại da",
      "Có hương liệu tự nhiên": "Đúng",
      "Không chứa cồn": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "8809535801234",
      "Phân phối tại Việt Nam": "Công ty TNHH AmorePacific Việt Nam",
    },
    "ingredients": [
      "Damask Rose Extract – cấp ẩm, làm dịu da",
      "Glycerin – dưỡng ẩm",
      "Butylene Glycol – dung môi, giữ ẩm",
      "Betaine – giữ nước",
      "Allantoin – làm dịu da",
      "Panthenol – phục hồi da",
    ],
    "usage": '''
1. Sau khi rửa mặt, lấy toner ra bông cotton hoặc tay sạch.

2. Thoa đều lên mặt và cổ.

3. Vỗ nhẹ để dưỡng chất thẩm thấu.

4. Sử dụng sáng và tối trước serum/kem dưỡng.

5. Có thể dùng làm xịt khoáng cấp ẩm tức thì.
''',
  },
  {
    "id": "SP012",
    "name": "Kem dưỡng La Roche-Posay Cicaplast",
    "brand": "La Roche-Posay",
    "type": "kem dưỡng",
    "originalPrice": 340000,
    "discountPrice": 310000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 120,
    "image":
        "https://product.hstatic.net/200000542135/product/la5_5d6160a8b18d4958ad16e9a4e588cc79.jpg",
    "promotion": null,
    "description":
        "Kem dưỡng La Roche-Posay Cicaplast Baume B5 giúp phục hồi da, làm dịu và giảm kích ứng, thích hợp cho da nhạy cảm hoặc da bị tổn thương.",
    "specs": {
      "Dung tích": "40ml",
      "Kết cấu": "Dạng kem đặc, dễ thấm",
      "Loại da phù hợp": "Da nhạy cảm, da khô, da tổn thương",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Không chứa cồn": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "3337872411234",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oréal Việt Nam",
    },
    "ingredients": [
      "Panthenol (Vitamin B5) – phục hồi da",
      "Madecassoside – giảm viêm, làm dịu",
      "Shea Butter – dưỡng ẩm",
      "Glycerin – cấp ẩm",
      "Nước khoáng La Roche-Posay – làm dịu da",
      "Zinc Gluconate – kháng khuẩn",
      "Copper Gluconate – hỗ trợ tái tạo da",
    ],
    "usage": '''
1. Làm sạch da bằng sữa rửa mặt dịu nhẹ.

2. Lấy một lượng kem vừa đủ, thoa lên vùng da cần phục hồi.

3. Sử dụng 2 lần/ngày (sáng và tối).

4. Có thể dùng cho mặt và cơ thể.

5. Thoa nhiều hơn vào vùng da khô, bong tróc hoặc kích ứng.
''',
  },
  {
    "id": "SP013",
    "name": "Mặt nạ Naruko Tea Tree",
    "brand": "Naruko",
    "type": "mặt nạ",
    "originalPrice": 27000,
    "discountPrice": 24000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 400,
    "image":
        "https://kyo.vn/wp-content/uploads/2021/04/MAT-NA-TRAM-TRA-NARUKO-TEA-TREE-SHINE-CONTROL-BLEMISH-CLEAR-MASK-bao-bi.jpg",
    "promotion": "Mua 5 tặng 1",
    "description":
        "Mặt nạ Naruko Tea Tree giúp kiểm soát dầu nhờn, làm dịu da và hỗ trợ giảm mụn.",
    "specs": {
      "Dung tích": "25ml/túi",
      "Kết cấu": "Dạng giấy cotton thấm tinh chất",
      "Loại da phù hợp": "Da dầu, da mụn",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Đài Loan",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "4711234567890",
      "Phân phối tại Việt Nam": "Công ty TNHH Naruko Việt Nam",
    },
    "ingredients": [
      "Tea Tree Oil – kháng khuẩn, giảm mụn",
      "Salicylic Acid – tẩy tế bào chết, giảm dầu",
      "Niacinamide – làm sáng da, thu nhỏ lỗ chân lông",
      "Allantoin – làm dịu, phục hồi da",
      "Glycerin – dưỡng ẩm",
      "Centella Asiatica Extract – giảm kích ứng",
    ],
    "usage": '''
1. Sau khi rửa mặt, lấy mặt nạ ra khỏi túi.

2. Đắp lên mặt, căn chỉnh cho vừa vặn.

3. Thư giãn 15–20 phút.

4. Gỡ mặt nạ, vỗ nhẹ tinh chất còn lại để thẩm thấu.

5. Không cần rửa lại bằng nước, tiếp tục các bước dưỡng da sau đó.

6. Sử dụng 2–3 lần/tuần để đạt hiệu quả tốt nhất.
''',
  },
  {
    "id": "SP014",
    "name": "Nước tẩy trang L’Oreal Micellar Water",
    "brand": "L’Oreal",
    "type": "tẩy trang",
    "originalPrice": 180000,
    "discountPrice": 160000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 250,
    "image":
        "https://mint07.com/wp-content/uploads/2021/07/tay-trang-loreal-revitalift-crystal-purifying-1.jpg",
    "promotion": null,
    "description":
        "Nước tẩy trang L’Oreal Micellar Water làm sạch lớp trang điểm và bụi bẩn, đồng thời cấp ẩm nhẹ cho da.",
    "specs": {
      "Dung tích": "400ml",
      "Kết cấu": "Dạng nước trong suốt",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "3600523431234",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oreal Việt Nam",
    },
    "ingredients": [
      "Micelle Technology – làm sạch sâu",
      "Glycerin – dưỡng ẩm",
      "Poloxamer 184 – chất làm sạch dịu nhẹ",
      "Disodium EDTA – ổn định công thức",
      "Propylene Glycol – dung môi",
      "Cucumber Extract – làm dịu da",
    ],
    "usage": '''
1. Thấm nước tẩy trang vào bông cotton.

2. Lau nhẹ nhàng toàn mặt để loại bỏ lớp trang điểm và bụi bẩn.

3. Không cần rửa lại bằng nước (nhưng có thể rửa nếu muốn).

4. Sử dụng hàng ngày, sáng và tối.

5. Có thể dùng cho vùng mắt và môi.
''',
  },
  {
    "id": "SP015",
    "name": "Kem chống nắng Anessa Perfect UV",
    "brand": "Anessa",
    "type": "chống nắng",
    "originalPrice": 420000,
    "discountPrice": 399000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://file.hstatic.net/1000223746/file/444833961_1951171525339826_3869668363523474924_n_grande.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Kem chống nắng Anessa Perfect UV Sunscreen SPF50+ PA++++ bảo vệ da tối ưu, chống nước và mồ hôi, thích hợp cho hoạt động ngoài trời.",
    "specs": {
      "Dung tích": "60ml",
      "Kết cấu": "Dạng sữa lỏng, thấm nhanh",
      "Chỉ số chống nắng": "SPF50+ PA++++",
      "Loại da phù hợp": "Mọi loại da",
      "Khả năng chống nước": "Có",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "4901872445678",
      "Phân phối tại Việt Nam": "Công ty TNHH Shiseido Việt Nam",
    },
    "ingredients": [
      "Zinc Oxide – chống nắng phổ rộng",
      "Titanium Dioxide – chống nắng vật lý",
      "Hyaluronic Acid – cấp ẩm",
      "Green Tea Extract – chống oxy hóa",
      "Silica – kiểm soát dầu",
      "Panthenol – phục hồi da",
    ],
    "usage": '''
1. Lắc đều trước khi sử dụng.

2. Lấy một lượng vừa đủ thoa đều lên mặt và cơ thể.

3. Thoa trước khi ra ngoài 15–20 phút.

4. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng.

5. Dùng sau các bước dưỡng da cơ bản để tăng hiệu quả bảo vệ.
''',
  },
  {
    "id": "SP016",
    "name": "Sữa rửa mặt Simple Kind to Skin",
    "brand": "Simple",
    "type": "sữa rửa mặt",
    "originalPrice": 95000,
    "discountPrice": 85000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 300,
    "image":
        "https://nguonmypham.com/wp-content/uploads/15461-combo-simple-lam-sach-can-bang-diu-nhe-da-nhay-cam-3-mon-3-4.jpg",
    "promotion": null,
    "description":
        "Sữa rửa mặt Simple Kind to Skin Refreshing Facial Wash Gel làm sạch nhẹ nhàng, không chứa hương liệu, phù hợp cho da nhạy cảm.",
    "specs": {
      "Dung tích": "150ml",
      "Kết cấu": "Dạng gel trong suốt",
      "Loại da phù hợp": "Da nhạy cảm, da thường",
      "Không chứa hương liệu": "Đúng",
      "Không chứa màu nhân tạo": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Anh",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "5011451101234",
      "Phân phối tại Việt Nam": "Unilever Việt Nam",
    },
    "ingredients": [
      "Pro-Vitamin B5 – phục hồi da",
      "Chamomile Extract – làm dịu da",
      "Glycerin – dưỡng ẩm",
      "Aqua – dung môi",
      "Panthenol – dưỡng chất",
      "Allantoin – giảm kích ứng",
    ],
    "usage": '''
1. Làm ướt da mặt bằng nước sạch.

2. Lấy một lượng gel vừa đủ, thoa đều lên mặt.

3. Massage nhẹ nhàng theo chuyển động tròn.

4. Rửa lại bằng nước sạch.

5. Sử dụng 2 lần/ngày (sáng và tối).

6. Kết hợp với toner và kem dưỡng để đạt hiệu quả chăm sóc da tối ưu.
''',
  },
  {
    "id": "SP017",
    "name": "Serum Vichy Mineral 89",
    "brand": "Vichy",
    "type": "serum",
    "originalPrice": 490000,
    "discountPrice": 450000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://beco.vn/wp-content/uploads/2024/04/Artboard-1-copy-5-100-38.jpg",
    "promotion": "Tặng 1 mini size",
    "description":
        "Serum Vichy Mineral 89 chứa 89% nước khoáng Vichy và Hyaluronic Acid, giúp cấp ẩm sâu, tăng cường hàng rào bảo vệ da.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng gel lỏng, thấm nhanh",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa hương liệu": "Đúng",
      "Không chứa cồn": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "3337875541234",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oréal Việt Nam",
    },
    "ingredients": [
      "Vichy Mineralizing Water – tăng cường hàng rào da",
      "Hyaluronic Acid – cấp ẩm sâu",
      "Glycerin – dưỡng ẩm",
      "Citric Acid – cân bằng pH",
      "Butylene Glycol – dung môi",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy 2 giọt serum.

2. Thoa đều lên mặt và cổ.

3. Sử dụng sáng và tối trước kem dưỡng.

4. Kết hợp với kem dưỡng ẩm để tăng hiệu quả phục hồi da.
''',
  },
  {
    "id": "SP018",
    "name": "Toner Thayers Witch Hazel",
    "brand": "Thayers",
    "type": "toner",
    "originalPrice": 230000,
    "discountPrice": 210000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 250,
    "image":
        "https://product.hstatic.net/200000150709/product/laven_e36bb7e1fdef4034a92d7493dae037de.jpg",
    "promotion": null,
    "description":
        "Toner Thayers Witch Hazel chiết xuất từ cây phỉ và lô hội, giúp làm sạch, se khít lỗ chân lông và làm dịu da.",
    "specs": {
      "Dung tích": "355ml",
      "Kết cấu": "Dạng lỏng, mùi hương nhẹ",
      "Loại da phù hợp": "Da dầu, da hỗn hợp",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "0415070651234",
      "Phân phối tại Việt Nam": "Công ty TNHH Thayers Việt Nam",
    },
    "ingredients": [
      "Witch Hazel Extract – se khít lỗ chân lông",
      "Aloe Vera – làm dịu da",
      "Rose Water – cấp ẩm",
      "Glycerin – dưỡng ẩm",
      "Citric Acid – cân bằng pH",
      "Allantoin – phục hồi da",
    ],
    "usage": '''
1. Sau khi rửa mặt, thấm toner vào bông cotton.

2. Lau nhẹ nhàng toàn mặt và cổ.

3. Sử dụng sáng và tối trước serum/kem dưỡng.

4. Có thể dùng làm lotion mask để cấp ẩm tức thì.
''',
  },
  {
    "id": "SP019",
    "name": "Kem dưỡng Neutrogena Hydro Boost",
    "brand": "Neutrogena",
    "type": "kem dưỡng",
    "originalPrice": 295000,
    "discountPrice": 265000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://product.hstatic.net/200000551679/product/1_a90f57e8a70947be952e454aa5ffe6d4_grande.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Kem dưỡng Neutrogena Hydro Boost Gel-Cream cấp nước tức thì, giữ ẩm suốt 48 giờ nhờ Hyaluronic Acid.",
    "specs": {
      "Dung tích": "50g",
      "Kết cấu": "Dạng gel mát, thấm nhanh",
      "Loại da phù hợp": "Da khô, da thường",
      "Không chứa dầu": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "0705011101234",
      "Phân phối tại Việt Nam": "Johnson & Johnson Việt Nam",
    },
    "ingredients": [
      "Hyaluronic Acid – cấp ẩm sâu, giữ nước cho da",
      "Glycerin – dưỡng ẩm, làm mềm da",
      "Dimethicone – khóa ẩm, tạo lớp bảo vệ",
      "Sodium Hyaluronate – tăng khả năng giữ nước",
      "Panthenol – phục hồi da",
      "Cetearyl Olivate – làm mềm da",
      "Sorbitol – giữ ẩm tự nhiên",
    ],
    "usage": '''
1. Sau khi rửa mặt và serum, lấy một lượng kem vừa đủ.

2. Thoa đều lên mặt và cổ, massage nhẹ nhàng.

3. Sử dụng sáng và tối để duy trì độ ẩm suốt ngày dài.

4. Dùng nhiều hơn ở vùng da khô ráp như má, cằm.

5. Kết hợp với kem chống nắng ban ngày để bảo vệ da tối ưu.
''',
  },
  {
    "id": "SP020",
    "name": "Mặt nạ Lululun Moisture Rich",
    "brand": "Lululun",
    "type": "mặt nạ",
    "originalPrice": 30000,
    "discountPrice": 27000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 500,
    "image":
        "https://mint07.com/wp-content/uploads/2023/04/mat-na-lululun-precious-7-mieng-moist-mau-do.jpg",
    "promotion": null,
    "description":
        "Mặt nạ Lululun Moisture Rich cung cấp độ ẩm dồi dào, giúp da mềm mịn và căng bóng.",
    "specs": {
      "Dung tích": "22ml/túi",
      "Kết cấu": "Dạng giấy cotton thấm tinh chất",
      "Loại da phù hợp": "Da khô, da thường",
      "Không chứa cồn": "Đúng",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "4901234567890",
      "Phân phối tại Việt Nam": "Công ty TNHH Lululun Việt Nam",
    },
    "ingredients": [
      "Hyaluronic Acid – cấp ẩm sâu",
      "Collagen – tăng độ đàn hồi da",
      "Vitamin E – chống oxy hóa",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Aloe Vera Extract – làm dịu da",
      "Rice Bran Extract – nuôi dưỡng da",
    ],
    "usage": '''
1. Sau khi rửa mặt, lấy mặt nạ ra khỏi túi.

2. Đắp lên mặt, căn chỉnh cho vừa vặn.

3. Thư giãn 15–20 phút để tinh chất thẩm thấu.

4. Gỡ mặt nạ, vỗ nhẹ tinh chất còn lại để thẩm thấu.

5. Không cần rửa lại bằng nước, tiếp tục các bước dưỡng da sau đó.

6. Sử dụng 2–3 lần/tuần để duy trì độ ẩm và độ căng bóng cho da.
''',
  },
  {
    "id": "SP021",
    "name": "Toner Innisfree Green Tea Balancing",
    "brand": "Innisfree",
    "type": "toner",
    "originalPrice": 195000,
    "discountPrice": 175000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://xachtaynhat.net/wp-content/uploads/2021/03/toner-Innisfree-tra-xanh-Green-Te.jpg",
    "promotion": null,
    "description":
        "Toner Innisfree Green Tea Balancing chứa chiết xuất trà xanh Jeju, giúp cấp ẩm và cân bằng da.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dạng lỏng, mùi trà xanh dịu nhẹ",
      "Loại da phù hợp": "Da thường, da hỗn hợp",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "8801234567890",
      "Phân phối tại Việt Nam": "Công ty TNHH Innisfree Việt Nam",
    },
    "ingredients": [
      "Green Tea Extract – chống oxy hóa, cấp ẩm",
      "Panthenol – phục hồi da",
      "Glycerin – dưỡng ẩm",
      "Betaine – giữ nước",
      "Allantoin – làm dịu da",
      "Aloe Vera Extract – làm mát da",
      "Vitamin C – hỗ trợ sáng da",
    ],
    "usage": '''
1. Sau khi rửa mặt, lấy toner ra bông cotton hoặc tay sạch.

2. Thoa đều lên mặt và cổ.

3. Vỗ nhẹ để dưỡng chất thẩm thấu.

4. Sử dụng sáng và tối trước serum/kem dưỡng.

5. Có thể dùng làm lotion mask để cấp ẩm tức thì.
''',
  },
  {
    "id": "SP022",
    "name": "Serum Some By Mi AHA-BHA-PHA 30 Days",
    "brand": "Some By Mi",
    "type": "serum",
    "originalPrice": 310000,
    "discountPrice": 279000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://file.hstatic.net/200000551679/file/some_by_mi_tinh_chat_aha-bha-pha_30_days_miracle_serum_50ml_bcf0b3234c944a8c99fdd32ed4711cc4_1024x1024.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Serum Some By Mi AHA-BHA-PHA 30 Days Miracle Serum giúp tẩy tế bào chết nhẹ nhàng, giảm mụn và làm sáng da.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng lỏng, thấm nhanh",
      "Loại da phù hợp": "Da dầu, da mụn",
      "Không chứa hương liệu": "Đúng",
      "Không chứa cồn": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8809647391234",
      "Phân phối tại Việt Nam": "Công ty TNHH Some By Mi Việt Nam",
    },
    "ingredients": [
      "AHA – loại bỏ tế bào chết bề mặt",
      "BHA – làm sạch sâu lỗ chân lông",
      "PHA – tẩy tế bào chết dịu nhẹ",
      "Tea Tree Extract – kháng khuẩn, giảm mụn",
      "Centella Asiatica Extract – làm dịu da",
      "Niacinamide – làm sáng da",
      "Panthenol – phục hồi da",
      "Allantoin – giảm kích ứng",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy 2–3 giọt serum.

2. Thoa đều lên mặt, tránh vùng mắt và môi.

3. Sử dụng buổi tối, tuần 2–3 lần để da làm quen.

4. Khi da đã thích ứng, có thể tăng tần suất lên mỗi ngày.

5. Luôn dùng kem chống nắng ban ngày khi sử dụng.

6. Kết hợp với serum dưỡng ẩm để giảm khô da.
''',
  },
  {
    "id": "SP023",
    "name": "Kem dưỡng Hada Labo Advanced Nourish",
    "brand": "Hada Labo",
    "type": "kem dưỡng",
    "originalPrice": 220000,
    "discountPrice": 200000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 250,
    "image": "https://images.soco.id/de4b8158-f7fe-4bd6-8851-2312f823df01-.jpg",
    "promotion": null,
    "description":
        "Kem dưỡng Hada Labo Advanced Nourish cấp ẩm sâu, giúp da mềm mịn và đàn hồi nhờ Hyaluronic Acid đa tầng.",
    "specs": {
      "Dung tích": "50g",
      "Kết cấu": "Dạng kem mịn, thấm nhanh",
      "Loại da phù hợp": "Da khô, da thường",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "4987107611234",
      "Phân phối tại Việt Nam": "Rohto Việt Nam",
    },
    "ingredients": [
      "Super Hyaluronic Acid – cấp ẩm đa tầng",
      "Glycerin – dưỡng ẩm",
      "Vitamin E – chống oxy hóa",
      "Butylene Glycol – giữ nước",
      "Squalane – làm mềm da",
      "Panthenol – phục hồi da",
    ],
    "usage": '''
1. Sau khi rửa mặt và serum, lấy một lượng kem vừa đủ.

2. Thoa đều lên mặt và cổ, massage nhẹ nhàng.

3. Sử dụng sáng và tối để duy trì độ ẩm.

4. Có thể dùng làm lớp khóa ẩm cuối cùng trong chu trình dưỡng da.

5. Kết hợp với toner Hada Labo để tăng hiệu quả dưỡng ẩm.
''',
  },
  {
    "id": "SP024",
    "name": "Mặt nạ Banobagi Vita Genic Jelly",
    "brand": "Banobagi",
    "type": "mặt nạ",
    "originalPrice": 27000,
    "discountPrice": 24000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 600,
    "image":
        "https://linkstore.vn/wp-content/uploads/2023/06/Mat-na-Banobagi-Vita-Genic-Jelly-Mask-Premium-2024-1.jpg",
    "promotion": "Mua 4 tặng 1",
    "description":
        "Mặt nạ Banobagi Vita Genic Jelly chứa vitamin cô đặc, giúp cấp ẩm và nuôi dưỡng da sáng khỏe.",
    "specs": {
      "Dung tích": "25ml/túi",
      "Kết cấu": "Dạng giấy cotton thấm tinh chất",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa cồn": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "8809572891234",
      "Phân phối tại Việt Nam": "Công ty TNHH Banobagi Việt Nam",
    },
    "ingredients": [
      "Vitamin C – làm sáng da",
      "Niacinamide – cải thiện kết cấu da",
      "Hyaluronic Acid – cấp ẩm sâu",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu",
      "Chamomile Extract – giảm kích ứng",
    ],
    "usage": '''
1. Sau khi rửa mặt, lấy mặt nạ ra khỏi túi.

2. Đắp lên mặt, căn chỉnh cho vừa vặn.

3. Thư giãn 15–20 phút để tinh chất thẩm thấu.

4. Gỡ mặt nạ, vỗ nhẹ tinh chất còn lại để thẩm thấu.

5. Không cần rửa lại bằng nước, tiếp tục các bước dưỡng da sau đó.

6. Sử dụng 2–3 lần/tuần để duy trì làn da sáng khỏe.
''',
  },
  {
    "id": "SP025",
    "name": "Sữa rửa mặt Cosrx Low pH Good Morning",
    "brand": "Cosrx",
    "type": "sữa rửa mặt",
    "originalPrice": 145000,
    "discountPrice": 130000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 250,
    "image":
        "https://xachtaynhat.net/wp-content/uploads/2021/06/Cosrx-Good-Morning-Low-PH-Cleans.jpg",
    "promotion": null,
    "description":
        "Sữa rửa mặt Cosrx Low pH Good Morning Gel Cleanser giúp làm sạch nhẹ nhàng, cân bằng độ pH và hỗ trợ kiểm soát dầu.",
    "specs": {
      "Dung tích": "150ml",
      "Kết cấu": "Dạng gel trong suốt",
      "Loại da phù hợp": "Da dầu, da hỗn hợp",
      "Độ pH": "5.0–6.0",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Không chứa cồn": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8809416471234",
      "Phân phối tại Việt Nam": "Công ty TNHH Cosrx Việt Nam",
    },
    "ingredients": [
      "Tea Tree Oil – kháng khuẩn, giảm mụn",
      "Betaine Salicylate – tẩy tế bào chết dịu nhẹ",
      "Cocamidopropyl Betaine – chất tạo bọt dịu nhẹ",
      "Saccharomyces Ferment – cân bằng da",
      "Allantoin – làm dịu da",
      "Panthenol – phục hồi da",
      "Glycerin – dưỡng ẩm",
      "Citric Acid – cân bằng pH",
    ],
    "usage": '''
1. Làm ướt da mặt bằng nước sạch.

2. Lấy một lượng gel vừa đủ, thoa đều lên mặt.

3. Massage nhẹ nhàng theo chuyển động tròn, tập trung vùng chữ T.

4. Rửa lại bằng nước sạch.

5. Sử dụng 2 lần/ngày (sáng và tối).

6. Kết hợp với toner và kem dưỡng để đạt hiệu quả chăm sóc da tối ưu.
''',
  },
  {
    "id": "SP026",
    "name": "Kem chống nắng Vichy Capital Soleil",
    "brand": "Vichy",
    "type": "chống nắng",
    "originalPrice": 365000,
    "discountPrice": 340000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://media.hcdn.vn/wysiwyg/MaiQuynh/kem-chong-nang-vichy-capital-soleil-50ml-4.jpg",
    "promotion": "Tặng 1 sample",
    "description":
        "Kem chống nắng Vichy Capital Soleil SPF50+ PA++++ bảo vệ da khỏi tia UVA/UVB, đồng thời cấp ẩm nhẹ.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng kem mỏng nhẹ",
      "Loại da phù hợp": "Mọi loại da",
      "Chỉ số chống nắng": "SPF50+ PA++++",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "3337871321234",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oréal Việt Nam",
    },
    "ingredients": [
      "Mexoryl XL – chống tia UVA/UVB",
      "Vitamin E – chống oxy hóa",
      "Thermal Spa Water – làm dịu da",
      "Glycerin – dưỡng ẩm",
      "Niacinamide – làm sáng da",
      "Panthenol – phục hồi da",
      "Silica – kiểm soát dầu",
    ],
    "usage": '''
1. Thoa đều lên mặt và cổ trước khi ra nắng 15–20 phút.

2. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng.

3. Dùng sau các bước dưỡng da cơ bản.

4. Có thể dùng làm lớp lót trang điểm.

5. Sử dụng hàng ngày để bảo vệ da tối ưu.
''',
  },
  {
    "id": "SP027",
    "name": "Tẩy trang Garnier Micellar Water",
    "brand": "Garnier",
    "type": "tẩy trang",
    "originalPrice": 165000,
    "discountPrice": 150000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 300,
    "image":
        "https://mint07.com/wp-content/uploads/2023/03/nuoc-tay-trang-garnier-salicylic-bha-micellar-cleansing-water-2.jpg",
    "promotion": null,
    "description":
        "Nước tẩy trang Garnier Micellar Water làm sạch lớp trang điểm và bụi bẩn, dịu nhẹ cho da.",
    "specs": {
      "Dung tích": "400ml",
      "Kết cấu": "Dạng nước trong suốt",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "3600542191234",
      "Phân phối tại Việt Nam": "Công ty TNHH Garnier Việt Nam",
    },
    "ingredients": [
      "Micelle Technology – làm sạch sâu",
      "Glycerin – dưỡng ẩm",
      "Poloxamer 184 – chất làm sạch dịu nhẹ",
      "Disodium EDTA – ổn định công thức",
      "Propylene Glycol – dung môi",
      "Cucumber Extract – làm dịu da",
      "Panthenol – phục hồi da",
    ],
    "usage": '''
1. Thấm nước tẩy trang vào bông cotton.

2. Lau nhẹ nhàng toàn mặt để loại bỏ lớp trang điểm và bụi bẩn.

3. Không cần rửa lại bằng nước, nhưng có thể rửa nếu muốn.

4. Sử dụng hàng ngày, sáng và tối.

5. Có thể dùng cho vùng mắt và môi.
''',
  },
  {
    "id": "SP028",
    "name": "Serum Timeless Vitamin C + E + Ferulic",
    "brand": "Timeless",
    "type": "serum",
    "originalPrice": 420000,
    "discountPrice": 399000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 150,
    "image":
        "https://media.hcdn.vn/wysiwyg/Chau/serum-timeless-10-vitamin-c-sang-da-mo-vet-tham-30ml-2.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Serum Timeless Vitamin C + E + Ferulic giúp làm sáng da, chống oxy hóa và giảm dấu hiệu lão hóa.",
    "specs": {
      "Dung tích": "30ml",
      "Kết cấu": "Dạng lỏng, thấm nhanh",
      "Loại da phù hợp": "Da xỉn màu, da lão hóa",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Không chứa cồn": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8585580031234",
      "Phân phối tại Việt Nam": "Công ty TNHH Timeless Việt Nam",
    },
    "ingredients": [
      "Vitamin C (L-Ascorbic Acid) – làm sáng da, chống oxy hóa",
      "Vitamin E – bảo vệ da khỏi gốc tự do",
      "Ferulic Acid – tăng hiệu quả chống oxy hóa",
      "Aqua – dung môi",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Sodium Hyaluronate – giữ nước",
      "Allantoin – làm dịu da",
      "Niacinamide – cải thiện kết cấu da",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy 2–3 giọt serum.

2. Thoa đều lên mặt, tránh vùng mắt.

3. Sử dụng buổi sáng, kết hợp kem chống nắng để bảo vệ da.

4. Có thể dùng thêm vào buổi tối để tăng hiệu quả chống lão hóa.

5. Kết hợp với serum Hyaluronic Acid để tăng khả năng dưỡng ẩm.

6. Lưu ý: Bảo quản trong tủ lạnh hoặc nơi khô ráo, tránh ánh sáng trực tiếp để giữ ổn định Vitamin C.
''',
  },
  {
    "id": "SP029",
    "name": "Toner Evoluderm Lotion Tonique",
    "brand": "Evoluderm",
    "type": "toner",
    "originalPrice": 99000,
    "discountPrice": 89000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://media.hcdn.vn/wysiwyg/MaiQuynh/nuoc-hoa-hong-evoluderm-3.jpg",
    "promotion": null,
    "description":
        "Toner Evoluderm Lotion Tonique giúp làm sạch da sau bước rửa mặt, cân bằng độ ẩm và se khít lỗ chân lông.",
    "specs": {
      "Dung tích": "250ml",
      "Kết cấu": "Dạng lỏng",
      "Loại da phù hợp": "Da thường, da hỗn hợp",
      "Có hương liệu": "Có",
      "Không chứa cồn": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "3760100681234",
      "Phân phối tại Việt Nam": "Công ty TNHH Evoluderm Việt Nam",
    },
    "ingredients": [
      "Glycerin – dưỡng ẩm",
      "Aqua – dung môi",
      "Fragrance – hương liệu",
      "Citric Acid – cân bằng pH",
      "Allantoin – làm dịu da",
      "Panthenol – phục hồi da",
      "Witch Hazel Extract – se khít lỗ chân lông",
    ],
    "usage": '''
1. Sau khi rửa mặt, thấm toner vào bông cotton.

2. Lau nhẹ nhàng toàn mặt và cổ.

3. Vỗ nhẹ để dưỡng chất thẩm thấu.

4. Sử dụng sáng và tối trước serum/kem dưỡng.

5. Có thể dùng làm lotion mask để cấp ẩm tức thì.
''',
  },
  {
    "id": "SP030",
    "name": "Kem dưỡng Simple Hydrating Light Moisturizer",
    "brand": "Simple",
    "type": "kem dưỡng",
    "originalPrice": 125000,
    "discountPrice": 115000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://product.hstatic.net/200000617989/product/436275335_122123367440238279_3880484553705447209_n_e64e2258590343b6886c51e5d650110a_1024x1024.jpg",
    "promotion": "Tặng 1 khăn lau mặt",
    "description":
        "Kem dưỡng Simple Hydrating Light Moisturizer cấp ẩm nhẹ nhàng, không gây nhờn rít, phù hợp cho da nhạy cảm.",
    "specs": {
      "Dung tích": "125ml",
      "Kết cấu": "Dạng kem lỏng nhẹ",
      "Loại da phù hợp": "Da nhạy cảm, da thường",
      "Không chứa hương liệu": "Đúng",
      "Không chứa màu nhân tạo": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Anh",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "5011451105678",
      "Phân phối tại Việt Nam": "Unilever Việt Nam",
    },
    "ingredients": [
      "Pro-Vitamin B5 – phục hồi da",
      "Vitamin E – chống oxy hóa",
      "Glycerin – dưỡng ẩm",
      "Allantoin – làm dịu da",
      "Panthenol – tăng khả năng phục hồi",
      "Sodium Lactate – giữ nước",
      "Chamomile Extract – làm dịu da",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy một lượng kem vừa đủ.

2. Thoa đều lên mặt và cổ, massage nhẹ nhàng.

3. Sử dụng sáng và tối để duy trì độ ẩm.

4. Có thể dùng làm lớp khóa ẩm cuối cùng trong chu trình dưỡng da.

5. Kết hợp với serum dưỡng ẩm để tăng hiệu quả phục hồi da.
''',
  },

  {
    "id": "SP031",
    "name": "Mặt nạ Vedette Clay Mask Aloe Vera",
    "brand": "Vedette",
    "type": "mặt nạ",
    "originalPrice": 18000,
    "discountPrice": 16000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 500,
    "image":
        "https://laz-img-sg.alicdn.com/p/06c171b00439e3cb8a1625040b20715c.jpg",
    "promotion": null,
    "description":
        "Mặt nạ đất sét Vedette Aloe Vera giúp làm sạch sâu lỗ chân lông, hút dầu thừa và làm dịu da nhờ chiết xuất nha đam.",
    "specs": {
      "Dung tích": "15g/túi",
      "Kết cấu": "Dạng kem đất sét",
      "Loại da phù hợp": "Da dầu, da mụn",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Việt Nam",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "8938505971234",
      "Phân phối tại Việt Nam": "Công ty TNHH Vedette Việt Nam",
    },
    "ingredients": [
      "Kaolin – hút dầu thừa, làm sạch sâu",
      "Aloe Vera Extract – làm dịu, cấp ẩm",
      "Glycerin – dưỡng ẩm",
      "Allantoin – phục hồi da",
      "Panthenol – giảm kích ứng",
      "Chamomile Extract – làm dịu da",
    ],
    "usage": '''
1. Sau khi rửa mặt, thoa đều lớp mặt nạ lên da, tránh vùng mắt và môi.

2. Để yên 15 phút cho mặt nạ khô.

3. Rửa lại bằng nước sạch.

4. Sử dụng 2–3 lần/tuần để kiểm soát dầu và làm dịu da.

5. Kết hợp với toner và kem dưỡng để đạt hiệu quả chăm sóc da tối ưu.
''',
  },
  {
    "id": "SP032",
    "name": "Sữa rửa mặt Hatomugi Naturie",
    "brand": "Naturie",
    "type": "sữa rửa mặt",
    "originalPrice": 98000,
    "discountPrice": 88000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 300,
    "image":
        "https://myphambo.com/wp-content/uploads/2020/03/sua-rua-mat-y-di-hatomugi-naturie-%E2%80%93-nhat-ban-2.jpg",
    "promotion": "Mua 2 tặng 1",
    "description":
        "Sữa rửa mặt Hatomugi Naturie chiết xuất ý dĩ, giúp làm sạch nhẹ nhàng, dưỡng ẩm và làm sáng da.",
    "specs": {
      "Dung tích": "130g",
      "Kết cấu": "Dạng kem tạo bọt",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "4901234567891",
      "Phân phối tại Việt Nam": "Công ty TNHH Naturie Việt Nam",
    },
    "ingredients": [
      "Coix Seed Extract – làm sáng da, dưỡng ẩm",
      "Glycerin – cấp ẩm",
      "Water – dung môi",
      "Sodium Lauryl Sulfate – tạo bọt",
      "Allantoin – làm dịu da",
      "Panthenol – phục hồi da",
    ],
    "usage": '''
1. Làm ướt da mặt bằng nước sạch.

2. Lấy một lượng vừa đủ, tạo bọt với nước.

3. Massage nhẹ nhàng lên mặt theo chuyển động tròn.

4. Rửa lại bằng nước sạch.

5. Sử dụng 2 lần/ngày (sáng và tối).

6. Kết hợp với toner Hatomugi để tăng hiệu quả dưỡng sáng.
''',
  },
  {
    "id": "SP033",
    "name": "Kem chống nắng Biore UV Aqua Rich",
    "brand": "Biore",
    "type": "chống nắng",
    "originalPrice": 210000,
    "discountPrice": 195000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://product.hstatic.net/200000551679/product/ng_duong_the_uv_aqua_rich_body_tone_up_peach_pearly_spf50__pa____130ml_cf3abc3d381f4f4f89ac428427f6f02d_1024x1024.jpg",
    "promotion": null,
    "description":
        "Kem chống nắng Biore UV Aqua Rich SPF50+ PA++++ với kết cấu mỏng nhẹ, thấm nhanh, bảo vệ da khỏi tia UVA/UVB.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng gel lỏng nhẹ",
      "Loại da phù hợp": "Mọi loại da",
      "Chỉ số chống nắng": "SPF50+ PA++++",
      "Khả năng chống nước": "Có",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "4901301331234",
      "Phân phối tại Việt Nam": "Công ty TNHH Kao Việt Nam",
    },
    "ingredients": [
      "Hyaluronic Acid – cấp ẩm",
      "Citrus Extract – chống oxy hóa",
      "UV Filters – bảo vệ da khỏi tia UVA/UVB",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Silica – kiểm soát dầu",
    ],
    "usage": '''
1. Thoa đều lên mặt và cổ trước khi ra nắng 15–20 phút.

2. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng.

3. Dùng sau các bước dưỡng da cơ bản.

4. Có thể dùng làm lớp lót trang điểm.

5. Sử dụng hàng ngày để bảo vệ da tối ưu.
''',
  },
  {
    "id": "SP034",
    "name": "Tẩy trang Senka All Clear Water",
    "brand": "Senka",
    "type": "tẩy trang",
    "originalPrice": 135000,
    "discountPrice": 121500,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 300,
    "image":
        "https://product.hstatic.net/200000150709/product/25540716802e20e4c95dde7895df1d51_c78b71c17e7545d0be66d9add3cb4f6c.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Nước tẩy trang Senka All Clear Water làm sạch lớp trang điểm và bụi bẩn, dịu nhẹ cho da.",
    "specs": {
      "Dung tích": "230ml",
      "Kết cấu": "Dạng nước trong suốt",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "4901872461234",
      "Phân phối tại Việt Nam": "Công ty TNHH Shiseido Việt Nam",
    },
    "ingredients": [
      "Micelle Technology – làm sạch sâu lớp trang điểm",
      "Green Tea Extract – chống oxy hóa, làm dịu da",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – giảm kích ứng",
      "Chamomile Extract – làm dịu da",
    ],
    "usage": '''
1. Thấm nước tẩy trang vào bông cotton.

2. Lau nhẹ nhàng toàn mặt để loại bỏ lớp trang điểm và bụi bẩn.

3. Không cần rửa lại bằng nước, nhưng có thể rửa nếu muốn.

4. Sử dụng hàng ngày, sáng và tối.

5. Có thể dùng cho vùng mắt và môi.
''',
  },
  {
    "id": "SP035",
    "name": "Serum L’Oreal Revitalift Hyaluronic Acid",
    "brand": "L’Oreal",
    "type": "serum",
    "originalPrice": 495000,
    "discountPrice": 470000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://mint07.com/wp-content/uploads/2020/09/serum-loreal-revitalift-15-hyaluronic-acid-2.jpg",
    "promotion": "Tặng 1 mặt nạ giấy",
    "description":
        "Serum L’Oreal Revitalift Hyaluronic Acid giúp cấp ẩm sâu, làm đầy da và giảm nếp nhăn.",
    "specs": {
      "Dung tích": "30ml",
      "Kết cấu": "Dạng lỏng, thấm nhanh",
      "Loại da phù hợp": "Da khô, da lão hóa",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "3600524011234",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oréal Việt Nam",
    },
    "ingredients": [
      "Hyaluronic Acid – cấp ẩm sâu, làm đầy da",
      "Glycerin – dưỡng ẩm",
      "Pro-Xylane – phục hồi cấu trúc da",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Citric Acid – cân bằng pH",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy 2–3 giọt serum.

2. Thoa đều lên mặt và cổ, massage nhẹ nhàng.

3. Sử dụng sáng và tối trước kem dưỡng.

4. Kết hợp với kem dưỡng ẩm để tăng hiệu quả phục hồi da.

5. Luôn dùng kem chống nắng ban ngày để bảo vệ da.
''',
  },
  {
    "id": "SP036",
    "name": "Toner Eucerin ProACNE Solution",
    "brand": "Eucerin",
    "type": "toner",
    "originalPrice": 245000,
    "discountPrice": 225000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://gaspa.vn/wp-content/uploads/2018/11/Eucerin-Nu%CC%9Bo%CC%9B%CC%81c-hoa-ho%CC%82%CC%80ng-e1544671167538.jpg",
    "promotion": null,
    "description":
        "Toner Eucerin ProACNE Solution giúp làm sạch sâu, loại bỏ dầu thừa và ngăn ngừa mụn.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dạng lỏng",
      "Loại da phù hợp": "Da dầu, da mụn",
      "Không chứa hương liệu": "Đúng",
      "Không chứa cồn": "Đúng",
      "Xuất xứ": "Đức",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "40058001231234",
      "Phân phối tại Việt Nam": "Công ty TNHH Beiersdorf Việt Nam",
    },
    "ingredients": [
      "Lactic Acid – tẩy tế bào chết dịu nhẹ",
      "Salicylic Acid – làm sạch sâu lỗ chân lông",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – giảm kích ứng",
      "Witch Hazel Extract – se khít lỗ chân lông",
    ],
    "usage": '''
1. Sau khi rửa mặt, thấm toner vào bông cotton.

2. Lau nhẹ nhàng toàn mặt và cổ.

3. Sử dụng sáng và tối trước serum/kem dưỡng.

4. Có thể dùng làm lotion mask để hỗ trợ kiểm soát dầu.

5. Kết hợp với sản phẩm trị mụn để tăng hiệu quả.
''',
  },
  {
    "id": "SP037",
    "name": "Kem dưỡng The Body Shop Vitamin E",
    "brand": "The Body Shop",
    "type": "kem dưỡng",
    "originalPrice": 370000,
    "discountPrice": 314500,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://www.thebodyshop.com.vn/img/resize/565?url=%2Fpub/media%2Fcatalog%2Fproduct%2F1%2F0%2F1026960_vitamin_e_face_wash_125ml-4_1_1.jpg",
    "promotion": "Giảm 15%",
    "description":
        "Kem dưỡng The Body Shop Vitamin E cung cấp độ ẩm, chống oxy hóa và bảo vệ da khỏi tác hại môi trường.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng kem mịn",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Anh",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "5028197961234",
      "Phân phối tại Việt Nam": "Công ty TNHH The Body Shop Việt Nam",
    },
    "ingredients": [
      "Vitamin E – chống oxy hóa, bảo vệ da",
      "Shea Butter – dưỡng ẩm, làm mềm da",
      "Glycerin – cấp ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Aloe Vera Extract – cấp nước, làm mát da",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy một lượng kem vừa đủ.

2. Thoa đều lên mặt và cổ, massage nhẹ nhàng.

3. Sử dụng sáng và tối để duy trì độ ẩm.

4. Có thể dùng làm lớp khóa ẩm cuối cùng trong chu trình dưỡng da.

5. Kết hợp với serum Vitamin C để tăng hiệu quả chống oxy hóa.
''',
  },
  {
    "id": "SP038",
    "name": "Mặt nạ My Beauty Diary Black Pearl",
    "brand": "My Beauty Diary",
    "type": "mặt nạ",
    "originalPrice": 29000,
    "discountPrice": 26000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 500,
    "image":
        "https://media.hasaki.vn/wysiwyg/minhchau/mat-na-my-beauty-diary-ngoc-trai-den-sang-da-23ml-4.jpg",
    "promotion": null,
    "description":
        "Mặt nạ My Beauty Diary Black Pearl giúp dưỡng sáng da, cấp ẩm và tăng độ đàn hồi.",
    "specs": {
      "Dung tích": "23ml/túi",
      "Kết cấu": "Dạng giấy cotton thấm tinh chất",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Đài Loan",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "4711234567892",
      "Phân phối tại Việt Nam": "Công ty TNHH My Beauty Diary Việt Nam",
    },
    "ingredients": [
      "Black Pearl Extract – dưỡng sáng da",
      "Hyaluronic Acid – cấp ẩm sâu",
      "Collagen – tăng độ đàn hồi",
      "Vitamin E – chống oxy hóa",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
    ],
    "usage": '''
1. Sau khi rửa mặt, lấy mặt nạ ra khỏi túi.

2. Đắp lên mặt, căn chỉnh cho vừa vặn.

3. Thư giãn 15–20 phút để tinh chất thẩm thấu.

4. Gỡ mặt nạ, vỗ nhẹ tinh chất còn lại để thẩm thấu.

5. Không cần rửa lại bằng nước, tiếp tục các bước dưỡng da sau đó.

6. Sử dụng 2–3 lần/tuần để duy trì làn da sáng khỏe.
''',
  },
  {
    "id": "SP039",
    "name": "Sữa rửa mặt Innisfree Jeju Volcanic Pore",
    "brand": "Innisfree",
    "type": "sữa rửa mặt",
    "originalPrice": 135000,
    "discountPrice": 125000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://mint07.com/wp-content/uploads/2022/09/sua-rua-mat-innisfree-jeju-volcanic-pore-cleansing-foam-ex-150g.jpg",
    "promotion": "Tặng 1 sample",
    "description":
        "Sữa rửa mặt Innisfree Jeju Volcanic Pore giúp làm sạch sâu, loại bỏ dầu thừa và bã nhờn nhờ tro núi lửa Jeju.",
    "specs": {
      "Dung tích": "150ml",
      "Kết cấu": "Dạng kem tạo bọt",
      "Loại da phù hợp": "Da dầu, da hỗn hợp",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "8801234567893",
      "Phân phối tại Việt Nam": "Công ty TNHH Innisfree Việt Nam",
    },
    "ingredients": [
      "Jeju Volcanic Ash – hút dầu thừa, làm sạch sâu",
      "Glycerin – dưỡng ẩm",
      "Stearic Acid – tạo bọt",
      "Lauric Acid – làm sạch",
      "Allantoin – làm dịu da",
      "Panthenol – phục hồi da",
    ],
    "usage": '''
1. Làm ướt da mặt bằng nước sạch.

2. Lấy một lượng vừa đủ, tạo bọt với nước.

3. Massage nhẹ nhàng lên mặt theo chuyển động tròn.

4. Rửa lại bằng nước sạch.

5. Sử dụng 2 lần/ngày (sáng và tối).

6. Kết hợp với toner Innisfree để tăng hiệu quả kiểm soát dầu.
''',
  },
  {
    "id": "SP040",
    "name": "Kem chống nắng Missha All Around Safe Block",
    "brand": "Missha",
    "type": "chống nắng",
    "originalPrice": 185000,
    "discountPrice": 170000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://media.hcdn.vn/wysiwyg/HaNguyen/sua-chong-nang-missha-all-around-safe-block-sun-milk-70ml.jpg",
    "promotion": null,
    "description":
        "Kem chống nắng Missha All Around Safe Block SPF50+ PA++++ bảo vệ da khỏi tia UVA/UVB, chống nước và mồ hôi.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng kem mỏng nhẹ",
      "Loại da phù hợp": "Mọi loại da",
      "Chỉ số chống nắng": "SPF50+ PA++++",
      "Khả năng chống nước": "Có",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8806182561234",
      "Phân phối tại Việt Nam": "Công ty TNHH Missha Việt Nam",
    },
    "ingredients": [
      "Zinc Oxide – chống nắng phổ rộng",
      "Titanium Dioxide – chống tia UVA/UVB",
      "Green Tea Extract – chống oxy hóa",
      "Hyaluronic Acid – cấp ẩm",
      "Panthenol – phục hồi da",
      "Silica – kiểm soát dầu",
    ],
    "usage": '''
1. Thoa đều lên mặt và cổ trước khi ra nắng 15–20 phút.

2. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng.

3. Dùng sau các bước dưỡng da cơ bản.

4. Có thể dùng làm lớp lót trang điểm.

5. Sử dụng hàng ngày để bảo vệ da tối ưu.
''',
  },
  {
    "id": "SP041",
    "name": "Serum Kiehl’s Clearly Corrective Dark Spot",
    "brand": "Kiehl’s",
    "type": "serum",
    "originalPrice": 890000,
    "discountPrice": 801000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 150,
    "image":
        "https://file.hstatic.net/1000025647/file/serum_50ml_kiehls_54300e9095534d9d9fb76ea0b6c6d81e_1024x1024.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Serum Kiehl’s Clearly Corrective Dark Spot giúp làm mờ thâm nám, cải thiện sắc tố da và làm sáng da.",
    "specs": {
      "Dung tích": "30ml",
      "Kết cấu": "Dạng lỏng, thấm nhanh",
      "Loại da phù hợp": "Da xỉn màu, da có thâm nám",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "3605972341234",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oréal Việt Nam",
    },
    "ingredients": [
      "Activated C – làm sáng da, mờ thâm",
      "White Birch Extract – dưỡng ẩm, phục hồi da",
      "Peony Extract – chống oxy hóa",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy 2–3 giọt serum.

2. Thoa đều lên mặt, tập trung vùng da thâm nám.

3. Sử dụng sáng và tối.

4. Kết hợp với kem chống nắng ban ngày để bảo vệ da.

5. Dùng liên tục ít nhất 4 tuần để thấy hiệu quả rõ rệt.
''',
  },
  {
    "id": "SP042",
    "name": "Toner Benton Aloe BHA Skin",
    "brand": "Benton",
    "type": "toner",
    "originalPrice": 210000,
    "discountPrice": 195000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://vn-test-11.slatic.net/p/57cf6975ac4c3022ce59fcd556522491.jpg",
    "promotion": null,
    "description":
        "Toner Benton Aloe BHA Skin giúp cấp ẩm, làm dịu da và hỗ trợ kiểm soát dầu nhờn.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dạng lỏng",
      "Loại da phù hợp": "Da dầu, da mụn",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "8809564561234",
      "Phân phối tại Việt Nam": "Công ty TNHH Benton Việt Nam",
    },
    "ingredients": [
      "Aloe Vera Extract – cấp ẩm, làm dịu da",
      "Salicylic Acid – làm sạch sâu, kiểm soát dầu",
      "Snail Secretion Filtrate – phục hồi da",
      "Panthenol – dưỡng ẩm, phục hồi",
      "Allantoin – giảm kích ứng",
      "Betaine – giữ nước",
    ],
    "usage": '''
1. Sau khi rửa mặt, thấm toner vào bông cotton.

2. Lau nhẹ nhàng toàn mặt và cổ.

3. Sử dụng sáng và tối trước serum/kem dưỡng.

4. Có thể dùng làm lotion mask để cấp ẩm tức thì.

5. Kết hợp với sản phẩm trị mụn để tăng hiệu quả kiểm soát dầu.
''',
  },
  {
    "id": "SP043",
    "name": "Kem dưỡng Laneige Water Bank Blue",
    "brand": "Laneige",
    "type": "kem dưỡng",
    "originalPrice": 520000,
    "discountPrice": 520000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://media.hcdn.vn/wysiwyg/Chau/kem-duong-am-laneige-water-bank-blue-ha-cream-50ml-5.jpg",
    "promotion": "Tặng 1 mặt nạ ngủ",
    "description":
        "Kem dưỡng Laneige Water Bank Blue cung cấp độ ẩm sâu, giúp da căng bóng và mềm mịn nhờ công nghệ Water Bank.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng kem mịn, thấm nhanh",
      "Loại da phù hợp": "Da khô, da thường",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8809647392234",
      "Phân phối tại Việt Nam": "Công ty TNHH Laneige Việt Nam",
    },
    "ingredients": [
      "Hydro Ionized Mineral Water – cấp ẩm sâu",
      "Hyaluronic Acid – giữ nước cho da",
      "Green Tea Extract – chống oxy hóa",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Betaine – giữ nước",
    ],
    "usage": '''
1. Sau khi rửa mặt và serum, lấy một lượng kem vừa đủ.

2. Thoa đều lên mặt và cổ, massage nhẹ nhàng.

3. Sử dụng sáng và tối để duy trì độ ẩm.

4. Có thể dùng làm lớp khóa ẩm cuối cùng trong chu trình dưỡng da.

5. Kết hợp với mặt nạ ngủ Laneige để tăng hiệu quả dưỡng ẩm.
''',
  },
  {
    "id": "SP044",
    "name": "Mặt nạ The Face Shop Real Nature",
    "brand": "The Face Shop",
    "type": "mặt nạ",
    "originalPrice": 25000,
    "discountPrice": 25000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 600,
    "image":
        "https://product.hstatic.net/200000551679/product/real_nature_green_tea_mask_sheet_-_inforgraphic_e87a1ad744c84e9bbcf3162a021d3b10_1024x1024.jpg",
    "promotion": "Mua 10 tặng 2",
    "description":
        "Mặt nạ The Face Shop Real Nature chiết xuất từ thiên nhiên, giúp cấp ẩm và nuôi dưỡng da.",
    "specs": {
      "Dung tích": "20ml/túi",
      "Kết cấu": "Dạng giấy cotton thấm tinh chất",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa cồn": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "8806182562234",
      "Phân phối tại Việt Nam": "Công ty TNHH The Face Shop Việt Nam",
    },
    "ingredients": [
      "Chiết xuất lô hội – cấp ẩm, làm dịu da",
      "Chiết xuất trà xanh – chống oxy hóa",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – giảm kích ứng",
    ],
    "usage": '''
1. Sau khi rửa mặt, lấy mặt nạ ra khỏi túi.

2. Đắp lên mặt, căn chỉnh cho vừa vặn.

3. Thư giãn 15–20 phút để tinh chất thẩm thấu.

4. Gỡ mặt nạ, vỗ nhẹ tinh chất còn lại để thẩm thấu.

5. Không cần rửa lại bằng nước, tiếp tục các bước dưỡng da sau đó.

6. Sử dụng 2–3 lần/tuần để duy trì làn da khỏe mạnh.
''',
  },
  {
    "id": "SP045",
    "name": "Sữa rửa mặt Vichy Normaderm Phytosolution",
    "brand": "Vichy",
    "type": "sữa rửa mặt",
    "originalPrice": 285000,
    "discountPrice": 270000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://hermore.vn/uploads/product/430/10-25-13-08-03-2023-vichy-srm-5.jpg",
    "promotion": null,
    "description":
        "Sữa rửa mặt Vichy Normaderm Phytosolution giúp làm sạch sâu, giảm dầu thừa và ngăn ngừa mụn.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dạng gel tạo bọt",
      "Loại da phù hợp": "Da dầu, da mụn",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "3337871322234",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oréal Việt Nam",
    },
    "ingredients": [
      "Salicylic Acid – làm sạch sâu, giảm mụn",
      "Zinc PCA – kiểm soát dầu",
      "Vichy Mineralizing Water – tăng cường hàng rào da",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
    ],
    "usage": '''
1. Làm ướt da mặt bằng nước sạch.

2. Lấy một lượng vừa đủ, tạo bọt với nước.

3. Massage nhẹ nhàng lên mặt theo chuyển động tròn.

4. Rửa lại bằng nước sạch.

5. Sử dụng 2 lần/ngày (sáng và tối).

6. Kết hợp với toner Vichy để tăng hiệu quả kiểm soát dầu.
''',
  },
  {
    "id": "SP046",
    "name": "Kem chống nắng Eucerin Sun Gel-Cream",
    "brand": "Eucerin",
    "type": "chống nắng",
    "originalPrice": 395000,
    "discountPrice": 375000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://chuanauthentic.com/wp-content/uploads/2025/06/kem-chong-nang-kiem-dau-eucerin-sun-gel-cream-dry-touch-oil-control-spf50-50ml-5.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Kem chống nắng Eucerin Sun Gel-Cream SPF50+ PA++++ bảo vệ da khỏi tia UVA/UVB, kiểm soát dầu nhờn.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng gel mỏng nhẹ",
      "Loại da phù hợp": "Da dầu, da mụn",
      "Chỉ số chống nắng": "SPF50+ PA++++",
      "Khả năng chống nước": "Có",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Đức",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "40058001231235",
      "Phân phối tại Việt Nam": "Công ty TNHH Beiersdorf Việt Nam",
    },
    "ingredients": [
      "Licochalcone A – chống oxy hóa, bảo vệ da",
      "Glycyrrhetinic Acid – phục hồi da",
      "UV Filters – chống tia UVA/UVB",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Silica – kiểm soát dầu",
    ],
    "usage": '''
1. Thoa đều lên mặt và cổ trước khi ra nắng 15–20 phút.

2. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng.

3. Dùng sau các bước dưỡng da cơ bản.

4. Có thể dùng làm lớp lót trang điểm.

5. Sử dụng hàng ngày để bảo vệ da tối ưu.
''',
  },
  {
    "id": "SP047",
    "name": "Tẩy trang DHC Deep Cleansing Oil",
    "brand": "DHC",
    "type": "tẩy trang",
    "originalPrice": 320000,
    "discountPrice": 300000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 250,
    "image":
        "https://media.hcdn.vn/catalog/product/d/a/dau-tay-trang-dhc-chiet-xuat-olive-lam-sach-sau-da-120ml-1650444669_img_450x450_31d6f9_fit_center.jpg",
    "promotion": null,
    "description":
        "DHC Deep Cleansing Oil làm sạch lớp trang điểm, bụi bẩn và dưỡng ẩm da nhờ dầu olive nguyên chất.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dạng dầu lỏng",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "4901525011234",
      "Phân phối tại Việt Nam": "Công ty TNHH DHC Việt Nam",
    },
    "ingredients": [
      "Olive Oil – làm sạch lớp trang điểm, dưỡng ẩm",
      "Vitamin E – chống oxy hóa",
      "Rosemary Leaf Oil – kháng khuẩn, làm dịu da",
      "Tocopherol – bảo vệ da",
      "Caprylic/Capric Triglyceride – giữ ẩm",
      "Panthenol – phục hồi da",
    ],
    "usage": '''
1. Lấy một lượng dầu vừa đủ ra tay khô.

2. Massage nhẹ nhàng lên mặt để hòa tan lớp trang điểm và bụi bẩn.

3. Thêm nước để nhũ hóa, dầu chuyển thành dạng sữa.

4. Rửa lại bằng nước sạch.

5. Sử dụng hàng ngày, sáng và tối.

6. Kết hợp với sữa rửa mặt để làm sạch kép hiệu quả.
''',
  },
  {
    "id": "SP048",
    "name": "Serum Estee Lauder Advanced Night Repair",
    "brand": "Estee Lauder",
    "type": "serum",
    "originalPrice": 1950000,
    "discountPrice": 1850000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 150,
    "image":
        "https://product.hstatic.net/200000150709/product/cb9e25483eb92ba650d0a62994c0bd7f.jpg_1200x1200q80.jpg__592144adca0b4cdea5504b776827432e_1024x1024.jpg",
    "promotion": "Tặng 1 mini size",
    "description":
        "Serum Estee Lauder Advanced Night Repair giúp phục hồi da, chống lão hóa và làm sáng da.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng lỏng, thấm nhanh",
      "Loại da phù hợp": "Da lão hóa, da xỉn màu",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "0271311234567",
      "Phân phối tại Việt Nam": "Công ty TNHH Estee Lauder Việt Nam",
    },
    "ingredients": [
      "ChronoluxCB Technology – phục hồi da ban đêm",
      "Hyaluronic Acid – cấp ẩm sâu",
      "Antioxidants – chống oxy hóa",
      "Glycerin – dưỡng ẩm",
      "Sodium Hyaluronate – giữ nước",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy 2–3 giọt serum.

2. Thoa đều lên mặt và cổ, massage nhẹ nhàng.

3. Sử dụng buổi tối trước kem dưỡng.

4. Có thể dùng thêm vào buổi sáng để tăng hiệu quả chống lão hóa.

5. Kết hợp với kem dưỡng Estee Lauder để tối ưu hiệu quả phục hồi.
''',
  },
  {
    "id": "SP049",
    "name": "Toner Labo Labo Super Keana",
    "brand": "Labo Labo",
    "type": "toner",
    "originalPrice": 295000,
    "discountPrice": 275000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://shophoitu.com/shop/media/media/thumb/2021-01-31/nuoc-hoa-hong-nhat.jpg.jpg",
    "promotion": null,
    "description":
        "Toner Labo Labo Super Keana giúp se khít lỗ chân lông, kiểm soát dầu và làm sạch da.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dạng lỏng",
      "Loại da phù hợp": "Da dầu, da hỗn hợp",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "4515061011234",
      "Phân phối tại Việt Nam": "Công ty TNHH Rohto Việt Nam",
    },
    "ingredients": [
      "Lactic Acid – tẩy tế bào chết dịu nhẹ",
      "Collagen – tăng độ đàn hồi da",
      "Hyaluronic Acid – cấp ẩm sâu",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Witch Hazel Extract – se khít lỗ chân lông",
    ],
    "usage": '''
1. Sau khi rửa mặt, thấm toner vào bông cotton.

2. Lau nhẹ nhàng toàn mặt và cổ.

3. Sử dụng sáng và tối trước serum/kem dưỡng.

4. Có thể dùng làm lotion mask để cấp ẩm tức thì.

5. Kết hợp với sản phẩm trị mụn để tăng hiệu quả kiểm soát dầu.
''',
  },
  {
    "id": "SP050",
    "name": "Kem dưỡng Innisfree Green Tea Seed Cream",
    "brand": "Innisfree",
    "type": "kem dưỡng",
    "originalPrice": 340000,
    "discountPrice": 306000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://www.innisfree.vn/static/upload/product/product/14_ID0101_4.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Kem dưỡng Innisfree Green Tea Seed Cream chứa chiết xuất trà xanh Jeju, giúp cấp ẩm và bảo vệ da.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng kem mịn",
      "Loại da phù hợp": "Da khô, da thường",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8809647393234",
      "Phân phối tại Việt Nam": "Công ty TNHH Innisfree Việt Nam",
    },
    "ingredients": [
      "Green Tea Extract – chống oxy hóa, cấp ẩm",
      "Seed Oil – nuôi dưỡng da",
      "Panthenol – phục hồi da",
      "Glycerin – dưỡng ẩm",
      "Allantoin – làm dịu da",
      "Betaine – giữ nước",
    ],
    "usage": '''
1. Sau khi rửa mặt và serum, lấy một lượng kem vừa đủ.

2. Thoa đều lên mặt và cổ, massage nhẹ nhàng.

3. Sử dụng sáng và tối để duy trì độ ẩm.

4. Có thể dùng làm lớp khóa ẩm cuối cùng trong chu trình dưỡng da.

5. Kết hợp với toner Innisfree để tăng hiệu quả dưỡng ẩm.
''',
  },
  {
    "id": "SP051",
    "name": "Mặt nạ SexyLook Black Mask",
    "brand": "SexyLook",
    "type": "mặt nạ",
    "originalPrice": 28000,
    "discountPrice": 26000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 500,
    "image":
        "https://media.hcdn.vn/wysiwyg/MaiQuynh/mat-na-den-sexy-look-duong-sang-da-28ml-1.jpg",
    "promotion": null,
    "description":
        "Mặt nạ SexyLook Black Mask giúp làm sạch sâu, loại bỏ bã nhờn và dưỡng sáng da.",
    "specs": {
      "Dung tích": "25ml/túi",
      "Kết cấu": "Dạng giấy cotton thấm tinh chất",
      "Loại da phù hợp": "Da dầu, da hỗn hợp",
      "Không chứa cồn": "Đúng",
      "Xuất xứ": "Đài Loan",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "4711234567894",
      "Phân phối tại Việt Nam": "Công ty TNHH SexyLook Việt Nam",
    },
    "ingredients": [
      "Charcoal Extract – làm sạch sâu, hút dầu thừa",
      "Hyaluronic Acid – cấp ẩm",
      "Niacinamide – làm sáng da",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Collagen – tăng độ đàn hồi",
    ],
    "usage": '''
1. Sau khi rửa mặt, lấy mặt nạ ra khỏi túi.

2. Đắp lên mặt, căn chỉnh cho vừa vặn.

3. Thư giãn 15–20 phút để tinh chất thẩm thấu.

4. Gỡ mặt nạ, vỗ nhẹ tinh chất còn lại để thẩm thấu.

5. Không cần rửa lại bằng nước, tiếp tục các bước dưỡng da sau đó.

6. Sử dụng 2–3 lần/tuần để duy trì làn da sáng khỏe.
''',
  },
  {
    "id": "SP052",
    "name": "Sữa rửa mặt The Ordinary Squalane Cleanser",
    "brand": "The Ordinary",
    "type": "sữa rửa mặt",
    "originalPrice": 220000,
    "discountPrice": 220000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://afamilycdn.com/150157425591193600/2020/5/24/645483051653747964756109679380404637534-1590297625633217748952.jpg",
    "promotion": "Tặng 1 khăn lau mặt",
    "description":
        "Sữa rửa mặt The Ordinary Squalane Cleanser giúp làm sạch nhẹ nhàng, đồng thời dưỡng ẩm nhờ Squalane.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng balm chuyển thành dầu",
      "Loại da phù hợp": "Mọi loại da, đặc biệt da khô",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Canada",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "7699151905678",
      "Phân phối tại Việt Nam": "Công ty TNHH Deciem Việt Nam",
    },
    "ingredients": [
      "Squalane – dưỡng ẩm, làm mềm da",
      "Glycerin – cấp ẩm",
      "Caprylic/Capric Triglyceride – giữ nước",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Sucrose Stearate – nhũ hóa",
    ],
    "usage": '''
1. Lấy một lượng nhỏ sản phẩm ra tay khô.

2. Xoa đều để balm chuyển thành dầu.

3. Massage nhẹ nhàng lên mặt để hòa tan lớp trang điểm và bụi bẩn.

4. Thêm nước để nhũ hóa, dầu chuyển thành dạng sữa.

5. Rửa lại bằng nước sạch.

6. Sử dụng hàng ngày, sáng và tối.
''',
  },
  {
    "id": "SP053",
    "name": "Kem chống nắng Klairs Soft Airy UV Essence",
    "brand": "Klairs",
    "type": "chống nắng",
    "originalPrice": 295000,
    "discountPrice": 280000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://media.hcdn.vn/catalog/product/k/e/kem-chong-nang-klairs-mong-nhe-cho-da-nhay-cam-80ml-3_img_450x450_31d6f9_fit_center.jpg",
    "promotion": null,
    "description":
        "Kem chống nắng Klairs Soft Airy UV Essence SPF50+ PA++++ bảo vệ da khỏi tia UVA/UVB, kết cấu mỏng nhẹ.",
    "specs": {
      "Dung tích": "80ml",
      "Kết cấu": "Dạng gel lỏng nhẹ",
      "Loại da phù hợp": "Mọi loại da",
      "Chỉ số chống nắng": "SPF50+ PA++++",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8809115021234",
      "Phân phối tại Việt Nam": "Công ty TNHH Klairs Việt Nam",
    },
    "ingredients": [
      "Niacinamide – làm sáng da, cải thiện kết cấu",
      "Adenosine – chống lão hóa",
      "UV Filters – bảo vệ da khỏi tia UVA/UVB",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Hyaluronic Acid – cấp ẩm",
    ],
    "usage": '''
1. Thoa đều lên mặt và cổ trước khi ra nắng 15–20 phút.

2. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng.

3. Dùng sau các bước dưỡng da cơ bản.

4. Có thể dùng làm lớp lót trang điểm.

5. Sử dụng hàng ngày để bảo vệ da tối ưu.
''',
  },
  {
    "id": "SP054",
    "name": "Tẩy trang Neutrogena Oil-Free Eye Makeup Remover",
    "brand": "Neutrogena",
    "type": "tẩy trang",
    "originalPrice": 185000,
    "discountPrice": 176000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 250,
    "image":
        "https://mint07.com/wp-content/uploads/2017/06/tay-trang-neutrogena-oil-free-eye-make-remover-162ml-1-1.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Neutrogena Oil-Free Eye Makeup Remover làm sạch lớp trang điểm mắt, kể cả mascara chống nước.",
    "specs": {
      "Dung tích": "125ml",
      "Kết cấu": "Dạng nước hai lớp",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa dầu": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "0705010171234",
      "Phân phối tại Việt Nam": "Johnson & Johnson Việt Nam",
    },
    "ingredients": [
      "Aloe Vera Extract – làm dịu da",
      "Cucumber Extract – cấp nước, làm mát",
      "Cyclopentasiloxane – hòa tan lớp trang điểm",
      "Panthenol – phục hồi da",
      "Allantoin – giảm kích ứng",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. Lắc đều trước khi sử dụng.

2. Thấm dung dịch vào bông cotton.

3. Lau nhẹ nhàng vùng mắt để loại bỏ lớp trang điểm.

4. Có thể lặp lại nếu lớp trang điểm dày.

5. Không cần rửa lại bằng nước, nhưng có thể rửa nếu muốn.
''',
  },
  {
    "id": "SP055",
    "name": "Serum Skinceuticals C E Ferulic",
    "brand": "Skinceuticals",
    "type": "serum",
    "originalPrice": 2950000,
    "discountPrice": 2800000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 120,
    "image":
        "https://dalieushop.com/wp-content/uploads/2023/09/354928450-2608685342617115-2482947689745453701-n.jpg",
    "promotion": "Tặng 1 mặt nạ cao cấp",
    "description":
        "Serum Skinceuticals C E Ferulic chứa Vitamin C, E và Ferulic Acid, giúp chống oxy hóa mạnh mẽ, giảm lão hóa.",
    "specs": {
      "Dung tích": "30ml",
      "Kết cấu": "Dạng lỏng, thấm nhanh",
      "Loại da phù hợp": "Da lão hóa, da xỉn màu",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "6354943471234",
      "Phân phối tại Việt Nam": "Công ty TNHH Skinceuticals Việt Nam",
    },
    "ingredients": [
      "L-Ascorbic Acid (Vitamin C) – chống oxy hóa, làm sáng da",
      "Alpha-Tocopherol (Vitamin E) – bảo vệ da khỏi gốc tự do",
      "Ferulic Acid – tăng hiệu quả chống oxy hóa",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy 2–3 giọt serum.

2. Thoa đều lên mặt và cổ, tránh vùng mắt.

3. Sử dụng buổi sáng, kết hợp kem chống nắng để bảo vệ da.

4. Có thể dùng thêm vào buổi tối để tăng hiệu quả chống lão hóa.

5. Bảo quản nơi khô ráo, tránh ánh sáng trực tiếp để giữ ổn định Vitamin C.
''',
  },
  {
    "id": "SP056",
    "name": "Toner Simple Soothing Facial Toner",
    "brand": "Simple",
    "type": "toner",
    "originalPrice": 115000,
    "discountPrice": 115000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 250,
    "image":
        "https://file.hstatic.net/1000360941/file/a1_0be0d05c56eb4cb7a8c9d92fd18b42f1.jpg",
    "promotion": null,
    "description":
        "Toner Simple Soothing Facial Toner giúp cân bằng da, cấp ẩm nhẹ và làm dịu da nhạy cảm.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dạng lỏng",
      "Loại da phù hợp": "Da nhạy cảm, da thường",
      "Không chứa hương liệu": "Đúng",
      "Không chứa màu nhân tạo": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Anh",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "5011451101234",
      "Phân phối tại Việt Nam": "Unilever Việt Nam",
    },
    "ingredients": [
      "Pro-Vitamin B5 – phục hồi da",
      "Chamomile Extract – làm dịu da",
      "Witch Hazel – se khít lỗ chân lông",
      "Allantoin – giảm kích ứng",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
    ],
    "usage": '''
1. Sau khi rửa mặt, thấm toner vào bông cotton.

2. Lau nhẹ nhàng toàn mặt và cổ.

3. Vỗ nhẹ để dưỡng chất thẩm thấu.

4. Sử dụng sáng và tối trước serum/kem dưỡng.

5. Có thể dùng làm lotion mask để cấp ẩm tức thì.
''',
  },
  {
    "id": "SP057",
    "name": "Kem dưỡng Paula’s Choice Omega+ Complex",
    "brand": "Paula’s Choice",
    "type": "kem dưỡng",
    "originalPrice": 690000,
    "discountPrice": 621000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://file.hstatic.net/1000223746/file/paulas_choice_omega_complex_moisturizer1_d1e528f2b3ef4e099af29a4442924e00_grande.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Kem dưỡng Paula’s Choice Omega+ Complex giàu Omega 3, 6, 9 giúp phục hồi hàng rào bảo vệ da, cấp ẩm và làm mềm da.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng kem mịn",
      "Loại da phù hợp": "Da khô, da nhạy cảm",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "0655439011234",
      "Phân phối tại Việt Nam": "Công ty TNHH Paula’s Choice Việt Nam",
    },
    "ingredients": [
      "Omega 3, 6, 9 – phục hồi hàng rào da",
      "Ceramides – củng cố lớp bảo vệ da",
      "Shea Butter – dưỡng ẩm, làm mềm da",
      "Glycerin – cấp ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
    ],
    "usage": '''
1. Sau khi rửa mặt và serum, lấy một lượng kem vừa đủ.

2. Thoa đều lên mặt và cổ, massage nhẹ nhàng.

3. Sử dụng sáng và tối để duy trì độ ẩm.

4. Có thể dùng làm lớp khóa ẩm cuối cùng trong chu trình dưỡng da.

5. Kết hợp với serum Paula’s Choice để tăng hiệu quả phục hồi.
''',
  },
  {
    "id": "SP058",
    "name": "Mặt nạ LANEIGE Water Sleeping Mask",
    "brand": "Laneige",
    "type": "mặt nạ",
    "originalPrice": 420000,
    "discountPrice": 420000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image": "https://nanabeauty.com.vn/upload/product/686566847108.jpg",
    "promotion": "Tặng 1 sample",
    "description":
        "Mặt nạ ngủ Laneige Water Sleeping Mask cấp ẩm sâu, phục hồi da trong khi ngủ, giúp da căng mịn và sáng khỏe.",
    "specs": {
      "Dung tích": "70ml",
      "Kết cấu": "Dạng gel mát",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "8809647394234",
      "Phân phối tại Việt Nam": "Công ty TNHH Laneige Việt Nam",
    },
    "ingredients": [
      "Hydro Ionized Mineral Water – cấp ẩm sâu",
      "Beta-Glucan – phục hồi da",
      "Hyaluronic Acid – giữ nước",
      "Panthenol – dưỡng ẩm",
      "Allantoin – làm dịu da",
      "Evening Primrose Root Extract – nuôi dưỡng da",
    ],
    "usage": '''
1. Sau các bước dưỡng da buổi tối, lấy một lượng vừa đủ.

2. Thoa đều lên mặt, tránh vùng mắt và môi.

3. Để qua đêm, sáng hôm sau rửa lại bằng nước sạch.

4. Sử dụng 2–3 lần/tuần để duy trì làn da căng mịn.

5. Kết hợp với kem dưỡng Laneige để tăng hiệu quả phục hồi.
''',
  },
  {
    "id": "SP059",
    "name": "Sữa rửa mặt SVR Sebiaclear Gel Moussant",
    "brand": "SVR",
    "type": "sữa rửa mặt",
    "originalPrice": 265000,
    "discountPrice": 250000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://boribeauty.com/wp-content/uploads/2023/07/gel-rua-mat-3.jpg",
    "promotion": null,
    "description":
        "Sữa rửa mặt SVR Sebiaclear Gel Moussant giúp làm sạch sâu, loại bỏ dầu thừa và ngăn ngừa mụn.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dạng gel tạo bọt",
      "Loại da phù hợp": "Da dầu, da mụn",
      "Không chứa xà phòng": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "3401360191234",
      "Phân phối tại Việt Nam": "Công ty TNHH SVR Việt Nam",
    },
    "ingredients": [
      "Gluconolactone – tẩy tế bào chết dịu nhẹ",
      "Niacinamide – giảm viêm, kiểm soát dầu",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Citric Acid – cân bằng pH",
    ],
    "usage": '''
1. Làm ướt da mặt bằng nước sạch.

2. Lấy một lượng vừa đủ, tạo bọt với nước.

3. Massage nhẹ nhàng lên mặt theo chuyển động tròn.

4. Rửa lại bằng nước sạch.

5. Sử dụng 2 lần/ngày (sáng và tối).

6. Kết hợp với toner và kem dưỡng SVR để tăng hiệu quả kiểm soát dầu.
''',
  },
  {
    "id": "SP060",
    "name": "Kem chống nắng Avene Very High Protection",
    "brand": "Avene",
    "type": "chống nắng",
    "originalPrice": 385000,
    "discountPrice": 366000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://myphamhangnga.com/wp-content/uploads/2019/11/xit-chong-nang-avene-very-high-protection-spray-1_result.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Kem chống nắng Avene Very High Protection SPF50+ PA++++ bảo vệ da khỏi tia UVA/UVB, làm dịu da nhờ nước khoáng Avene.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng kem mỏng nhẹ",
      "Loại da phù hợp": "Da nhạy cảm",
      "Chỉ số chống nắng": "SPF50+ PA++++",
      "Khả năng chống nước": "Có",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "3282770111234",
      "Phân phối tại Việt Nam": "Công ty TNHH Pierre Fabre Việt Nam",
    },
    "ingredients": [
      "UV Filters – chống tia UVA/UVB",
      "Avene Thermal Spring Water – làm dịu da",
      "Vitamin E – chống oxy hóa",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Silica – kiểm soát dầu",
    ],
    "usage": '''
1. Thoa đều lên mặt và cổ trước khi ra nắng 15–20 phút.

2. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng.

3. Dùng sau các bước dưỡng da cơ bản.

4. Có thể dùng làm lớp lót trang điểm.

5. Sử dụng hàng ngày để bảo vệ da tối ưu.
''',
  },
  {
    "id": "SP061",
    "name": "Serum Garnier Light Complete Vitamin C",
    "brand": "Garnier",
    "type": "serum",
    "originalPrice": 215000,
    "discountPrice": 193500,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://www.guardian.com.vn/media/wysiwyg/ml-2_e35c3c3db95d45d9a5a06fb32634e631_4f9632927fc74c4d8f4b714a8c5e9ebf_75d6c265eb92432e866c44295be4b62a_axifyrjg0gremfiv.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Serum Garnier Light Complete Vitamin C giúp làm sáng da, mờ thâm nám và đều màu da.",
    "specs": {
      "Dung tích": "30ml",
      "Kết cấu": "Dạng lỏng, thấm nhanh",
      "Loại da phù hợp": "Da xỉn màu, da có thâm",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "3600542192234",
      "Phân phối tại Việt Nam": "Công ty TNHH Garnier Việt Nam",
    },
    "ingredients": [
      "Vitamin C – làm sáng da, chống oxy hóa",
      "Niacinamide – cải thiện sắc tố da",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Lemon Extract – hỗ trợ sáng da",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy 2–3 giọt serum.

2. Thoa đều lên mặt và cổ, tránh vùng mắt.

3. Sử dụng sáng và tối, kết hợp kem chống nắng ban ngày để bảo vệ da.

4. Dùng liên tục ít nhất 4 tuần để thấy hiệu quả rõ rệt.

5. Kết hợp với kem dưỡng Garnier để tăng hiệu quả làm sáng da.
''',
  },
  {
    "id": "SP062",
    "name": "Toner Hada Labo Gokujyun Premium",
    "brand": "Hada Labo",
    "type": "toner",
    "originalPrice": 245000,
    "discountPrice": 230000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://media.hcdn.vn/wysiwyg/kimhuy/dung-dich-duong-am-toi-uu-hada-labo-170ml-1.jpg",
    "promotion": null,
    "description":
        "Toner Hada Labo Gokujyun Premium chứa 5 loại Hyaluronic Acid, giúp cấp ẩm sâu và duy trì độ ẩm lâu dài.",
    "specs": {
      "Dung tích": "170ml",
      "Kết cấu": "Dạng lỏng, hơi đặc",
      "Loại da phù hợp": "Da khô, da thường",
      "Không chứa hương liệu": "Đúng",
      "Không chứa cồn": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "4987107612234",
      "Phân phối tại Việt Nam": "Rohto Việt Nam",
    },
    "ingredients": [
      "5 loại Hyaluronic Acid – cấp ẩm đa tầng",
      "Glycerin – dưỡng ẩm",
      "Butylene Glycol – giữ nước",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Hydrolyzed Collagen – tăng độ đàn hồi",
    ],
    "usage": '''
1. Sau khi rửa mặt, lấy toner ra tay hoặc bông cotton.

2. Thoa đều lên mặt và cổ.

3. Vỗ nhẹ để dưỡng chất thẩm thấu.

4. Sử dụng sáng và tối trước serum/kem dưỡng.

5. Có thể dùng làm lotion mask để cấp ẩm tức thì.
''',
  },
  {
    "id": "SP063",
    "name": "Kem dưỡng Olay Regenerist Micro-Sculpting",
    "brand": "Olay",
    "type": "kem dưỡng",
    "originalPrice": 520000,
    "discountPrice": 490000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://product.hstatic.net/1000006063/product/vn-11134207-7r98o-lrcle9a1yzes68_cdc73efe848f424e81096946cdfb0878_grande.jpg",
    "promotion": "Tặng 1 mặt nạ",
    "description":
        "Kem dưỡng Olay Regenerist Micro-Sculpting giúp chống lão hóa, làm săn chắc da và giảm nếp nhăn.",
    "specs": {
      "Dung tích": "50g",
      "Kết cấu": "Dạng kem đặc",
      "Loại da phù hợp": "Da lão hóa, da khô",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "0756090123456",
      "Phân phối tại Việt Nam": "Công ty TNHH Olay Việt Nam",
    },
    "ingredients": [
      "Niacinamide – làm sáng da, chống lão hóa",
      "Amino-Peptide Complex – tăng độ săn chắc",
      "Hyaluronic Acid – cấp ẩm sâu",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Vitamin E – chống oxy hóa",
    ],
    "usage": '''
1. Sau khi rửa mặt và serum, lấy một lượng kem vừa đủ.

2. Thoa đều lên mặt và cổ, massage nhẹ nhàng.

3. Sử dụng sáng và tối để duy trì độ ẩm và giảm nếp nhăn.

4. Có thể dùng làm lớp khóa ẩm cuối cùng trong chu trình dưỡng da.

5. Kết hợp với serum Olay để tăng hiệu quả chống lão hóa.
''',
  },
  {
    "id": "SP064",
    "name": "Mặt nạ Freeman Feeling Beautiful Clay Mask",
    "brand": "Freeman",
    "type": "mặt nạ",
    "originalPrice": 85000,
    "discountPrice": 80000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 300,
    "image": "https://mint07.com/wp-content/uploads/2015/10/chanh-bac-ha.jpg",
    "promotion": null,
    "description":
        "Mặt nạ Freeman Feeling Beautiful Clay Mask giúp làm sạch sâu, hút dầu thừa và loại bỏ tạp chất trên da.",
    "specs": {
      "Dung tích": "175ml",
      "Kết cấu": "Dạng kem đất sét",
      "Loại da phù hợp": "Da dầu, da hỗn hợp",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "0721510123456",
      "Phân phối tại Việt Nam": "Công ty TNHH Freeman Việt Nam",
    },
    "ingredients": [
      "Kaolin – hút dầu thừa, làm sạch sâu",
      "Bentonite – loại bỏ tạp chất",
      "Vitamin E – chống oxy hóa",
      "Aloe Vera Extract – làm dịu da",
      "Panthenol – phục hồi da",
      "Allantoin – giảm kích ứng",
    ],
    "usage": '''
1. Sau khi rửa mặt, thoa đều lớp mặt nạ lên da, tránh vùng mắt và môi.

2. Để yên 10–15 phút cho mặt nạ khô.

3. Rửa lại bằng nước sạch.

4. Sử dụng 2–3 lần/tuần để kiểm soát dầu và làm sạch sâu.

5. Kết hợp với toner Freeman để tăng hiệu quả chăm sóc da.
''',
  },
  {
    "id": "SP065",
    "name": "Sữa rửa mặt Pond’s Pure White",
    "brand": "Pond’s",
    "type": "sữa rửa mặt",
    "originalPrice": 75000,
    "discountPrice": 71250,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 300,
    "image":
        "https://laskin.vn/wp-content/uploads/2022/11/sua-rua-mat-pond-s-lam-sang-da-n-2.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Sữa rửa mặt Pond’s Pure White với than hoạt tính giúp làm sạch sâu, loại bỏ bụi bẩn và dầu thừa.",
    "specs": {
      "Dung tích": "100g",
      "Kết cấu": "Dạng kem tạo bọt",
      "Loại da phù hợp": "Da dầu, da hỗn hợp",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Thái Lan",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8851932371234",
      "Phân phối tại Việt Nam": "Unilever Việt Nam",
    },
    "ingredients": [
      "Activated Charcoal – hút dầu thừa, làm sạch sâu",
      "Niacinamide – làm sáng da, kiểm soát dầu",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Citric Acid – cân bằng pH",
    ],
    "usage": '''
1. Làm ướt da mặt bằng nước sạch.

2. Lấy một lượng vừa đủ, tạo bọt với nước.

3. Massage nhẹ nhàng lên mặt theo chuyển động tròn.

4. Rửa lại bằng nước sạch.

5. Sử dụng 2 lần/ngày (sáng và tối).

6. Kết hợp với toner Pond’s để tăng hiệu quả làm sáng da.
''',
  },
  {
    "id": "SP066",
    "name": "Kem chống nắng The Saem Eco Earth Power",
    "brand": "The Saem",
    "type": "chống nắng",
    "originalPrice": 175000,
    "discountPrice": 175000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://file.hstatic.net/1000360941/file/a2_4e0246972f944b0384d5dce3bd0a113e.jpg",
    "promotion": null,
    "description":
        "Kem chống nắng The Saem Eco Earth Power SPF50+ PA++++ bảo vệ da khỏi tia UVA/UVB, chống nước và mồ hôi.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng kem mỏng nhẹ",
      "Loại da phù hợp": "Mọi loại da",
      "Chỉ số chống nắng": "SPF50+ PA++++",
      "Khả năng chống nước": "Có",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "8806164171234",
      "Phân phối tại Việt Nam": "Công ty TNHH The Saem Việt Nam",
    },
    "ingredients": [
      "Zinc Oxide – chống tia UVA/UVB",
      "Titanium Dioxide – bảo vệ da",
      "Niacinamide – làm sáng da",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. Thoa đều lên mặt và cổ trước khi ra nắng 15–20 phút.

2. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng.

3. Dùng sau các bước dưỡng da cơ bản.

4. Có thể dùng làm lớp lót trang điểm.

5. Sử dụng hàng ngày để bảo vệ da tối ưu.
''',
  },
  {
    "id": "SP067",
    "name": "Tẩy trang Byphasse Solution Micellaire",
    "brand": "Byphasse",
    "type": "tẩy trang",
    "originalPrice": 125000,
    "discountPrice": 125000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 280,
    "image":
        "https://cdn.hstatic.net/products/200000530637/93ab1796-4dca-4c3f-8957-ce58e1d30bac_0c11758b5d5c493d804eac9896bfc9b7_large.jpg",
    "promotion": "Tặng 1 bông tẩy trang",
    "description":
        "Nước tẩy trang Byphasse Solution Micellaire làm sạch lớp trang điểm và bụi bẩn, dịu nhẹ cho da.",
    "specs": {
      "Dung tích": "500ml",
      "Kết cấu": "Dạng nước trong suốt",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Tây Ban Nha",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "8436097091234",
      "Phân phối tại Việt Nam": "Công ty TNHH Byphasse Việt Nam",
    },
    "ingredients": [
      "Micelle Technology – làm sạch sâu lớp trang điểm",
      "Glycerin – dưỡng ẩm",
      "Aloe Vera Extract – làm dịu da",
      "Panthenol – phục hồi da",
      "Allantoin – giảm kích ứng",
      "Cucumber Extract – làm mát da",
    ],
    "usage": '''
1. Thấm nước tẩy trang vào bông cotton.

2. Lau nhẹ nhàng toàn mặt để loại bỏ lớp trang điểm và bụi bẩn.

3. Không cần rửa lại bằng nước, nhưng có thể rửa nếu muốn.

4. Sử dụng hàng ngày, sáng và tối.

5. Có thể dùng cho vùng mắt và môi.
''',
  },
  {
    "id": "SP068",
    "name": "Serum L’Oreal Glycolic Bright",
    "brand": "L’Oreal",
    "type": "serum",
    "originalPrice": 395000,
    "discountPrice": 375000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://media.hcdn.vn/wysiwyg/Chau/serum-l-oreal-paris-duong-sang-va-mo-tham-nam-30ml-1.jpg",
    "promotion": null,
    "description":
        "Serum L’Oreal Glycolic Bright chứa Glycolic Acid giúp làm sáng da, mờ thâm và cải thiện kết cấu da.",
    "specs": {
      "Dung tích": "30ml",
      "Kết cấu": "Dạng lỏng, thấm nhanh",
      "Loại da phù hợp": "Da xỉn màu, da có thâm",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "3600524012234",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oréal Việt Nam",
    },
    "ingredients": [
      "Glycolic Acid – tẩy tế bào chết, làm sáng da",
      "Niacinamide – cải thiện sắc tố da",
      "Vitamin C – chống oxy hóa, mờ thâm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy 2–3 giọt serum.

2. Thoa đều lên mặt và cổ, tránh vùng mắt.

3. Sử dụng buổi tối, kết hợp kem chống nắng ban ngày để bảo vệ da.

4. Dùng liên tục ít nhất 4 tuần để thấy hiệu quả rõ rệt.

5. Kết hợp với kem dưỡng L’Oreal để tăng hiệu quả làm sáng da.
''',
  },
  {
    "id": "SP069",
    "name": "Toner Evoluderm Eau Pure",
    "brand": "Evoluderm",
    "type": "toner",
    "originalPrice": 99000,
    "discountPrice": 89100,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 250,
    "image":
        "https://product.hstatic.net/200000736563/product/upload_3e6c4d03cead49fab69006b02c2d4fef_master.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Toner Evoluderm Eau Pure giúp làm sạch da sau bước rửa mặt, cân bằng độ ẩm và se khít lỗ chân lông.",
    "specs": {
      "Dung tích": "250ml",
      "Kết cấu": "Dạng lỏng",
      "Loại da phù hợp": "Da thường, da hỗn hợp",
      "Có hương liệu": "Có",
      "Không chứa cồn": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "3760100682234",
      "Phân phối tại Việt Nam": "Công ty TNHH Evoluderm Việt Nam",
    },
    "ingredients": [
      "Aqua – dung môi",
      "Glycerin – dưỡng ẩm",
      "Fragrance – hương liệu",
      "Citric Acid – cân bằng pH",
      "Allantoin – làm dịu da",
      "Panthenol – phục hồi da",
    ],
    "usage": '''
1. Sau khi rửa mặt, thấm toner vào bông cotton.

2. Lau nhẹ nhàng toàn mặt và cổ.

3. Vỗ nhẹ để dưỡng chất thẩm thấu.

4. Sử dụng sáng và tối trước serum/kem dưỡng.

5. Có thể dùng làm lotion mask để cấp ẩm tức thì.
''',
  },
  {
    "id": "SP070",
    "name": "Kem dưỡng Pond’s Age Miracle",
    "brand": "Pond’s",
    "type": "kem dưỡng",
    "originalPrice": 295000,
    "discountPrice": 280000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://media.hcdn.vn/wysiwyg/kimhuy/kem-duong-da-pond-s-ngan-ngua-lao-hoa-50g-3_1.jpg",
    "promotion": null,
    "description":
        "Kem dưỡng Pond’s Age Miracle giúp chống lão hóa, làm săn chắc da và giảm nếp nhăn.",
    "specs": {
      "Dung tích": "50g",
      "Kết cấu": "Dạng kem đặc",
      "Loại da phù hợp": "Da lão hóa, da khô",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Thái Lan",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "8851932372234",
      "Phân phối tại Việt Nam": "Unilever Việt Nam",
    },
    "ingredients": [
      "Retinol-C Complex – chống lão hóa, giảm nếp nhăn",
      "Niacinamide – làm sáng da",
      "Vitamin E – chống oxy hóa",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. Sau khi rửa mặt và serum, lấy một lượng kem vừa đủ.

2. Thoa đều lên mặt và cổ, massage nhẹ nhàng.

3. Sử dụng sáng và tối để duy trì độ ẩm và giảm nếp nhăn.

4. Có thể dùng làm lớp khóa ẩm cuối cùng trong chu trình dưỡng da.

5. Kết hợp với serum Pond’s để tăng hiệu quả chống lão hóa.
''',
  },
  {
    "id": "SP071",
    "name": "Mặt nạ Innisfree My Real Squeeze Mask",
    "brand": "Innisfree",
    "type": "mặt nạ",
    "originalPrice": 25000,
    "discountPrice": 25000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 600,
    "image":
        "https://adminbeauty.hvnet.vn/Upload/images/review-danh-gia-mat-na-giay-innisfree-its-real-squeeze-mask-hinh-anh-2.jpg",
    "promotion": "Mua 5 tặng 1",
    "description":
        "Mặt nạ Innisfree My Real Squeeze Mask chiết xuất từ thiên nhiên, giúp cấp ẩm và nuôi dưỡng da.",
    "specs": {
      "Dung tích": "20ml/túi",
      "Kết cấu": "Dạng giấy cotton thấm tinh chất",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "8809647395234",
      "Phân phối tại Việt Nam": "Công ty TNHH Innisfree Việt Nam",
    },
    "ingredients": [
      "Green Tea Extract – chống oxy hóa, cấp ẩm",
      "Aloe Vera Extract – làm dịu da",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – giảm kích ứng",
      "Niacinamide – làm sáng da",
    ],
    "usage": '''
1. Sau khi rửa mặt, lấy mặt nạ ra khỏi túi.

2. Đắp lên mặt, căn chỉnh cho vừa vặn.

3. Thư giãn 15–20 phút để tinh chất thẩm thấu.

4. Gỡ mặt nạ, vỗ nhẹ tinh chất còn lại để thẩm thấu.

5. Không cần rửa lại bằng nước, tiếp tục các bước dưỡng da sau đó.

6. Sử dụng 2–3 lần/tuần để duy trì làn da khỏe mạnh.
''',
  },
  {
    "id": "SP072",
    "name": "Sữa rửa mặt Clean & Clear Foaming",
    "brand": "Clean & Clear",
    "type": "sữa rửa mặt",
    "originalPrice": 65000,
    "discountPrice": 65000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 300,
    "image":
        "https://media.hcdn.vn/wysiwyg/Chau/sua-rua-mat-clean-clear-100g-1.jpg",
    "promotion": null,
    "description":
        "Sữa rửa mặt Clean & Clear Foaming giúp làm sạch bụi bẩn, dầu thừa và ngăn ngừa mụn.",
    "specs": {
      "Dung tích": "100ml",
      "Kết cấu": "Dạng gel tạo bọt",
      "Loại da phù hợp": "Da dầu, da mụn",
      "Có hương liệu": "Có",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "0705010172234",
      "Phân phối tại Việt Nam": "Johnson & Johnson Việt Nam",
    },
    "ingredients": [
      "Triclosan – kháng khuẩn, ngăn ngừa mụn",
      "Glycerin – dưỡng ẩm",
      "Water – dung môi",
      "Sodium Laureth Sulfate – tạo bọt",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
    ],
    "usage": '''
1. Làm ướt da mặt bằng nước sạch.

2. Lấy một lượng vừa đủ, tạo bọt với nước.

3. Massage nhẹ nhàng lên mặt theo chuyển động tròn.

4. Rửa lại bằng nước sạch.

5. Sử dụng 2 lần/ngày (sáng và tối).

6. Kết hợp với toner Clean & Clear để tăng hiệu quả kiểm soát dầu.
''',
  },
  {
    "id": "SP073",
    "name": "Kem chống nắng Sunplay Skin Aqua",
    "brand": "Sunplay",
    "type": "chống nắng",
    "originalPrice": 145000,
    "discountPrice": 137750,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://product.hstatic.net/200000551679/product/sunplay_sua_chong_nang_skin_aqua_clear_white__1__1d343f3cc7b0463b97af275329a06c53_1024x1024.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Kem chống nắng Sunplay Skin Aqua SPF50+ PA++++ bảo vệ da khỏi tia UVA/UVB, kết cấu mỏng nhẹ.",
    "specs": {
      "Dung tích": "50g",
      "Kết cấu": "Dạng sữa lỏng nhẹ",
      "Loại da phù hợp": "Mọi loại da",
      "Chỉ số chống nắng": "SPF50+ PA++++",
      "Khả năng chống nước": "Có",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "4901301332234",
      "Phân phối tại Việt Nam": "Rohto Việt Nam",
    },
    "ingredients": [
      "Hyaluronic Acid – cấp ẩm",
      "Vitamin C – chống oxy hóa, làm sáng da",
      "UV Filters – bảo vệ da khỏi tia UVA/UVB",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Silica – kiểm soát dầu",
    ],
    "usage": '''
1. Thoa đều lên mặt và cổ trước khi ra nắng 15–20 phút.

2. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng.

3. Dùng sau các bước dưỡng da cơ bản.

4. Có thể dùng làm lớp lót trang điểm.

5. Sử dụng hàng ngày để bảo vệ da tối ưu.
''',
  },
  {
    "id": "SP074",
    "name": "Tẩy trang Nivea MicellAIR Skin Breathe",
    "brand": "Nivea",
    "type": "tẩy trang",
    "originalPrice": 135000,
    "discountPrice": 128000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 280,
    "image": "https://media.hcdn.vn/wysiwyg/Chau/nuoc-tay-trang-nivea-3.jpg",
    "promotion": null,
    "description":
        "Nước tẩy trang Nivea MicellAIR Skin Breathe làm sạch lớp trang điểm và bụi bẩn, dịu nhẹ cho da.",
    "specs": {
      "Dung tích": "400ml",
      "Kết cấu": "Dạng nước trong suốt",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Đức",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "4005900123456",
      "Phân phối tại Việt Nam": "Beiersdorf Việt Nam",
    },
    "ingredients": [
      "Micelle Technology – làm sạch sâu lớp trang điểm",
      "Glycerin – dưỡng ẩm",
      "Chamomile Extract – làm dịu da",
      "Panthenol – phục hồi da",
      "Allantoin – giảm kích ứng",
      "Cucumber Extract – làm mát da",
    ],
    "usage": '''
1. Thấm nước tẩy trang vào bông cotton.

2. Lau nhẹ nhàng toàn mặt để loại bỏ lớp trang điểm và bụi bẩn.

3. Không cần rửa lại bằng nước, nhưng có thể rửa nếu muốn.

4. Sử dụng hàng ngày, sáng và tối.

5. Có thể dùng cho vùng mắt và môi.
''',
  },
  {
    "id": "SP075",
    "name": "Serum Rohto Melano CC",
    "brand": "Rohto",
    "type": "serum",
    "originalPrice": 295000,
    "discountPrice": 295000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://www.shopnhatchaly.com/wp-content/uploads/2023/05/Serum-Melano-CC-Vitamin-C-Rohto-noi-dia-Nhat.jpg",
    "promotion": "Tặng 1 mặt nạ",
    "description":
        "Serum Rohto Melano CC chứa Vitamin C tinh khiết giúp làm sáng da, mờ thâm và đều màu da.",
    "specs": {
      "Dung tích": "20ml",
      "Kết cấu": "Dạng lỏng, thấm nhanh",
      "Loại da phù hợp": "Da xỉn màu, da có thâm",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "4987241141234",
      "Phân phối tại Việt Nam": "Rohto Việt Nam",
    },
    "ingredients": [
      "Vitamin C – làm sáng da, chống oxy hóa",
      "Vitamin E – bảo vệ da khỏi gốc tự do",
      "Alpinia White Extract – hỗ trợ làm sáng da",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy 2–3 giọt serum.

2. Thoa đều lên mặt, tập trung vùng da thâm.

3. Sử dụng sáng và tối, kết hợp kem chống nắng ban ngày để bảo vệ da.

4. Dùng liên tục ít nhất 4 tuần để thấy hiệu quả rõ rệt.

5. Kết hợp với kem dưỡng Rohto để tăng hiệu quả làm sáng da.
''',
  },
  {
    "id": "SP076",
    "name": "Toner The Ordinary Glycolic Acid 7%",
    "brand": "The Ordinary",
    "type": "toner",
    "originalPrice": 295000,
    "discountPrice": 280000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://www.dermacolvietnam.net/wp-content/uploads/2025/03/481235977_971797275095827_2438069365694181920_n.jpeg",
    "promotion": null,
    "description":
        "Toner The Ordinary Glycolic Acid 7% giúp tẩy tế bào chết nhẹ nhàng, cải thiện kết cấu da và làm sáng da.",
    "specs": {
      "Dung tích": "240ml",
      "Kết cấu": "Dạng lỏng",
      "Loại da phù hợp": "Da dầu, da hỗn hợp",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Canada",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "7699151901234",
      "Phân phối tại Việt Nam": "Deciem Việt Nam",
    },
    "ingredients": [
      "Glycolic Acid 7% – tẩy tế bào chết, làm sáng da",
      "Aloe Vera Extract – làm dịu da",
      "Ginseng Root Extract – chống oxy hóa",
      "Panthenol – phục hồi da",
      "Allantoin – giảm kích ứng",
      "Tasmanian Pepperberry Extract – giảm kích ứng do acid",
    ],
    "usage": '''
1. Sau khi rửa mặt, thấm toner vào bông cotton.

2. Lau nhẹ nhàng toàn mặt, tránh vùng mắt.

3. Sử dụng buổi tối, tuần 2–3 lần để da làm quen.

4. Luôn kết hợp kem chống nắng ban ngày khi dùng sản phẩm chứa AHA.

5. Có thể dùng làm lotion mask cho vùng da sần sùi.
''',
  },
  {
    "id": "SP077",
    "name": "Kem dưỡng Vaseline Healthy White",
    "brand": "Vaseline",
    "type": "kem dưỡng",
    "originalPrice": 115000,
    "discountPrice": 103500,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 300,
    "image":
        "https://bonita.vn/wp-content/uploads/2020/06/484112988_540651489060161_96737132551202892_n.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Kem dưỡng Vaseline Healthy White giúp dưỡng trắng, cấp ẩm và bảo vệ da khỏi tác hại môi trường.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dạng lotion mỏng nhẹ",
      "Loại da phù hợp": "Da thường, da khô",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Thái Lan",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8851932373234",
      "Phân phối tại Việt Nam": "Unilever Việt Nam",
    },
    "ingredients": [
      "Niacinamide – làm sáng da, cải thiện sắc tố",
      "Vitamin B3 – chống oxy hóa, dưỡng trắng",
      "Petrolatum – khóa ẩm, bảo vệ da",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
    ],
    "usage": '''
1. Sau khi tắm, lấy một lượng kem vừa đủ.

2. Thoa đều lên toàn thân, đặc biệt vùng da khô.

3. Sử dụng hàng ngày để đạt hiệu quả tốt nhất.

4. Kết hợp với sữa tắm Vaseline để tăng hiệu quả dưỡng trắng.
''',
  },
  {
    "id": "SP078",
    "name": "Mặt nạ Lush Mask of Magnaminty",
    "brand": "Lush",
    "type": "mặt nạ",
    "originalPrice": 420000,
    "discountPrice": 400000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://sg-live-01.slatic.net/p/909b7d7f3d512f979909913e20450b2f.jpg_525x525q80.jpg",
    "promotion": null,
    "description":
        "Mặt nạ Lush Mask of Magnaminty giúp làm sạch sâu, loại bỏ tế bào chết và làm dịu da.",
    "specs": {
      "Dung tích": "125g",
      "Kết cấu": "Dạng kem đất sét có hạt",
      "Loại da phù hợp": "Da dầu, da hỗn hợp",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Anh",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "5028197962234",
      "Phân phối tại Việt Nam": "Công ty TNHH Lush Việt Nam",
    },
    "ingredients": [
      "Peppermint Oil – làm mát, kháng khuẩn",
      "Kaolin – hút dầu thừa, làm sạch sâu",
      "Honey – dưỡng ẩm, kháng khuẩn",
      "Ground Aduki Beans – tẩy tế bào chết cơ học",
      "Glycerin – cấp ẩm",
      "Panthenol – phục hồi da",
    ],
    "usage": '''
1. Sau khi rửa mặt, thoa đều lớp mặt nạ lên da, tránh vùng mắt và môi.

2. Để yên 10–15 phút cho mặt nạ khô.

3. Rửa lại bằng nước sạch.

4. Sử dụng 2–3 lần/tuần để kiểm soát dầu và làm sạch sâu.

5. Kết hợp với toner Lush để tăng hiệu quả chăm sóc da.
''',
  },
  {
    "id": "SP079",
    "name": "Sữa rửa mặt Acnes Creamy Wash",
    "brand": "Acnes",
    "type": "sữa rửa mặt",
    "originalPrice": 65000,
    "discountPrice": 65000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 350,
    "image":
        "https://cdn.hstatic.net/products/1000006063/6_5b2402bff3234653b60fac1d364a4ce7_1024x1024.jpg",
    "promotion": "Mua 2 tặng 1",
    "description":
        "Sữa rửa mặt Acnes Creamy Wash giúp làm sạch bụi bẩn, dầu thừa và ngăn ngừa mụn.",
    "specs": {
      "Dung tích": "100g",
      "Kết cấu": "Dạng kem tạo bọt",
      "Loại da phù hợp": "Da dầu, da mụn",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Việt Nam",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "8938505972234",
      "Phân phối tại Việt Nam": "Công ty TNHH Rohto Việt Nam",
    },
    "ingredients": [
      "Salicylic Acid – làm sạch sâu, giảm mụn",
      "Vitamin C – chống oxy hóa, làm sáng da",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Sodium Lauryl Sulfate – tạo bọt",
    ],
    "usage": '''
1. Làm ướt da mặt bằng nước sạch.

2. Lấy một lượng vừa đủ, tạo bọt với nước.

3. Massage nhẹ nhàng lên mặt theo chuyển động tròn.

4. Rửa lại bằng nước sạch.

5. Sử dụng 2 lần/ngày (sáng và tối).

6. Kết hợp với toner Acnes để tăng hiệu quả kiểm soát dầu.
''',
  },
  {
    "id": "SP080",
    "name": "Kem chống nắng Cell Fusion C Laser Sunscreen",
    "brand": "Cell Fusion C",
    "type": "chống nắng",
    "originalPrice": 395000,
    "discountPrice": 380000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://mint07.com/wp-content/uploads/2021/06/kem-chong-nang-cell-fusion-c-laser-sunscreen-100-spf-50-pa-5-1.jpg",
    "promotion": null,
    "description":
        "Kem chống nắng Cell Fusion C Laser Sunscreen SPF50+ PA++++ bảo vệ da khỏi tia UVA/UVB, thích hợp sau điều trị laser.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng kem mỏng nhẹ",
      "Loại da phù hợp": "Da nhạy cảm, da sau điều trị",
      "Chỉ số chống nắng": "SPF50+ PA++++",
      "Khả năng chống nước": "Có",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8809115022234",
      "Phân phối tại Việt Nam": "Công ty TNHH Cell Fusion C Việt Nam",
    },
    "ingredients": [
      "Zinc Oxide – chống tia UVA/UVB",
      "Titanium Dioxide – bảo vệ da",
      "Centella Asiatica Extract – làm dịu, phục hồi da",
      "Panthenol – dưỡng ẩm, phục hồi",
      "Allantoin – giảm kích ứng",
      "Glycerin – cấp ẩm",
    ],
    "usage": '''
1. Thoa đều lên mặt và cổ trước khi ra nắng 15–20 phút.

2. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng.

3. Dùng sau các bước dưỡng da cơ bản.

4. Sử dụng hàng ngày để bảo vệ da tối ưu, đặc biệt sau điều trị laser.
''',
  },
  {
    "id": "SP081",
    "name": "Serum Innisfree Brightening Pore",
    "brand": "Innisfree",
    "type": "serum",
    "originalPrice": 420000,
    "discountPrice": 378000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://www.innisfree.vn/static/upload/product/product/99_ID0101_2.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Serum Innisfree Brightening Pore chứa chiết xuất quýt Jeju, giúp làm sáng da và thu nhỏ lỗ chân lông.",
    "specs": {
      "Dung tích": "30ml",
      "Kết cấu": "Dạng lỏng, thấm nhanh",
      "Loại da phù hợp": "Da xỉn màu, da có lỗ chân lông to",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "8809647396234",
      "Phân phối tại Việt Nam": "Công ty TNHH Innisfree Việt Nam",
    },
    "ingredients": [
      "Jeju Tangerine Extract – làm sáng da, thu nhỏ lỗ chân lông",
      "Niacinamide – cải thiện sắc tố da",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Glycerin – dưỡng ẩm",
      "Vitamin C – chống oxy hóa",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy 2–3 giọt serum.

2. Thoa đều lên mặt và cổ, tập trung vùng da xỉn màu.

3. Sử dụng sáng và tối, kết hợp kem chống nắng ban ngày để bảo vệ da.

4. Dùng liên tục ít nhất 4 tuần để thấy hiệu quả rõ rệt.
''',
  },
  {
    "id": "SP082",
    "name": "Toner Cosrx Centella Water Alcohol-Free",
    "brand": "Cosrx",
    "type": "toner",
    "originalPrice": 245000,
    "discountPrice": 230000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://salt.tikicdn.com/cache/w300/ts/product/b0/7a/24/a76895a37d029abfe9007cdf953ef6b3.jpg",
    "promotion": null,
    "description":
        "Toner Cosrx Centella Water Alcohol-Free giúp làm dịu da, cấp ẩm và giảm kích ứng.",
    "specs": {
      "Dung tích": "150ml",
      "Kết cấu": "Dạng lỏng",
      "Loại da phù hợp": "Da nhạy cảm, da mụn",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "8809115023234",
      "Phân phối tại Việt Nam": "Công ty TNHH Cosrx Việt Nam",
    },
    "ingredients": [
      "Centella Asiatica Extract – làm dịu, phục hồi da",
      "Mineral Water – cấp khoáng chất",
      "Panthenol – dưỡng ẩm, phục hồi",
      "Allantoin – giảm kích ứng",
      "Glycerin – dưỡng ẩm",
      "Betaine – giữ nước",
    ],
    "usage": '''
1. Sau khi rửa mặt, thấm toner vào bông cotton hoặc tay sạch.

2. Thoa đều lên mặt và cổ.

3. Vỗ nhẹ để dưỡng chất thẩm thấu.

4. Sử dụng sáng và tối trước serum/kem dưỡng.

5. Có thể dùng làm lotion mask để cấp ẩm tức thì.
''',
  },
  {
    "id": "SP083",
    "name": "Kem dưỡng SVR Hydraliane Riche",
    "brand": "SVR",
    "type": "kem dưỡng",
    "originalPrice": 395000,
    "discountPrice": 395000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://fmccosmetics.com.vn/image/upload/catalog/san-pham/duong-am/kem-duong-am-cho-da-bong-troc-kinh-nien-hon-tran-svr-hydraliane-riche-40ml-1000x1000.jpg",
    "promotion": "Tặng 1 sample",
    "description":
        "Kem dưỡng SVR Hydraliane Riche giúp cấp ẩm sâu, phục hồi da khô và nhạy cảm.",
    "specs": {
      "Dung tích": "40ml",
      "Kết cấu": "Dạng kem đặc",
      "Loại da phù hợp": "Da khô, da nhạy cảm",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "3401360192234",
      "Phân phối tại Việt Nam": "Công ty TNHH SVR Việt Nam",
    },
    "ingredients": [
      "Hydrophilic Sugars – cấp ẩm sâu",
      "Vitamin E – chống oxy hóa",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Shea Butter – nuôi dưỡng da",
    ],
    "usage": '''
1. Sau khi rửa mặt và serum, lấy một lượng kem vừa đủ.

2. Thoa đều lên mặt và cổ, massage nhẹ nhàng.

3. Sử dụng sáng và tối để duy trì độ ẩm.

4. Có thể dùng làm lớp khóa ẩm cuối cùng trong chu trình dưỡng da.
''',
  },
  {
    "id": "SP084",
    "name": "Mặt nạ Dr.Jart+ Dermask Water Jet",
    "brand": "Dr.Jart+",
    "type": "mặt nạ",
    "originalPrice": 32000,
    "discountPrice": 30000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 500,
    "image":
        "https://media.hcdn.vn/wysiwyg/HaNguyen/mat-na-dr-jart-duong-da-4.jpg",
    "promotion": null,
    "description":
        "Mặt nạ Dr.Jart+ Dermask Water Jet cấp ẩm sâu, làm dịu da và phục hồi làn da khô ráp.",
    "specs": {
      "Dung tích": "25g/túi",
      "Kết cấu": "Dạng giấy cotton thấm tinh chất",
      "Loại da phù hợp": "Da khô, da nhạy cảm",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "8809647397234",
      "Phân phối tại Việt Nam": "Công ty TNHH Dr.Jart+ Việt Nam",
    },
    "ingredients": [
      "Aquaxyl – cấp ẩm sâu",
      "Hyaluronic Acid – giữ nước",
      "Phyto Oligo Complex – phục hồi da",
      "Panthenol – dưỡng ẩm",
      "Allantoin – làm dịu da",
      "Aloe Vera Extract – làm mát da",
    ],
    "usage": '''
1. Sau khi rửa mặt, lấy mặt nạ ra khỏi túi.

2. Đắp lên mặt, căn chỉnh cho vừa vặn.

3. Thư giãn 15–20 phút để tinh chất thẩm thấu.

4. Gỡ mặt nạ, vỗ nhẹ tinh chất còn lại để thẩm thấu.

5. Không cần rửa lại bằng nước, tiếp tục các bước dưỡng da sau đó.
''',
  },
  {
    "id": "SP085",
    "name": "Sữa rửa mặt La Roche-Posay Effaclar",
    "brand": "La Roche-Posay",
    "type": "sữa rửa mặt",
    "originalPrice": 295000,
    "discountPrice": 280000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://media.hcdn.vn/catalog/product/f/a/facebook-dynamic-gel-rua-mat-tao-bot-la-roche-posay-danh-cho-da-dau-nhay-cam-200ml-1716603223_img_450x450_31d6f9_fit_center.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Sữa rửa mặt La Roche-Posay Effaclar giúp làm sạch sâu, loại bỏ dầu thừa và ngăn ngừa mụn.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dạng gel tạo bọt",
      "Loại da phù hợp": "Da dầu, da mụn",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "3337871323234",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oréal Việt Nam",
    },
    "ingredients": [
      "Zinc PCA – kiểm soát dầu",
      "Salicylic Acid – làm sạch sâu, giảm mụn",
      "La Roche-Posay Thermal Water – làm dịu da",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – giảm kích ứng",
    ],
    "usage": '''
1. Làm ướt da mặt bằng nước sạch.

2. Lấy một lượng vừa đủ, tạo bọt với nước.

3. Massage nhẹ nhàng lên mặt theo chuyển động tròn.

4. Rửa lại bằng nước sạch.

5. Sử dụng 2 lần/ngày (sáng và tối).

6. Kết hợp với toner La Roche-Posay để tăng hiệu quả kiểm soát dầu.
''',
  },
  {
    "id": "SP086",
    "name": "Kem chống nắng The Ordinary Mineral UV Filters",
    "brand": "The Ordinary",
    "type": "chống nắng",
    "originalPrice": 310000,
    "discountPrice": 295000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://afamilycdn.com/150157425591193600/2021/5/8/theordinarymineraluvfilter15882246988615f89b-1620470896538458378205.jpg",
    "promotion": null,
    "description":
        "Kem chống nắng The Ordinary Mineral UV Filters SPF30 bảo vệ da bằng bộ lọc khoáng, dịu nhẹ cho da nhạy cảm.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng kem mỏng nhẹ",
      "Loại da phù hợp": "Da nhạy cảm, da thường",
      "Chỉ số chống nắng": "SPF30",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Canada",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "7699151902234",
      "Phân phối tại Việt Nam": "Deciem Việt Nam",
    },
    "ingredients": [
      "Zinc Oxide – chống tia UVA/UVB",
      "Titanium Dioxide – bảo vệ da",
      "Antioxidants – chống oxy hóa",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. Thoa đều lên mặt và cổ trước khi ra nắng 15–20 phút.

2. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng.

3. Dùng sau các bước dưỡng da cơ bản.

4. Sử dụng hàng ngày để bảo vệ da tối ưu.
''',
  },
  {
    "id": "SP087",
    "name": "Tẩy trang Garnier Micellar Oil-Infused",
    "brand": "Garnier",
    "type": "tẩy trang",
    "originalPrice": 155000,
    "discountPrice": 155000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 250,
    "image":
        "https://product.hstatic.net/200000150709/product/f0e5d1a924db3f179652796f4e1fa237_d7da0d30647042d7830c61d91de0d44c.jpg",
    "promotion": "Tặng 1 bông tẩy trang",
    "description":
        "Nước tẩy trang Garnier Micellar Oil-Infused làm sạch lớp trang điểm kể cả chống nước, đồng thời dưỡng ẩm cho da.",
    "specs": {
      "Dung tích": "400ml",
      "Kết cấu": "Dạng nước hai lớp",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa cồn": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "3600542193234",
      "Phân phối tại Việt Nam": "Công ty TNHH Garnier Việt Nam",
    },
    "ingredients": [
      "Micelle Technology – làm sạch sâu lớp trang điểm",
      "Argan Oil – dưỡng ẩm, nuôi dưỡng da",
      "Glycerin – cấp ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Cucumber Extract – làm mát da",
    ],
    "usage": '''
1. Lắc đều trước khi sử dụng.

2. Thấm dung dịch vào bông cotton.

3. Lau nhẹ nhàng toàn mặt để loại bỏ lớp trang điểm và bụi bẩn.

4. Không cần rửa lại bằng nước, nhưng có thể rửa nếu muốn.

5. Sử dụng hàng ngày, sáng và tối.
''',
  },
  {
    "id": "SP088",
    "name": "Serum Klairs Freshly Juiced Vitamin Drop",
    "brand": "Klairs",
    "type": "serum",
    "originalPrice": 295000,
    "discountPrice": 280000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://fmccosmetics.com.vn/image/upload/catalog/san-pham/Serum/klairs-freshly-juiced-vitamin-drop-270x270.jpg",
    "promotion": null,
    "description":
        "Serum Klairs Freshly Juiced Vitamin Drop chứa Vitamin C tinh khiết giúp làm sáng da và mờ thâm.",
    "specs": {
      "Dung tích": "35ml",
      "Kết cấu": "Dạng lỏng, thấm nhanh",
      "Loại da phù hợp": "Da xỉn màu, da có thâm",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "8809115024234",
      "Phân phối tại Việt Nam": "Công ty TNHH Klairs Việt Nam",
    },
    "ingredients": [
      "Vitamin C (Ascorbic Acid) – làm sáng da, chống oxy hóa",
      "Centella Asiatica Extract – làm dịu, phục hồi da",
      "Yuzu Extract – hỗ trợ sáng da",
      "Panthenol – phục hồi da",
      "Allantoin – giảm kích ứng",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy 2–3 giọt serum.

2. Thoa đều lên mặt và cổ, tránh vùng mắt.

3. Sử dụng buổi tối, kết hợp kem chống nắng ban ngày để bảo vệ da.

4. Dùng liên tục ít nhất 4 tuần để thấy hiệu quả rõ rệt.
''',
  },
  {
    "id": "SP089",
    "name": "Toner Mamonde Pore Clean",
    "brand": "Mamonde",
    "type": "toner",
    "originalPrice": 215000,
    "discountPrice": 193500,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 250,
    "image":
        "https://product.hstatic.net/200000232425/product/upload_ab75253e5fed41a6a75cf75ff20fe4a5_master.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Toner Mamonde Pore Clean chứa chiết xuất hoa sen và bùn tự nhiên, giúp làm sạch lỗ chân lông và kiểm soát dầu.",
    "specs": {
      "Dung tích": "250ml",
      "Kết cấu": "Dạng lỏng",
      "Loại da phù hợp": "Da dầu, da hỗn hợp",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8806182563234",
      "Phân phối tại Việt Nam": "Công ty TNHH AmorePacific Việt Nam",
    },
    "ingredients": [
      "Eoseongcho Extract – kháng viêm, làm sạch da",
      "Lotus Extract – thanh lọc da, chống oxy hóa",
      "Mud Extract – hút dầu thừa, làm sạch lỗ chân lông",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. Sau khi rửa mặt, thấm toner vào bông cotton.

2. Lau nhẹ nhàng toàn mặt và cổ.

3. Vỗ nhẹ để dưỡng chất thẩm thấu.

4. Sử dụng sáng và tối trước serum/kem dưỡng.

5. Có thể dùng làm lotion mask cho vùng da dầu.
''',
  },
  {
    "id": "SP090",
    "name": "Kem dưỡng Neutrogena Bright Boost",
    "brand": "Neutrogena",
    "type": "kem dưỡng",
    "originalPrice": 365000,
    "discountPrice": 345000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://img.lazcdn.com/g/p/e24fb7436ed59528ae8f33c4b11e086d.jpg_720x720q80.jpg",
    "promotion": null,
    "description":
        "Kem dưỡng Neutrogena Bright Boost giúp làm sáng da, cải thiện kết cấu và giảm dấu hiệu lão hóa sớm.",
    "specs": {
      "Dung tích": "50g",
      "Kết cấu": "Dạng gel mịn",
      "Loại da phù hợp": "Da xỉn màu, da thường",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "0705010173234",
      "Phân phối tại Việt Nam": "Johnson & Johnson Việt Nam",
    },
    "ingredients": [
      "Neoglucosamine – kích thích tái tạo tế bào",
      "Vitamin C – chống oxy hóa, làm sáng da",
      "AHA Complex – tẩy tế bào chết nhẹ nhàng",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. Sau khi rửa mặt và serum, lấy một lượng kem vừa đủ.

2. Thoa đều lên mặt và cổ, massage nhẹ nhàng.

3. Sử dụng sáng và tối để duy trì độ sáng và cải thiện kết cấu da.

4. Kết hợp với kem chống nắng ban ngày để bảo vệ da.
''',
  },
  {
    "id": "SP091",
    "name": "Mặt nạ Mediheal N.M.F Aquaring Ampoule",
    "brand": "Mediheal",
    "type": "mặt nạ",
    "originalPrice": 27000,
    "discountPrice": 27000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 600,
    "image":
        "https://media.hcdn.vn/wysiwyg/HaNguyen2/mat-na-mediheal-ampoule-mask-ex-25ml-4.jpg",
    "promotion": "Mua 10 tặng 2",
    "description":
        "Mặt nạ Mediheal N.M.F Aquaring Ampoule cung cấp độ ẩm chuyên sâu, giúp da căng mịn và đàn hồi.",
    "specs": {
      "Dung tích": "25ml/túi",
      "Kết cấu": "Dạng giấy cotton thấm tinh chất",
      "Loại da phù hợp": "Da khô, da thường",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "8809647398234",
      "Phân phối tại Việt Nam": "Công ty TNHH Mediheal Việt Nam",
    },
    "ingredients": [
      "Hyaluronic Acid – cấp ẩm sâu",
      "Ceramide – củng cố hàng rào da",
      "Witch Hazel Extract – se khít lỗ chân lông",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Beta-Glucan – tăng cường độ đàn hồi",
    ],
    "usage": '''
1. Sau khi rửa mặt, lấy mặt nạ ra khỏi túi.

2. Đắp lên mặt, căn chỉnh cho vừa vặn.

3. Thư giãn 15–20 phút để tinh chất thẩm thấu.

4. Gỡ mặt nạ, vỗ nhẹ tinh chất còn lại để thẩm thấu.

5. Không cần rửa lại bằng nước, tiếp tục các bước dưỡng da sau đó.

6. Sử dụng 2–3 lần/tuần để duy trì làn da căng mịn.
''',
  },
  {
    "id": "SP092",
    "name": "Sữa rửa mặt CeraVe Foaming Cleanser",
    "brand": "CeraVe",
    "type": "sữa rửa mặt",
    "originalPrice": 295000,
    "discountPrice": 280000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 250,
    "image":
        "https://mint07.com/wp-content/uploads/2014/09/sua-rua-mat-cerave-foaming-facial-cleanser-2.jpg",
    "promotion": null,
    "description":
        "Sữa rửa mặt CeraVe Foaming Cleanser giúp làm sạch bụi bẩn, dầu thừa mà không gây khô da, hỗ trợ phục hồi hàng rào bảo vệ da.",
    "specs": {
      "Dung tích": "236ml",
      "Kết cấu": "Dạng gel tạo bọt",
      "Loại da phù hợp": "Da dầu, da hỗn hợp",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "3606000531234",
      "Phân phối tại Việt Nam": "Công ty TNHH CeraVe Việt Nam",
    },
    "ingredients": [
      "Ceramides – phục hồi hàng rào da",
      "Niacinamide – làm sáng da, giảm viêm",
      "Hyaluronic Acid – cấp ẩm sâu",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
    ],
    "usage": '''
1. Làm ướt da mặt bằng nước sạch.

2. Lấy một lượng vừa đủ, tạo bọt với nước.

3. Massage nhẹ nhàng lên mặt theo chuyển động tròn.

4. Rửa lại bằng nước sạch.

5. Sử dụng 2 lần/ngày (sáng và tối).
''',
  },
  {
    "id": "SP093",
    "name": "Kem chống nắng Biore UV Perfect Milk",
    "brand": "Biore",
    "type": "chống nắng",
    "originalPrice": 165000,
    "discountPrice": 156750,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://jpaddict.com/wp-content/uploads/2023/05/kem-chong-nang-biore-mau-xanh-40ml-nhat-ban.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Kem chống nắng Biore UV Perfect Milk SPF50+ PA++++ bảo vệ da khỏi tia UVA/UVB, chống nước và mồ hôi.",
    "specs": {
      "Dung tích": "40ml",
      "Kết cấu": "Dạng sữa lỏng nhẹ",
      "Loại da phù hợp": "Mọi loại da",
      "Chỉ số chống nắng": "SPF50+ PA++++",
      "Khả năng chống nước": "Có",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "4901301333234",
      "Phân phối tại Việt Nam": "Kao Việt Nam",
    },
    "ingredients": [
      "UV Filters – chống tia UVA/UVB",
      "Hyaluronic Acid – cấp ẩm",
      "Citrus Extract – chống oxy hóa",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Silica – kiểm soát dầu",
    ],
    "usage": '''
1. Lắc đều trước khi sử dụng.

2. Thoa đều lên mặt và cổ trước khi ra nắng 15–20 phút.

3. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng.

4. Sử dụng hàng ngày để bảo vệ da tối ưu.
''',
  },
  {
    "id": "SP094",
    "name": "Tẩy trang L’Oreal Micellar Water Moisturizing",
    "brand": "L’Oreal",
    "type": "tẩy trang",
    "originalPrice": 145000,
    "discountPrice": 135000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 280,
    "image":
        "https://media.hcdn.vn/wysiwyg/MaiQuynh/nuoc-tay-trang-l-oreal-3.jpg",
    "promotion": null,
    "description":
        "Nước tẩy trang L’Oreal Micellar Water Moisturizing làm sạch lớp trang điểm và bụi bẩn, đồng thời cấp ẩm cho da.",
    "specs": {
      "Dung tích": "400ml",
      "Kết cấu": "Dạng nước trong suốt",
      "Loại da phù hợp": "Da khô, da thường",
      "Không chứa cồn": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "3600524013234",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oréal Việt Nam",
    },
    "ingredients": [
      "Micelle Technology – làm sạch sâu lớp trang điểm",
      "Glycerin – dưỡng ẩm",
      "Rose Extract – làm dịu, cấp ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – giảm kích ứng",
      "Aloe Vera Extract – làm mát da",
    ],
    "usage": '''
1. Thấm nước tẩy trang vào bông cotton.

2. Lau nhẹ nhàng toàn mặt để loại bỏ lớp trang điểm và bụi bẩn.

3. Không cần rửa lại bằng nước, nhưng có thể rửa nếu muốn.

4. Sử dụng hàng ngày, sáng và tối.

5. Có thể dùng cho vùng mắt và môi.
''',
  },
  {
    "id": "SP095",
    "name": "Serum The Inkey List Hyaluronic Acid",
    "brand": "The Inkey List",
    "type": "serum",
    "originalPrice": 295000,
    "discountPrice": 295000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://vivita.cdn.vccloud.vn/wp-content/uploads/2021/07/cong-dung-the-inkey-list-hyaluronic-acid-serum.jpg",
    "promotion": "Tặng 1 mặt nạ",
    "description":
        "Serum The Inkey List Hyaluronic Acid giúp cấp ẩm sâu, làm da căng mịn và đàn hồi.",
    "specs": {
      "Dung tích": "30ml",
      "Kết cấu": "Dạng lỏng, thấm nhanh",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Anh",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "5060422291234",
      "Phân phối tại Việt Nam": "Công ty TNHH The Inkey List Việt Nam",
    },
    "ingredients": [
      "Hyaluronic Acid – cấp ẩm đa tầng",
      "Panthenol – phục hồi da",
      "Glycerin – dưỡng ẩm",
      "Allantoin – làm dịu da",
      "Betaine – giữ nước",
      "Citric Acid – cân bằng pH",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy 2–3 giọt serum.

2. Thoa đều lên mặt và cổ, tránh vùng mắt.

3. Sử dụng sáng và tối để duy trì độ ẩm.

4. Kết hợp với kem dưỡng The Inkey List để tăng hiệu quả phục hồi.
''',
  },
  {
    "id": "SP096",
    "name": "Toner Thayers Rose Petal",
    "brand": "Thayers",
    "type": "toner",
    "originalPrice": 230000,
    "discountPrice": 220000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 250,
    "image":
        "https://dailyvita.vn/upload/news/content/2020/08/thayer-rose-jpg-1597722840-18082020105400.jpg",
    "promotion": null,
    "description":
        "Toner Thayers Rose Petal chứa chiết xuất hoa hồng và lô hội, giúp cân bằng da, cấp ẩm và làm dịu da.",
    "specs": {
      "Dung tích": "355ml",
      "Kết cấu": "Dạng lỏng, mùi hương hoa hồng dịu nhẹ",
      "Loại da phù hợp": "Mọi loại da, đặc biệt da nhạy cảm",
      "Không chứa cồn": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "0415070651234",
      "Phân phối tại Việt Nam": "Công ty TNHH Thayers Việt Nam",
    },
    "ingredients": [
      "Rose Water – làm dịu, cân bằng da",
      "Aloe Vera – cấp ẩm, phục hồi da",
      "Witch Hazel – se khít lỗ chân lông",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – giảm kích ứng",
    ],
    "usage": '''
1. Sau khi rửa mặt, thấm toner vào bông cotton hoặc tay sạch.

2. Thoa đều lên mặt và cổ.

3. Vỗ nhẹ để dưỡng chất thẩm thấu.

4. Sử dụng sáng và tối trước serum/kem dưỡng.

5. Có thể dùng làm lotion mask để cấp ẩm tức thì.
''',
  },
  {
    "id": "SP097",
    "name": "Kem dưỡng Cetaphil Moisturizing Cream",
    "brand": "Cetaphil",
    "type": "kem dưỡng",
    "originalPrice": 295000,
    "discountPrice": 265500,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://media.hcdn.vn/catalog/product/k/e/kem-duong-am-cetaphil-diu-lanh-cho-da-nhay-cam-100g-3-1723705940_img_450x450_31d6f9_fit_center.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Kem dưỡng Cetaphil Moisturizing Cream cấp ẩm sâu, làm dịu da khô và nhạy cảm, không gây kích ứng.",
    "specs": {
      "Dung tích": "100g",
      "Kết cấu": "Dạng kem đặc",
      "Loại da phù hợp": "Da khô, da nhạy cảm",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Canada",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "3029934051234",
      "Phân phối tại Việt Nam": "Công ty TNHH Galderma Việt Nam",
    },
    "ingredients": [
      "Sweet Almond Oil – dưỡng ẩm, làm mềm da",
      "Glycerin – cấp ẩm",
      "Petrolatum – khóa ẩm, bảo vệ da",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Vitamin E – chống oxy hóa",
    ],
    "usage": '''
1. Sau khi rửa mặt, lấy một lượng kem vừa đủ.

2. Thoa đều lên mặt và cơ thể, đặc biệt vùng da khô.

3. Sử dụng sáng và tối để duy trì độ ẩm.

4. Có thể dùng cho da mặt và body.

5. Kết hợp với sữa rửa mặt Cetaphil để tăng hiệu quả dưỡng ẩm.
''',
  },
  {
    "id": "SP098",
    "name": "Mặt nạ Naruko Rose & Botanic HA Aqua",
    "brand": "Naruko",
    "type": "mặt nạ",
    "originalPrice": 29000,
    "discountPrice": 29000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 600,
    "image":
        "https://media.hcdn.vn/wysiwyg/Chau/mat-na-naruko-duong-da-chuyen-sau-25ml-4.jpg",
    "promotion": null,
    "description":
        "Mặt nạ Naruko Rose & Botanic HA Aqua giúp cấp ẩm tức thì, làm mềm mịn và sáng da.",
    "specs": {
      "Dung tích": "25ml/túi",
      "Kết cấu": "Dạng giấy cotton thấm tinh chất",
      "Loại da phù hợp": "Da khô, da thường",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Đài Loan",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "4711234567890",
      "Phân phối tại Việt Nam": "Công ty TNHH Naruko Việt Nam",
    },
    "ingredients": [
      "Rose Extract – làm sáng da, cấp ẩm",
      "Hyaluronic Acid – giữ nước, làm căng da",
      "Niacinamide – cải thiện sắc tố da",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. Sau khi rửa mặt, lấy mặt nạ ra khỏi túi.

2. Đắp lên mặt, căn chỉnh cho vừa vặn.

3. Thư giãn 15–20 phút để tinh chất thẩm thấu.

4. Gỡ mặt nạ, vỗ nhẹ tinh chất còn lại để thẩm thấu.

5. Không cần rửa lại bằng nước, tiếp tục các bước dưỡng da sau đó.

6. Sử dụng 2–3 lần/tuần để duy trì làn da sáng khỏe.
''',
  },
  {
    "id": "SP099",
    "name": "Sữa rửa mặt Senka Perfect Whip Collagen",
    "brand": "Senka",
    "type": "sữa rửa mặt",
    "originalPrice": 95000,
    "discountPrice": 95000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 300,
    "image":
        "https://bonita.vn/wp-content/uploads/2019/10/386401549_23861847250120720_4360689954184444175_n.jpg",
    "promotion": "Mua 2 tặng 1",
    "description":
        "Sữa rửa mặt Senka Perfect Whip Collagen tạo bọt mịn, làm sạch sâu và bổ sung Collagen giúp da săn chắc.",
    "specs": {
      "Dung tích": "100g",
      "Kết cấu": "Dạng kem tạo bọt",
      "Loại da phù hợp": "Da thường, da khô",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "4901872461234",
      "Phân phối tại Việt Nam": "Công ty TNHH Shiseido Việt Nam",
    },
    "ingredients": [
      "Collagen – tăng độ đàn hồi, săn chắc da",
      "Glycerin – dưỡng ẩm",
      "Stearic Acid – tạo bọt",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Lauric Acid – làm sạch sâu",
    ],
    "usage": '''
1. Làm ướt da mặt bằng nước sạch.

2. Lấy một lượng vừa đủ, tạo bọt với nước.

3. Massage nhẹ nhàng lên mặt theo chuyển động tròn.

4. Rửa lại bằng nước sạch.

5. Sử dụng 2 lần/ngày (sáng và tối).
''',
  },
  {
    "id": "SP100",
    "name": "Kem chống nắng Vichy Ideal Soleil",
    "brand": "Vichy",
    "type": "chống nắng",
    "originalPrice": 420000,
    "discountPrice": 399000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://product.hstatic.net/200000150709/product/3337871323622_fc3835e03a1740e68524a4bd5a77a52a_1024x1024_763c2a3e0a9f490492d1565c8ca9740a.jpg",
    "promotion": null,
    "description":
        "Kem chống nắng Vichy Ideal Soleil SPF50+ PA++++ bảo vệ da khỏi tia UVA/UVB, đồng thời cấp ẩm nhẹ.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng kem mỏng nhẹ",
      "Loại da phù hợp": "Mọi loại da",
      "Chỉ số chống nắng": "SPF50+ PA++++",
      "Khả năng chống nước": "Có",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "3337871324234",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oréal Việt Nam",
    },
    "ingredients": [
      "Mexoryl XL – chống tia UVA/UVB",
      "Vitamin E – chống oxy hóa",
      "Vichy Mineralizing Water – tăng cường hàng rào da",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. Thoa đều lên mặt và cổ trước khi ra nắng 15–20 phút.

2. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng.

3. Dùng sau các bước dưỡng da cơ bản.

4. Có thể dùng làm lớp lót trang điểm.

5. Sử dụng hàng ngày để bảo vệ da tối ưu.
''',
  },
  {
    "id": "SP101",
    "name": "Serum Vichy Liftactiv Supreme",
    "brand": "Vichy",
    "type": "serum",
    "originalPrice": 890000,
    "discountPrice": 890000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 150,
    "image":
        "https://cdn.vuahanghieu.com/unsafe/0x900/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/11/serum-tre-hoa-da-vichy-liftactiv-supreme-ha-epidermic-filler-30ml-6361c493a670f-02112022081459.jpg",
    "promotion": "Tặng 1 mặt nạ",
    "description":
        "Serum Vichy Liftactiv Supreme giúp giảm nếp nhăn, làm săn chắc da và cải thiện độ đàn hồi.",
    "specs": {
      "Dung tích": "30ml",
      "Kết cấu": "Dạng lỏng, thấm nhanh",
      "Loại da phù hợp": "Da lão hóa, da khô",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "3337871325234",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oréal Việt Nam",
    },
    "ingredients": [
      "Rhamnose – kích thích tái tạo tế bào",
      "Vitamin C – chống oxy hóa, làm sáng da",
      "Hyaluronic Acid – cấp ẩm sâu",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy 2–3 giọt serum.

2. Thoa đều lên mặt và cổ, tránh vùng mắt.

3. Sử dụng sáng và tối để duy trì độ săn chắc.

4. Kết hợp với kem dưỡng Vichy để tăng hiệu quả chống lão hóa.
''',
  },
  {
    "id": "SP102",
    "name": "Toner Kiehl’s Calendula Herbal Extract",
    "brand": "Kiehl’s",
    "type": "toner",
    "originalPrice": 720000,
    "discountPrice": 690000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://product.hstatic.net/200000150709/product/toner-anh_0c05ef592976454d86351c092864e4cc.jpg",
    "promotion": null,
    "description":
        "Toner Kiehl’s Calendula Herbal Extract chứa chiết xuất hoa cúc, giúp làm dịu da và giảm kích ứng.",
    "specs": {
      "Dung tích": "250ml",
      "Kết cấu": "Dạng lỏng",
      "Loại da phù hợp": "Da nhạy cảm, da thường",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "3605971326234",
      "Phân phối tại Việt Nam": "Công ty TNHH Kiehl’s Việt Nam",
    },
    "ingredients": [
      "Calendula Extract – làm dịu da, kháng viêm",
      "Allantoin – giảm kích ứng",
      "Glycerin – dưỡng ẩm",
      "Aloe Vera – phục hồi da",
      "Panthenol – cấp ẩm",
      "Betaine – giữ nước",
    ],
    "usage": '''
1. Sau khi rửa mặt, thấm toner vào bông cotton hoặc tay sạch.

2. Thoa đều lên mặt và cổ.

3. Vỗ nhẹ để dưỡng chất thẩm thấu.

4. Sử dụng sáng và tối trước serum/kem dưỡng.

5. Có thể dùng làm lotion mask để cấp ẩm tức thì.
''',
  },
  {
    "id": "SP103",
    "name": "Kem dưỡng L’Oreal Paris Revitalift",
    "brand": "L’Oreal",
    "type": "kem dưỡng",
    "originalPrice": 495000,
    "discountPrice": 445500,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://ann.com.vn/wp-content/uploads/25814_kem-face-loreal-tim-phu-photoroom-2_20241123161020-2.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Kem dưỡng L’Oreal Paris Revitalift giúp chống lão hóa, làm săn chắc da và giảm nếp nhăn.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng kem đặc",
      "Loại da phù hợp": "Da lão hóa, da khô",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "3600524014234",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oréal Việt Nam",
    },
    "ingredients": [
      "Pro-Retinol A – chống lão hóa, giảm nếp nhăn",
      "Centella Asiatica Extract – phục hồi da",
      "Vitamin E – chống oxy hóa",
      "Panthenol – dưỡng ẩm",
      "Allantoin – làm dịu da",
      "Glycerin – cấp ẩm",
    ],
    "usage": '''
1. Sau khi rửa mặt và serum, lấy một lượng kem vừa đủ.

2. Thoa đều lên mặt và cổ, massage nhẹ nhàng.

3. Sử dụng sáng và tối để duy trì độ săn chắc.

4. Có thể dùng làm lớp khóa ẩm cuối cùng trong chu trình dưỡng da.
''',
  },

  {
    "id": "SP104",
    "name": "Mặt nạ Laneige Cica Sleeping Mask",
    "brand": "Laneige",
    "type": "mặt nạ",
    "originalPrice": 420000,
    "discountPrice": 399000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://saolamdep.com/wp-content/uploads/2019/04/mat-na-ngu-Laneige-Cica-Sleeping-2.jpg",
    "promotion": null,
    "description":
        "Mặt nạ ngủ Laneige Cica Sleeping Mask giúp phục hồi da, làm dịu và cấp ẩm sâu trong khi ngủ.",
    "specs": {
      "Dung tích": "60ml",
      "Kết cấu": "Dạng kem gel mịn",
      "Loại da phù hợp": "Da nhạy cảm, da khô",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8809647399234",
      "Phân phối tại Việt Nam": "Công ty TNHH Laneige Việt Nam",
    },
    "ingredients": [
      "Forest Yeast – phục hồi da, tăng cường hàng rào bảo vệ",
      "Centella Asiatica Extract – làm dịu, giảm kích ứng",
      "Shea Butter – dưỡng ẩm, nuôi dưỡng da",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Glycerin – cấp ẩm",
    ],
    "usage": '''
1. Sau các bước dưỡng da buổi tối, lấy một lượng vừa đủ.

2. Thoa đều lên mặt, tránh vùng mắt và môi.

3. Để qua đêm, sáng hôm sau rửa lại bằng nước sạch.

4. Sử dụng 2–3 lần/tuần để duy trì làn da khỏe mạnh.
''',
  },
  {
    "id": "SP105",
    "name": "Sữa rửa mặt Bioderma Sebium Gel Moussant",
    "brand": "Bioderma",
    "type": "sữa rửa mặt",
    "originalPrice": 265000,
    "discountPrice": 265000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://bellelab.co/wp-content/uploads/2019/12/Sebium_Gel_Moussant_200ml_2.jpg",
    "promotion": "Tặng 1 khăn lau mặt",
    "description":
        "Sữa rửa mặt Bioderma Sebium Gel Moussant giúp làm sạch sâu, kiểm soát dầu và ngăn ngừa mụn.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dạng gel tạo bọt",
      "Loại da phù hợp": "Da dầu, da hỗn hợp",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "3401340123456",
      "Phân phối tại Việt Nam": "Công ty TNHH Bioderma Việt Nam",
    },
    "ingredients": [
      "Zinc Sulfate – kiểm soát dầu, kháng viêm",
      "Copper Sulfate – kháng khuẩn",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Sodium Laureth Sulfate – tạo bọt",
    ],
    "usage": '''
1. Làm ướt da mặt bằng nước sạch.

2. Lấy một lượng vừa đủ, tạo bọt với nước.

3. Massage nhẹ nhàng lên mặt theo chuyển động tròn.

4. Rửa lại bằng nước sạch.

5. Sử dụng 2 lần/ngày (sáng và tối).
''',
  },
  {
    "id": "SP106",
    "name": "Kem chống nắng Anessa Whitening UV Sunscreen",
    "brand": "Anessa",
    "type": "chống nắng",
    "originalPrice": 495000,
    "discountPrice": 470250,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://file.hstatic.net/200000223113/file/review_gel_chong_nang_anessa_whitening_uv_sunscreen_gel_lam_trang_da_2_458e989d30cd42cdb0dbdb646a83ea3b.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Kem chống nắng Anessa Whitening UV Sunscreen SPF50+ PA++++ bảo vệ da tối ưu, đồng thời dưỡng trắng.",
    "specs": {
      "Dung tích": "60ml",
      "Kết cấu": "Dạng sữa lỏng nhẹ",
      "Loại da phù hợp": "Mọi loại da",
      "Chỉ số chống nắng": "SPF50+ PA++++",
      "Khả năng chống nước": "Có",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "4901872462234",
      "Phân phối tại Việt Nam": "Shiseido Việt Nam",
    },
    "ingredients": [
      "Zinc Oxide – chống tia UVA/UVB",
      "Titanium Dioxide – bảo vệ da",
      "Tranexamic Acid – dưỡng trắng, giảm thâm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Glycerin – cấp ẩm",
    ],
    "usage": '''
1. Lắc đều trước khi sử dụng.

2. Thoa đều lên mặt và cổ trước khi ra nắng 15–20 phút.

3. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng.

4. Sử dụng hàng ngày để bảo vệ da tối ưu.
''',
  },
  {
    "id": "SP107",
    "name": "Tẩy trang Simple Micellar Cleansing Water",
    "brand": "Simple",
    "type": "tẩy trang",
    "originalPrice": 135000,
    "discountPrice": 125000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 280,
    "image":
        "https://media.hcdn.vn/wysiwyg/Chau/nuoc-tay-trang-simple-lam-sach-trang-diem-vuot-troi-1.jpg",
    "promotion": null,
    "description":
        "Nước tẩy trang Simple Micellar Cleansing Water làm sạch lớp trang điểm và bụi bẩn, dịu nhẹ cho da nhạy cảm.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dạng nước trong suốt",
      "Loại da phù hợp": "Da nhạy cảm, da thường",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Anh",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "5011451101234",
      "Phân phối tại Việt Nam": "Unilever Việt Nam",
    },
    "ingredients": [
      "Micelle Technology – làm sạch sâu lớp trang điểm",
      "Chamomile Extract – làm dịu da",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – giảm kích ứng",
      "Aloe Vera Extract – làm mát da",
    ],
    "usage": '''
1. Thấm nước tẩy trang vào bông cotton.

2. Lau nhẹ nhàng toàn mặt để loại bỏ lớp trang điểm và bụi bẩn.

3. Không cần rửa lại bằng nước, nhưng có thể rửa nếu muốn.

4. Sử dụng hàng ngày, sáng và tối.

5. Có thể dùng cho vùng mắt và môi.
''',
  },
  {
    "id": "SP108",
    "name": "Serum Paula’s Choice Niacinamide Booster",
    "brand": "Paula’s Choice",
    "type": "serum",
    "originalPrice": 890000,
    "discountPrice": 890000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 150,
    "image":
        "https://media.hcdn.vn/wysiwyg/MaiQuynh/serum-paula-s-choice-sang-da-giup-se-lo-chan-long-1.jpg",
    "promotion": "Tặng 1 mini size",
    "description":
        "Serum Paula’s Choice Niacinamide Booster chứa Niacinamide nồng độ cao, giúp thu nhỏ lỗ chân lông và làm sáng da.",
    "specs": {
      "Dung tích": "20ml",
      "Kết cấu": "Dạng lỏng, thấm nhanh",
      "Loại da phù hợp": "Da dầu, da hỗn hợp, da xỉn màu",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "0655439012234",
      "Phân phối tại Việt Nam": "Công ty TNHH Paula’s Choice Việt Nam",
    },
    "ingredients": [
      "Niacinamide – thu nhỏ lỗ chân lông, làm sáng da",
      "Vitamin C – chống oxy hóa",
      "Licorice Extract – hỗ trợ làm sáng da",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy 2–3 giọt serum.

2. Thoa đều lên mặt và cổ, tránh vùng mắt.

3. Sử dụng sáng và tối, kết hợp kem chống nắng ban ngày để bảo vệ da.

4. Dùng liên tục ít nhất 4 tuần để thấy hiệu quả rõ rệt.
''',
  },
  {
    "id": "SP109",
    "name": "Toner Klairs Daily Skin Hydrating",
    "brand": "Klairs",
    "type": "toner",
    "originalPrice": 295000,
    "discountPrice": 280000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://media.hcdn.vn/wysiwyg/MinhTu/nuoc-can-bang-klairs-tra-xanh-cap-am-lam-diu-da-500ml.jpg",
    "promotion": null,
    "description":
        "Toner Klairs Daily Skin Hydrating chứa chiết xuất trà xanh và lô hội, giúp cấp ẩm và làm dịu da.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dạng lỏng",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "8809115025234",
      "Phân phối tại Việt Nam": "Công ty TNHH Klairs Việt Nam",
    },
    "ingredients": [
      "Green Tea Extract – chống oxy hóa, làm dịu da",
      "Aloe Vera Extract – cấp ẩm, phục hồi da",
      "Panthenol – dưỡng ẩm, phục hồi",
      "Allantoin – giảm kích ứng",
      "Glycerin – dưỡng ẩm",
      "Betaine – giữ nước",
    ],
    "usage": '''
1. Sau khi rửa mặt, thấm toner vào bông cotton hoặc tay sạch.

2. Thoa đều lên mặt và cổ.

3. Vỗ nhẹ để dưỡng chất thẩm thấu.

4. Sử dụng sáng và tối trước serum/kem dưỡng.

5. Có thể dùng làm lotion mask để cấp ẩm tức thì.
''',
  },
  {
    "id": "SP110",
    "name": "Kem dưỡng The Ordinary Natural Moisturizing Factors + HA",
    "brand": "The Ordinary",
    "type": "kem dưỡng",
    "originalPrice": 295000,
    "discountPrice": 265500,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://ordinary.com.vn/wp-content/uploads/2020/10/Natural-Moisturizing-Factors-HA-30ml.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Kem dưỡng The Ordinary Natural Moisturizing Factors + HA giúp cấp ẩm và duy trì hàng rào bảo vệ da.",
    "specs": {
      "Dung tích": "100ml",
      "Kết cấu": "Dạng kem đặc",
      "Loại da phù hợp": "Da khô, da thường",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Canada",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "7699151903234",
      "Phân phối tại Việt Nam": "Deciem Việt Nam",
    },
    "ingredients": [
      "Hyaluronic Acid – cấp ẩm sâu",
      "Amino Acids – nuôi dưỡng da",
      "Ceramides – củng cố hàng rào da",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
    ],
    "usage": '''
1. Sau khi rửa mặt và serum, lấy một lượng kem vừa đủ.

2. Thoa đều lên mặt và cổ, massage nhẹ nhàng.

3. Sử dụng sáng và tối để duy trì độ ẩm.

4. Có thể dùng làm lớp khóa ẩm cuối cùng trong chu trình dưỡng da.
''',
  },
  {
    "id": "SP111",
    "name": "Mặt nạ Lululun Precious Red",
    "brand": "Lululun",
    "type": "mặt nạ",
    "originalPrice": 32000,
    "discountPrice": 32000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 500,
    "image":
        "https://mint07.com/wp-content/uploads/2023/04/mat-na-lululun-precious-7-mieng-moist-mau-do.jpg",
    "promotion": null,
    "description":
        "Mặt nạ Lululun Precious Red giúp cấp ẩm, cải thiện độ đàn hồi và làm sáng da.",
    "specs": {
      "Dung tích": "25ml/túi",
      "Kết cấu": "Dạng giấy cotton thấm tinh chất",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "4901234567890",
      "Phân phối tại Việt Nam": "Công ty TNHH Lululun Việt Nam",
    },
    "ingredients": [
      "Collagen – tăng độ đàn hồi",
      "Hyaluronic Acid – cấp ẩm sâu",
      "Vitamin E – chống oxy hóa",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. Rửa mặt sạch bằng sữa rửa mặt.

2. Lấy mặt nạ ra khỏi túi và đắp lên mặt.

3. Căn chỉnh cho vừa vặn, thư giãn 10–15 phút.

4. Gỡ mặt nạ, vỗ nhẹ tinh chất còn lại để thẩm thấu.

5. Sử dụng 2–3 lần/tuần để đạt hiệu quả tốt nhất.
''',
  },
  {
    "id": "SP112",
    "name": "Sữa rửa mặt Eucerin ProACNE Solution",
    "brand": "Eucerin",
    "type": "sữa rửa mặt",
    "originalPrice": 285000,
    "discountPrice": 285000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 240,
    "image":
        "https://assets-hebela.cdn.vccloud.vn/dict/1/oshaatnithnamsoint20220808172017gel-rua-mat-eucerin-pro-acne-cleansing-gel-200ml/tnniirnssrsmistshn20220808172037sua-rua-mat-eucerin-pro-acne-solution-200ml-hebela-4.jpg",
    "promotion": "Tặng 1 sample",
    "description":
        "Sữa rửa mặt Eucerin ProACNE Solution giúp làm sạch sâu, kiểm soát dầu và ngăn ngừa mụn.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dạng gel tạo bọt",
      "Loại da phù hợp": "Da dầu, da mụn",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Đức",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "4005800123456",
      "Phân phối tại Việt Nam": "Beiersdorf Việt Nam",
    },
    "ingredients": [
      "Salicylic Acid – làm sạch sâu, giảm mụn",
      "Lactic Acid – tẩy tế bào chết nhẹ",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Zinc PCA – kiểm soát dầu",
    ],
    "usage": '''
1. Làm ướt da mặt bằng nước sạch.

2. Lấy một lượng gel vừa đủ ra tay.

3. Tạo bọt nhẹ nhàng và massage lên mặt theo chuyển động tròn.

4. Rửa lại bằng nước sạch.

5. Dùng 2 lần/ngày (sáng và tối).
''',
  },
  {
    "id": "SP113",
    "name": "Kem chống nắng Skin1004 Hyalu-Cica Water-Fit",
    "brand": "Skin1004",
    "type": "chống nắng",
    "originalPrice": 265000,
    "discountPrice": 250000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://product.hstatic.net/200000810267/product/upload_a8a09e72711348c58233fb1777283a4e.jpg",
    "promotion": null,
    "description":
        "Kem chống nắng Skin1004 Hyalu-Cica Water-Fit SPF50+ PA++++ bảo vệ da khỏi tia UVA/UVB, đồng thời cấp ẩm và làm dịu da.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng kem mỏng nhẹ",
      "Loại da phù hợp": "Da nhạy cảm, da thường",
      "Chỉ số chống nắng": "SPF50+ PA++++",
      "Khả năng chống nước": "Có",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8809647391234",
      "Phân phối tại Việt Nam": "Công ty TNHH Skin1004 Việt Nam",
    },
    "ingredients": [
      "Hyaluronic Acid – cấp ẩm sâu",
      "Centella Asiatica Extract – làm dịu, phục hồi da",
      "Niacinamide – làm sáng da",
      "Panthenol – dưỡng ẩm",
      "Allantoin – giảm kích ứng",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. Hoàn tất các bước dưỡng da cơ bản.

2. Lấy một lượng kem vừa đủ thoa đều lên mặt và cổ.

3. Thoa trước khi ra ngoài 15–20 phút.

4. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng.

5. Sử dụng hàng ngày để bảo vệ da tối ưu.
''',
  },
  {
    "id": "SP114",
    "name": "Tẩy trang Bioderma Hydrabio H2O",
    "brand": "Bioderma",
    "type": "tẩy trang",
    "originalPrice": 290000,
    "discountPrice": 275500,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 250,
    "image":
        "https://webhangngoai.com/wp-content/uploads/2025/08/13-nuoc-tay-trang-bioderma-xanh-hydrabio.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Nước tẩy trang Bioderma Hydrabio H2O làm sạch lớp trang điểm và bụi bẩn, đồng thời cấp ẩm cho da khô và nhạy cảm.",
    "specs": {
      "Dung tích": "500ml",
      "Kết cấu": "Dạng nước trong suốt",
      "Loại da phù hợp": "Da khô, da nhạy cảm",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "3401340122234",
      "Phân phối tại Việt Nam": "Công ty TNHH Bioderma Việt Nam",
    },
    "ingredients": [
      "Micelle Technology – làm sạch sâu lớp trang điểm",
      "Aquaporin Patent – cấp ẩm cho da",
      "Glycerin – dưỡng ẩm",
      "Niacinamide – làm sáng da",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
    ],
    "usage": '''
1. Thấm nước tẩy trang vào bông cotton sạch.

2. Lau nhẹ nhàng toàn mặt để loại bỏ lớp trang điểm và bụi bẩn.

3. Lặp lại cho đến khi bông sạch hoàn toàn.

4. Không cần rửa lại bằng nước, nhưng có thể rửa nếu muốn.

5. Sử dụng hàng ngày, sáng và tối.
''',
  },
  {
    "id": "SP115",
    "name": "Serum Timeless Matrixyl Synthe 6",
    "brand": "Timeless",
    "type": "serum",
    "originalPrice": 420000,
    "discountPrice": 399000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://product.hstatic.net/200000150709/product/da52d7381c4fd2590719e3_quot_c2e7fafa75294b38a9a955270e8197c3_1024x1024_fe6dd5fef7664fa79e4171fbe34613b1.jpg",
    "promotion": null,
    "description":
        "Serum Timeless Matrixyl Synthe 6 giúp giảm nếp nhăn, làm săn chắc da và cải thiện độ đàn hồi.",
    "specs": {
      "Dung tích": "30ml",
      "Kết cấu": "Dạng lỏng, thấm nhanh",
      "Loại da phù hợp": "Da lão hóa, da khô",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "0851234567890",
      "Phân phối tại Việt Nam": "Công ty TNHH Timeless Việt Nam",
    },
    "ingredients": [
      "Matrixyl Synthe 6 – giảm nếp nhăn, tăng độ đàn hồi",
      "Hyaluronic Acid – cấp ẩm sâu",
      "Vitamin C – chống oxy hóa, làm sáng da",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy 2–3 giọt serum.

2. Thoa đều lên mặt và cổ, tập trung vùng da có nếp nhăn.

3. Vỗ nhẹ để dưỡng chất thẩm thấu.

4. Sử dụng sáng và tối, kết hợp kem dưỡng để tăng hiệu quả.
''',
  },
  {
    "id": "SP116",
    "name": "Toner Evoluderm Rose Water",
    "brand": "Evoluderm",
    "type": "toner",
    "originalPrice": 99000,
    "discountPrice": 99000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 300,
    "image":
        "https://bonita.vn/wp-content/uploads/2019/10/86973724_2672380829497347_8016552373470101504_n.jpg",
    "promotion": "Tặng 1 mặt nạ",
    "description":
        "Toner Evoluderm Rose Water chứa chiết xuất hoa hồng thiên nhiên, giúp cân bằng da, cấp ẩm và làm dịu da.",
    "specs": {
      "Dung tích": "250ml",
      "Kết cấu": "Dạng lỏng",
      "Loại da phù hợp": "Mọi loại da, đặc biệt da nhạy cảm",
      "Không chứa cồn": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "3760100681234",
      "Phân phối tại Việt Nam": "Công ty TNHH Evoluderm Việt Nam",
    },
    "ingredients": [
      "Rose Extract – làm dịu, cân bằng da",
      "Glycerin – dưỡng ẩm",
      "Aloe Vera Extract – phục hồi da",
      "Panthenol – cấp ẩm",
      "Allantoin – giảm kích ứng",
      "Citric Acid – cân bằng pH",
    ],
    "usage": '''
1. Sau khi rửa mặt, thấm toner vào bông cotton hoặc tay sạch.

2. Lau hoặc thoa đều lên mặt và cổ.

3. Vỗ nhẹ để dưỡng chất thẩm thấu.

4. Sử dụng sáng và tối trước serum/kem dưỡng.

5. Có thể dùng làm lotion mask để cấp ẩm tức thì.
''',
  },
  {
    "id": "SP117",
    "name": "Kem dưỡng CeraVe PM Facial Moisturizing Lotion",
    "brand": "CeraVe",
    "type": "kem dưỡng",
    "originalPrice": 310000,
    "discountPrice": 295000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://www.guardian.com.vn/media/wysiwyg/5fbf5f74b07991d7cc6ec576eac_1024x1024_ee78d068d9044d629273d3663be83bbf_67f0de575a2e4e209a4c0b8dcda7c753_xx2ibtp5ekfeosyh.jpg",
    "promotion": null,
    "description":
        "Kem dưỡng CeraVe PM Facial Moisturizing Lotion cấp ẩm nhẹ nhàng, phục hồi hàng rào bảo vệ da nhờ Ceramide và Niacinamide.",
    "specs": {
      "Dung tích": "89ml",
      "Kết cấu": "Dạng lotion mỏng nhẹ",
      "Loại da phù hợp": "Da thường, da khô, da nhạy cảm",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "3606000532234",
      "Phân phối tại Việt Nam": "Công ty TNHH CeraVe Việt Nam",
    },
    "ingredients": [
      "Ceramides – phục hồi hàng rào da",
      "Niacinamide – làm sáng da, giảm viêm",
      "Hyaluronic Acid – cấp ẩm sâu",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
    ],
    "usage": '''
1. Sau khi rửa mặt và serum, lấy một lượng lotion vừa đủ.

2. Thoa đều lên mặt và cổ.

3. Sử dụng buổi tối trước khi đi ngủ.

4. Kết hợp với sữa rửa mặt và toner CeraVe để tăng hiệu quả dưỡng ẩm.
''',
  },
  {
    "id": "SP118",
    "name": "Mặt nạ Vedette Clay Mask Strawberry",
    "brand": "Vedette",
    "type": "mặt nạ",
    "originalPrice": 18000,
    "discountPrice": 18000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 500,
    "image":
        "https://file.hstatic.net/200000073977/article/mat-na-vedette-5__2__82d143378b7e4860904bbbd29c2b4451_1024x1024.jpg",
    "promotion": "Mua 3 tặng 1",
    "description":
        "Mặt nạ đất sét Vedette Strawberry giúp làm sạch sâu, hút dầu thừa và dưỡng sáng da.",
    "specs": {
      "Dung tích": "15g/túi",
      "Kết cấu": "Dạng kem đất sét",
      "Loại da phù hợp": "Da dầu, da hỗn hợp",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Việt Nam",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "8938505973234",
      "Phân phối tại Việt Nam": "Công ty TNHH Vedette Việt Nam",
    },
    "ingredients": [
      "Kaolin – hút dầu thừa, làm sạch sâu",
      "Strawberry Extract – dưỡng sáng da",
      "Vitamin C – chống oxy hóa",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Glycerin – cấp ẩm",
    ],
    "usage": '''
1. Sau khi rửa mặt, thoa đều lớp mặt nạ lên da.

2. Tránh vùng mắt và môi.

3. Để yên 10–15 phút cho mặt nạ khô.

4. Rửa lại bằng nước sạch.

5. Sử dụng 2–3 lần/tuần để duy trì làn da sáng khỏe.
''',
  },
  {
    "id": "SP119",
    "name": "Sữa rửa mặt Innisfree Bija Trouble Facial Foam",
    "brand": "Innisfree",
    "type": "sữa rửa mặt",
    "originalPrice": 135000,
    "discountPrice": 125000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 250,
    "image":
        "https://www.innisfree.vn/static/upload/product/product/476_ID0101_3.jpg",
    "promotion": null,
    "description":
        "Sữa rửa mặt Innisfree Bija Trouble Facial Foam giúp làm sạch sâu, kiểm soát dầu và ngăn ngừa mụn.",
    "specs": {
      "Dung tích": "150ml",
      "Kết cấu": "Dạng kem tạo bọt",
      "Loại da phù hợp": "Da dầu, da mụn",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8809647392234",
      "Phân phối tại Việt Nam": "Công ty TNHH Innisfree Việt Nam",
    },
    "ingredients": [
      "Bija Seed Oil – kháng viêm, làm dịu da",
      "Salicylic Acid – làm sạch sâu, giảm mụn",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – giảm kích ứng",
      "Green Tea Extract – chống oxy hóa",
    ],
    "usage": '''
1. Làm ướt da mặt bằng nước sạch.

2. Lấy một lượng vừa đủ, tạo bọt với nước.

3. Massage nhẹ nhàng lên mặt theo chuyển động tròn.

4. Rửa lại bằng nước sạch.

5. Sử dụng 2 lần/ngày (sáng và tối).
''',
  },
  {
    "id": "SP120",
    "name": "Kem chống nắng Missha Essence Sun Milk",
    "brand": "Missha",
    "type": "chống nắng",
    "originalPrice": 185000,
    "discountPrice": 166500,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://mint07.com/wp-content/uploads/2025/09/kem-chong-nang-missha-essence-sun-milk-ex-spf50-pa-70ml-3.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Kem chống nắng Missha Essence Sun Milk SPF50+ PA++++ bảo vệ da khỏi tia UVA/UVB, kết cấu mỏng nhẹ.",
    "specs": {
      "Dung tích": "70ml",
      "Kết cấu": "Dạng sữa lỏng nhẹ",
      "Loại da phù hợp": "Mọi loại da",
      "Chỉ số chống nắng": "SPF50+ PA++++",
      "Khả năng chống nước": "Có",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "8806182564234",
      "Phân phối tại Việt Nam": "Công ty TNHH Missha Việt Nam",
    },
    "ingredients": [
      "Zinc Oxide – chống tia UVA/UVB",
      "Titanium Dioxide – bảo vệ da",
      "Niacinamide – làm sáng da",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Hyaluronic Acid – cấp ẩm",
    ],
    "usage": '''
1. Lắc đều trước khi sử dụng.

2. Thoa đều lên mặt và cổ trước khi ra nắng 15–20 phút.

3. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng.

4. Sử dụng hàng ngày để bảo vệ da tối ưu.
''',
  },
  {
    "id": "SP121",
    "name": "Serum Some By Mi Snail Truecica",
    "brand": "Some By Mi",
    "type": "serum",
    "originalPrice": 295000,
    "discountPrice": 265500,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://cdn.hstatic.net/files/200000551679/file/sg-11134207-7rd6v-lu5pbaql139b15_1024x1024.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Serum Some By Mi Snail Truecica chứa dịch nhầy ốc sên và Truecica Complex giúp phục hồi da, làm sáng và giảm thâm.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng lỏng, thấm nhanh",
      "Loại da phù hợp": "Da nhạy cảm, da có thâm",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "8809647393234",
      "Phân phối tại Việt Nam": "Công ty TNHH Some By Mi Việt Nam",
    },
    "ingredients": [
      "Snail Secretion Filtrate – phục hồi da, giảm thâm",
      "Centella Asiatica Extract – làm dịu, giảm kích ứng",
      "Niacinamide – làm sáng da",
      "Panthenol – dưỡng ẩm",
      "Allantoin – làm dịu da",
      "Glycerin – cấp ẩm",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy 2–3 giọt serum.

2. Thoa đều lên mặt và cổ.

3. Sử dụng sáng và tối, kết hợp kem dưỡng để tăng hiệu quả.

4. Dùng liên tục ít nhất 4 tuần để thấy hiệu quả rõ rệt.
''',
  },
  {
    "id": "SP122",
    "name": "Toner Rohto Melano CC",
    "brand": "Rohto",
    "type": "toner",
    "originalPrice": 215000,
    "discountPrice": 205000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://sieuthilamdep.com/images/detailed/13/nuoc-hoa-hong-trang-da-tri-tham-nam-tan-nhang-cc-melano-rohto-lotion-2.jpg",
    "promotion": null,
    "description":
        "Toner Rohto Melano CC chứa Vitamin C giúp làm sáng da, mờ thâm và cân bằng độ ẩm.",
    "specs": {
      "Dung tích": "170ml",
      "Kết cấu": "Dạng lỏng",
      "Loại da phù hợp": "Da xỉn màu, da có thâm",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "4987241142234",
      "Phân phối tại Việt Nam": "Rohto Việt Nam",
    },
    "ingredients": [
      "Vitamin C – làm sáng da, mờ thâm",
      "Vitamin E – chống oxy hóa",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Niacinamide – cải thiện sắc tố",
    ],
    "usage": '''
1. Sau khi rửa mặt, thấm toner vào bông cotton hoặc tay sạch.

2. Thoa đều lên mặt và cổ.

3. Vỗ nhẹ để dưỡng chất thẩm thấu.

4. Sử dụng sáng và tối trước serum/kem dưỡng.
''',
  },
  {
    "id": "SP123",
    "name": "Kem dưỡng Vaseline Intensive Care",
    "brand": "Vaseline",
    "type": "kem dưỡng",
    "originalPrice": 115000,
    "discountPrice": 115000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 300,
    "image":
        "https://wowmart.vn/wp-content/uploads/2019/03/vaseline-intensive-care-deep-restore-725ml-kb.jpg",
    "promotion": "Tặng 1 khăn lau mặt",
    "description":
        "Kem dưỡng Vaseline Intensive Care giúp cấp ẩm sâu, phục hồi da khô và nứt nẻ.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dạng lotion mỏng nhẹ",
      "Loại da phù hợp": "Da khô, da thường",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Thái Lan",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "8851932374234",
      "Phân phối tại Việt Nam": "Unilever Việt Nam",
    },
    "ingredients": [
      "Petrolatum – khóa ẩm, bảo vệ da",
      "Glycerin – cấp ẩm",
      "Vitamin E – chống oxy hóa",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Mineral Oil – dưỡng mềm da",
    ],
    "usage": '''
1. Sau khi tắm, lấy một lượng kem vừa đủ.

2. Thoa đều lên toàn thân, đặc biệt vùng da khô.

3. Sử dụng hàng ngày để đạt hiệu quả tốt nhất.

4. Kết hợp với sữa tắm Vaseline để tăng hiệu quả dưỡng ẩm.
''',
  },
  {
    "id": "SP124",
    "name": "Mặt nạ Banobagi Vita Cocktail Brightening",
    "brand": "Banobagi",
    "type": "mặt nạ",
    "originalPrice": 27000,
    "discountPrice": 27000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 500,
    "image":
        "https://storage.beautyfulls.com/uploads-1/avatar/product/1200x/2022/12/22/figure-1671696191948.jpg",
    "promotion": null,
    "description":
        "Mặt nạ Banobagi Vita Cocktail Brightening chứa vitamin và khoáng chất giúp dưỡng sáng da, cải thiện sắc tố.",
    "specs": {
      "Dung tích": "25ml/túi",
      "Kết cấu": "Dạng giấy cotton thấm tinh chất",
      "Loại da phù hợp": "Da xỉn màu, da thường",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "8809647394234",
      "Phân phối tại Việt Nam": "Công ty TNHH Banobagi Việt Nam",
    },
    "ingredients": [
      "Vitamin C – làm sáng da",
      "Niacinamide – cải thiện sắc tố",
      "Hyaluronic Acid – cấp ẩm sâu",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Collagen – tăng độ đàn hồi",
    ],
    "usage": '''
1. Rửa mặt sạch bằng sữa rửa mặt.

2. Lấy mặt nạ ra khỏi túi và đắp lên mặt.

3. Căn chỉnh cho vừa vặn, thư giãn 15–20 phút.

4. Gỡ mặt nạ, vỗ nhẹ tinh chất còn lại để thẩm thấu.

5. Không cần rửa lại bằng nước, tiếp tục các bước dưỡng da sau đó.
''',
  },
  {
    "id": "SP125",
    "name": "Sữa rửa mặt Hada Labo Perfect White",
    "brand": "Hada Labo",
    "type": "sữa rửa mặt",
    "originalPrice": 98000,
    "discountPrice": 98000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 300,
    "image":
        "https://media.hcdn.vn/wysiwyg/Chau/kem-rua-mat-hada-labo-duong-sang-da-80g-2_1.jpg",
    "promotion": "Mua 2 tặng 1",
    "description":
        "Sữa rửa mặt Hada Labo Perfect White giúp làm sạch bụi bẩn, dầu thừa và hỗ trợ dưỡng trắng da.",
    "specs": {
      "Dung tích": "100g",
      "Kết cấu": "Dạng kem tạo bọt",
      "Loại da phù hợp": "Da thường, da hỗn hợp",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "4987241143234",
      "Phân phối tại Việt Nam": "Rohto Việt Nam",
    },
    "ingredients": [
      "Arbutin – dưỡng trắng da",
      "Vitamin C – chống oxy hóa, làm sáng da",
      "Hyaluronic Acid – cấp ẩm sâu",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. Làm ướt da mặt bằng nước sạch.

2. Lấy một lượng vừa đủ, tạo bọt với nước.

3. Massage nhẹ nhàng lên mặt theo chuyển động tròn.

4. Rửa lại bằng nước sạch.

5. Sử dụng 2 lần/ngày (sáng và tối).
''',
  },
  {
    "id": "SP126",
    "name": "Kem chống nắng Biore UV Aqua Rich Watery Essence",
    "brand": "Biore",
    "type": "chống nắng",
    "originalPrice": 210000,
    "discountPrice": 199000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 250,
    "image":
        "https://jpaddict.com/wp-content/uploads/2022/08/review-kem-chong-nang-biore-aqua-rich-watery-essence.jpg",
    "promotion": null,
    "description":
        "Kem chống nắng Biore UV Aqua Rich Watery Essence SPF50+ PA++++ bảo vệ da khỏi tia UVA/UVB, kết cấu mỏng nhẹ, thấm nhanh.",
    "specs": {
      "Dung tích": "50g",
      "Kết cấu": "Dạng essence lỏng nhẹ",
      "Loại da phù hợp": "Mọi loại da",
      "Chỉ số chống nắng": "SPF50+ PA++++",
      "Khả năng chống nước": "Có",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "4901301334234",
      "Phân phối tại Việt Nam": "Kao Việt Nam",
    },
    "ingredients": [
      "Hyaluronic Acid – cấp ẩm",
      "Citrus Extract – chống oxy hóa",
      "UV Filters – bảo vệ da khỏi tia UVA/UVB",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. Thoa đều lên mặt và cổ trước khi ra nắng 15–20 phút.

2. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng.

3. Sử dụng hàng ngày để bảo vệ da tối ưu.
''',
  },
  {
    "id": "SP127",
    "name": "Tẩy trang Senka Perfect Clear Cleanse",
    "brand": "Senka",
    "type": "tẩy trang",
    "originalPrice": 135000,
    "discountPrice": 121500,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://media.hcdn.vn/catalog/product/g/e/gel-rua-mat-tay-trang-senka-sach-sau-2-trong-1-170ml-1-1676341029_img_450x450_31d6f9_fit_center.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Tẩy trang Senka Perfect Clear Cleanse giúp loại bỏ lớp trang điểm, bụi bẩn và dầu thừa, đồng thời giữ ẩm cho da.",
    "specs": {
      "Dung tích": "230ml",
      "Kết cấu": "Dạng dầu chuyển thành sữa khi nhũ hóa",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "4901872463234",
      "Phân phối tại Việt Nam": "Công ty TNHH Shiseido Việt Nam",
    },
    "ingredients": [
      "Olive Oil – hòa tan lớp trang điểm",
      "Green Tea Extract – chống oxy hóa, làm dịu da",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – giảm kích ứng",
      "Jojoba Oil – nuôi dưỡng da",
    ],
    "usage": '''
1. Lấy một lượng dầu vừa đủ ra tay khô.

2. Massage nhẹ nhàng lên mặt để hòa tan lớp trang điểm.

3. Thêm nước để nhũ hóa.

4. Rửa lại bằng nước sạch.

5. Sử dụng hàng ngày, đặc biệt khi trang điểm.
''',
  },
  {
    "id": "SP128",
    "name": "Serum The Ordinary Alpha Arbutin 2%",
    "brand": "The Ordinary",
    "type": "serum",
    "originalPrice": 295000,
    "discountPrice": 280000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://cdn.chiaki.vn/unsafe/0x800/left/top/smart/filters:quality(75)/https://chiaki.vn/upload/news/2020/03/review-alpha-arbutin-the-ordinary-co-thuc-su-duong-trang-da-than-thanh-nhu-loi-don-18032020124102.jpg",
    "promotion": null,
    "description":
        "Serum The Ordinary Alpha Arbutin 2% giúp làm sáng da, mờ thâm nám và đều màu da.",
    "specs": {
      "Dung tích": "30ml",
      "Kết cấu": "Dạng lỏng, thấm nhanh",
      "Loại da phù hợp": "Da xỉn màu, da có thâm",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Canada",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "7699151904234",
      "Phân phối tại Việt Nam": "Deciem Việt Nam",
    },
    "ingredients": [
      "Alpha Arbutin – làm sáng da, mờ thâm",
      "Hyaluronic Acid – cấp ẩm sâu",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Niacinamide – cải thiện sắc tố",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy 2–3 giọt serum.

2. Thoa đều lên mặt và cổ.

3. Sử dụng sáng và tối, kết hợp kem chống nắng ban ngày.

4. Dùng liên tục ít nhất 4 tuần để thấy hiệu quả rõ rệt.
''',
  },
  {
    "id": "SP129",
    "name": "Toner Benton Deep Green Tea",
    "brand": "Benton",
    "type": "toner",
    "originalPrice": 210000,
    "discountPrice": 210000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://m.media-amazon.com/images/I/719VvEt5jTL._AC_UF1000,1000_QL80_.jpg",
    "promotion": "Tặng 1 mặt nạ",
    "description":
        "Toner Benton Deep Green Tea chứa chiết xuất trà xanh, giúp cấp ẩm, làm dịu và kiểm soát dầu nhờn.",
    "specs": {
      "Dung tích": "150ml",
      "Kết cấu": "Dạng lỏng",
      "Loại da phù hợp": "Da dầu, da hỗn hợp",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "8809651234234",
      "Phân phối tại Việt Nam": "Công ty TNHH Benton Việt Nam",
    },
    "ingredients": [
      "Green Tea Extract – chống oxy hóa, kiểm soát dầu",
      "Panthenol – phục hồi da",
      "Glycerin – dưỡng ẩm",
      "Allantoin – làm dịu da",
      "Betaine – giữ nước",
      "Aloe Vera Extract – cấp ẩm",
    ],
    "usage": '''
1. Sau khi rửa mặt, thấm toner vào bông cotton hoặc tay sạch.

2. Thoa đều lên mặt và cổ.

3. Vỗ nhẹ để dưỡng chất thẩm thấu.

4. Sử dụng sáng và tối trước serum/kem dưỡng.

5. Có thể dùng làm lotion mask cho vùng da dầu.
''',
  },
  {
    "id": "SP130",
    "name": "Kem dưỡng Laneige Water Bank Hydro Cream",
    "brand": "Laneige",
    "type": "kem dưỡng",
    "originalPrice": 520000,
    "discountPrice": 499000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://myphamhangnga.com/wp-content/uploads/2020/09/kem-duong-am-cap-nuoc-laneige_result.jpg",
    "promotion": null,
    "description":
        "Kem dưỡng Laneige Water Bank Hydro Cream giúp cấp ẩm sâu, làm da căng bóng và mềm mịn nhờ công nghệ Water Bank.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng kem mịn",
      "Loại da phù hợp": "Da khô, da thường",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "8809647395234",
      "Phân phối tại Việt Nam": "Công ty TNHH Laneige Việt Nam",
    },
    "ingredients": [
      "Hydro Ionized Mineral Water – cấp ẩm sâu",
      "Hyaluronic Acid – giữ nước",
      "Green Tea Extract – chống oxy hóa",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. Sau khi rửa mặt và serum, lấy một lượng kem vừa đủ.

2. Thoa đều lên mặt và cổ, massage nhẹ nhàng.

3. Sử dụng sáng và tối để duy trì độ ẩm.

4. Có thể dùng làm lớp khóa ẩm cuối cùng trong chu trình dưỡng da.
''',
  },
  {
    "id": "SP131",
    "name": "Mặt nạ The Face Shop Real Nature Avocado",
    "brand": "The Face Shop",
    "type": "mặt nạ",
    "originalPrice": 25000,
    "discountPrice": 25000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 600,
    "image":
        "https://thefaceshoponline.com.vn/wp-content/uploads/2017/04/1ab19be42e1ad6448f0b.jpg",
    "promotion": "Mua 10 tặng 2",
    "description":
        "Mặt nạ The Face Shop Real Nature Avocado chiết xuất quả bơ, giúp dưỡng ẩm và làm mềm da.",
    "specs": {
      "Dung tích": "20ml/túi",
      "Kết cấu": "Dạng giấy cotton thấm tinh chất",
      "Loại da phù hợp": "Da khô, da thường",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "8809647396234",
      "Phân phối tại Việt Nam": "Công ty TNHH The Face Shop Việt Nam",
    },
    "ingredients": [
      "Avocado Extract – dưỡng ẩm, làm mềm da",
      "Glycerin – cấp ẩm",
      "Vitamin E – chống oxy hóa",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Collagen – tăng độ đàn hồi",
    ],
    "usage": '''
1. Rửa mặt sạch bằng sữa rửa mặt.

2. Lấy mặt nạ ra khỏi túi và đắp lên mặt.

3. Căn chỉnh cho vừa vặn, thư giãn 15–20 phút.

4. Gỡ mặt nạ, vỗ nhẹ tinh chất còn lại để thẩm thấu.

5. Không cần rửa lại bằng nước, tiếp tục các bước dưỡng da sau đó.
''',
  },
  {
    "id": "SP132",
    "name": "Sữa rửa mặt Cosrx Salicylic Acid Daily Gentle Cleanser",
    "brand": "Cosrx",
    "type": "sữa rửa mặt",
    "originalPrice": 145000,
    "discountPrice": 135000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 250,
    "image":
        "https://vn-live-01.slatic.net/p/c2ef3afb7b9aca2992d6c95c002e7fcd.jpg",
    "promotion": null,
    "description":
        "Sữa rửa mặt Cosrx Salicylic Acid Daily Gentle Cleanser giúp làm sạch sâu, kiểm soát dầu và ngăn ngừa mụn.",
    "specs": {
      "Dung tích": "150ml",
      "Kết cấu": "Dạng gel tạo bọt",
      "Loại da phù hợp": "Da dầu, da mụn",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8809115026234",
      "Phân phối tại Việt Nam": "Công ty TNHH Cosrx Việt Nam",
    },
    "ingredients": [
      "Salicylic Acid – làm sạch sâu, giảm mụn",
      "Tea Tree Oil – kháng khuẩn, kiểm soát dầu",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Green Tea Extract – chống oxy hóa",
    ],
    "usage": '''
1. Làm ướt da mặt bằng nước sạch.

2. Lấy một lượng vừa đủ, tạo bọt với nước.

3. Massage nhẹ nhàng lên mặt theo chuyển động tròn.

4. Rửa lại bằng nước sạch.

5. Sử dụng 2 lần/ngày (sáng và tối).
''',
  },
  {
    "id": "SP133",
    "name": "Kem chống nắng Klairs Mid-Day Blue Sun Lotion",
    "brand": "Klairs",
    "type": "chống nắng",
    "originalPrice": 295000,
    "discountPrice": 280000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://ordinaryvietnam.net/wp-content/uploads/2023/03/261.1-Review-dong-kem-chong-nang-klairs-midday-blue-sun-lotion.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Kem chống nắng Klairs Mid-Day Blue Sun Lotion SPF40 PA++ bảo vệ da khỏi tia UVA/UVB, làm dịu da nhờ Guaiazulene.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng lotion mỏng nhẹ",
      "Loại da phù hợp": "Da nhạy cảm, da thường",
      "Chỉ số chống nắng": "SPF40 PA++",
      "Khả năng chống nước": "Có",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "8809115027234",
      "Phân phối tại Việt Nam": "Công ty TNHH Klairs Việt Nam",
    },
    "ingredients": [
      "Guaiazulene – làm dịu da, chống viêm",
      "Niacinamide – làm sáng da",
      "UV Filters – bảo vệ da khỏi tia UVA/UVB",
      "Panthenol – phục hồi da",
      "Allantoin – giảm kích ứng",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. Thoa đều lên mặt và cổ trước khi ra nắng 15–20 phút.

2. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng.

3. Sử dụng hàng ngày để bảo vệ da tối ưu.
''',
  },
  {
    "id": "SP134",
    "name": "Tẩy trang DHC Olive Virgin Oil",
    "brand": "DHC",
    "type": "tẩy trang",
    "originalPrice": 320000,
    "discountPrice": 305000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://product.hstatic.net/200000833669/product/dhc_5efcd25f38274485bcd349df3db212d9_master.jpg",
    "promotion": null,
    "description":
        "Tẩy trang DHC Olive Virgin Oil làm sạch lớp trang điểm và bụi bẩn, đồng thời dưỡng ẩm cho da.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dạng dầu lỏng",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "4511413301234",
      "Phân phối tại Việt Nam": "Công ty TNHH DHC Việt Nam",
    },
    "ingredients": [
      "Olive Virgin Oil – hòa tan lớp trang điểm, dưỡng ẩm",
      "Vitamin E – chống oxy hóa",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Jojoba Oil – nuôi dưỡng da",
    ],
    "usage": '''
1. Lấy một lượng dầu vừa đủ ra tay khô.

2. Massage nhẹ nhàng lên mặt để hòa tan lớp trang điểm.

3. Thêm nước để nhũ hóa.

4. Rửa lại bằng nước sạch.

5. Sử dụng hàng ngày, đặc biệt khi trang điểm.
''',
  },
  {
    "id": "SP135",
    "name": "Serum Estee Lauder Perfectionist Pro",
    "brand": "Estee Lauder",
    "type": "serum",
    "originalPrice": 1950000,
    "discountPrice": 1950000,
    "isDiscountActive": false,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 150,
    "image":
        "https://caostore.vn/wp-content/uploads/2023/03/vitamin-c-estee-lauderpng1.jpg",
    "promotion": "Tặng 1 mini size",
    "description":
        "Serum Estee Lauder Perfectionist Pro giúp làm săn chắc da, giảm nếp nhăn và cải thiện độ đàn hồi.",
    "specs": {
      "Dung tích": "30ml",
      "Kết cấu": "Dạng lỏng, thấm nhanh",
      "Loại da phù hợp": "Da lão hóa, da khô",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "0271311234567",
      "Phân phối tại Việt Nam": "Estee Lauder Việt Nam",
    },
    "ingredients": [
      "Acetyl Hexapeptide-8 – giảm nếp nhăn",
      "Vitamin C – chống oxy hóa, làm sáng da",
      "Hyaluronic Acid – cấp ẩm sâu",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy 2–3 giọt serum.

2. Thoa đều lên mặt và cổ.

3. Sử dụng sáng và tối để duy trì độ săn chắc.

4. Kết hợp với kem dưỡng Estee Lauder để tăng hiệu quả chống lão hóa.
''',
  },
  {
    "id": "SP136",
    "name": "Toner Labo Labo Keana Lotion",
    "brand": "Labo Labo",
    "type": "toner",
    "originalPrice": 295000,
    "discountPrice": 280000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://cdn.tgdd.vn/Files/2022/08/18/1456979/danh-gia-chi-tiet-toner-labo-labo-giup-se-khit-lo-chan-long-202208180757150893.jpg",
    "promotion": null,
    "description":
        "Toner Labo Labo Keana Lotion giúp se khít lỗ chân lông, kiểm soát dầu và làm sạch da.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dạng lỏng",
      "Loại da phù hợp": "Da dầu, da hỗn hợp",
      "Không chứa cồn": "Đúng",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "4511413302234",
      "Phân phối tại Việt Nam": "Rohto Nhật Bản",
    },
    "ingredients": [
      "Lactic Acid – tẩy tế bào chết nhẹ, se khít lỗ chân lông",
      "Collagen – tăng độ đàn hồi",
      "Hyaluronic Acid – cấp ẩm sâu",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. Sau khi rửa mặt, thấm toner vào bông cotton.

2. Lau nhẹ nhàng toàn mặt và cổ.

3. Vỗ nhẹ để dưỡng chất thẩm thấu.

4. Sử dụng sáng và tối trước serum/kem dưỡng.
''',
  },
  {
    "id": "SP137",
    "name": "Kem dưỡng Innisfree Jeju Cherry Blossom",
    "brand": "Innisfree",
    "type": "kem dưỡng",
    "originalPrice": 340000,
    "discountPrice": 280000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 120,
    "image":
        "https://product.hstatic.net/200000150709/product/kem-duong-am-dang-gel-innisfree-jeju-cherry-blossom-jelly-cream-1-1_af782b073e2d42a18ffa1d1bfc24dbab.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Kem dưỡng Innisfree Jeju Cherry Blossom giúp dưỡng sáng da, cấp ẩm và mang lại làn da rạng rỡ.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng cream mịn nhẹ",
      "Loại da phù hợp": "Da thường, da khô",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "880964739137",
      "Phân phối tại Việt Nam": "Công ty TNHH Innisfree Việt Nam",
    },
    "ingredients": [
      "Jeju Cherry Blossom Extract – dưỡng sáng da",
      "Niacinamide – làm đều màu da",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Shea Butter – dưỡng mềm da",
    ],
    "usage": '''
1. Sau khi rửa mặt và sử dụng toner/serum, lấy một lượng kem vừa đủ bằng đầu ngón tay.
2. Chấm kem lên các điểm chính trên mặt: trán, mũi, hai má và cằm.
3. Thoa đều và massage nhẹ nhàng theo chuyển động tròn từ trong ra ngoài để kem thẩm thấu tốt hơn.
4. Đừng quên thoa xuống vùng cổ để da đều màu và được dưỡng ẩm toàn diện.
5. Sử dụng sáng và tối. Buổi sáng nên kết hợp thêm kem chống nắng để bảo vệ da.
6. Có thể dùng như lớp khóa ẩm cuối cùng trong chu trình dưỡng da.
''',
  },
  {
    "id": "SP138",
    "name": "Mặt nạ SexyLook Hyaluronic Acid",
    "brand": "SexyLook",
    "type": "mặt nạ",
    "originalPrice": 28000,
    "discountPrice": null,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 500,
    "image":
        "https://media.hcdn.vn/catalog/product/m/a/mat-na-sexylook-nang-co-360-cap-am-chuyen-sau-30ml-1658983837_img_450x450_31d6f9_fit_center.jpg",
    "promotion": null,
    "description":
        "Mặt nạ SexyLook Hyaluronic Acid giúp cấp ẩm sâu, làm da căng mịn và đàn hồi.",
    "specs": {
      "Dung tích": "25ml/túi",
      "Kết cấu": "Dạng giấy cotton thấm tinh chất",
      "Loại da phù hợp": "Da khô, da thường",
      "Không chứa cồn": "Đúng",
      "Xuất xứ": "Đài Loan",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "471123456138",
      "Phân phối tại Việt Nam": "Công ty TNHH SexyLook Việt Nam",
    },
    "ingredients": [
      "Hyaluronic Acid – cấp ẩm sâu",
      "Collagen – tăng độ đàn hồi",
      "Vitamin E – chống oxy hóa",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Aloe Vera Extract – cấp ẩm, làm mát da",
    ],
    "usage": '''
1. Rửa mặt sạch bằng sữa rửa mặt và lau khô bằng khăn mềm.
2. Lấy mặt nạ ra khỏi túi, nhẹ nhàng mở rộng và đắp lên mặt.
3. Căn chỉnh cho vừa vặn với các đường nét trên gương mặt, tránh vùng mắt và môi.
4. Thư giãn trong 15–20 phút, có thể nằm nghỉ hoặc đọc sách.
5. Gỡ mặt nạ, vỗ nhẹ tinh chất còn lại để thẩm thấu sâu vào da.
6. Không cần rửa lại bằng nước, tiếp tục các bước dưỡng da sau đó.
7. Sử dụng 2–3 lần/tuần để duy trì làn da căng mịn, đàn hồi.
''',
  },
  {
    "id": "SP139",
    "name": "Sữa rửa mặt The Ordinary Glucoside Foaming Cleanser",
    "brand": "The Ordinary",
    "type": "sữa rửa mặt",
    "originalPrice": 220000,
    "discountPrice": 220000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 150,
    "image":
        "https://static.thcdn.com/productimg/original/14242474-1075284126348647.jpg",
    "promotion": "Tặng 1 khăn lau mặt",
    "description":
        "Sữa rửa mặt The Ordinary Glucoside Foaming Cleanser làm sạch nhẹ nhàng, không gây khô da, phù hợp da nhạy cảm.",
    "specs": {
      "Dung tích": "150ml",
      "Kết cấu": "Dạng gel tạo bọt",
      "Loại da phù hợp": "Da thường, da nhạy cảm",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Canada",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "769915190139",
      "Phân phối tại Việt Nam": "Deciem Việt Nam",
    },
    "ingredients": [
      "Glucoside – làm sạch nhẹ nhàng",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Niacinamide – cải thiện sắc tố",
    ],
    "usage": '''
1. Làm ướt da mặt bằng nước sạch.
2. Lấy một lượng gel vừa đủ ra lòng bàn tay.
3. Tạo bọt nhẹ nhàng với nước, sau đó thoa đều lên mặt.
4. Massage theo chuyển động tròn, tập trung vùng chữ T (trán, mũi, cằm).
5. Rửa lại bằng nước sạch và lau khô bằng khăn mềm.
6. Sử dụng 2 lần/ngày (sáng và tối).
7. Sau khi rửa mặt, tiếp tục với toner và serum để đạt hiệu quả dưỡng da tối ưu.
''',
  },
  {
    "id": "SP140",
    "name": "Kem chống nắng Avene Cleanance Sunscreen SPF50+",
    "brand": "Avene",
    "type": "chống nắng",
    "originalPrice": 385000,
    "discountPrice": 385000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://mint07.com/wp-content/uploads/2019/11/kem-chong-nang-avene-cleanance-sunscreen-spf502.jpg",
    "promotion": null,
    "description":
        "Kem chống nắng Avene Cleanance Sunscreen SPF50+ bảo vệ da khỏi tia UVA/UVB, kiểm soát dầu và làm dịu da.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng kem mỏng nhẹ",
      "Loại da phù hợp": "Da dầu, da mụn",
      "Chỉ số chống nắng": "SPF50+ PA++++",
      "Khả năng chống nước": "Có",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "3282770112345",
      "Phân phối tại Việt Nam": "Pierre Fabre Việt Nam",
    },
    "ingredients": [
      "UV Filters – bảo vệ da khỏi tia UVA/UVB",
      "Avene Thermal Spring Water – làm dịu da",
      "Vitamin E – chống oxy hóa",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – giảm kích ứng",
    ],
    "usage": '''
1. Hoàn tất các bước dưỡng da cơ bản trước khi thoa kem chống nắng.
2. Lấy một lượng kem vừa đủ, chấm lên trán, má, mũi, cằm.
3. Thoa đều và massage nhẹ nhàng, đừng quên vùng cổ và tai.
4. Thoa trước khi ra ngoài ít nhất 15–20 phút.
5. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng hoặc sau khi đổ mồ hôi/nước.
6. Sử dụng hàng ngày để bảo vệ da tối ưu.
''',
  },
  {
    "id": "SP141",
    "name": "Serum Skinceuticals Hydrating B5 Gel",
    "brand": "Skinceuticals",
    "type": "serum",
    "originalPrice": 2950000,
    "discountPrice": 2950000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 80,
    "image":
        "https://media.hcdn.vn/wysiwyg/HaNguyen1/tinh-chat-skinceuticals-ho-tro-cap-am-tai-tao-da-30ml-1.jpg",
    "promotion": "Tặng 1 mặt nạ cao cấp",
    "description":
        "Serum Skinceuticals Hydrating B5 Gel giúp cấp ẩm sâu, làm da căng mịn và đàn hồi.",
    "specs": {
      "Dung tích": "30ml",
      "Kết cấu": "Dạng gel lỏng",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "6354941234567",
      "Phân phối tại Việt Nam": "Skinceuticals Việt Nam",
    },
    "ingredients": [
      "Hyaluronic Acid – cấp ẩm sâu",
      "Vitamin B5 – phục hồi da",
      "Glycerin – dưỡng ẩm",
      "Panthenol – làm dịu da",
      "Allantoin – giảm kích ứng",
      "Betaine – giữ nước",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy 2–3 giọt serum bằng ống nhỏ giọt.
2. Chấm serum lên trán, má, cằm và cổ.
3. Thoa đều và vỗ nhẹ để dưỡng chất thẩm thấu sâu.
4. Sử dụng sáng và tối. Buổi sáng nên kết hợp thêm kem chống nắng.
5. Có thể dùng riêng hoặc kết hợp với các loại serum khác trong chu trình dưỡng da.
6. Dùng liên tục ít nhất 4 tuần để thấy hiệu quả rõ rệt.
''',
  },
  {
    "id": "SP142",
    "name": "Toner Simple Kind to Skin",
    "brand": "Simple",
    "type": "toner",
    "originalPrice": 115000,
    "discountPrice": 115000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 300,
    "image":
        "https://cdn.chiaki.vn/unsafe/0x480/left/top/smart/filters:quality(75)/https://chiaki.vn/upload/news/content/2023/04/toner-simple-danh-cho-da-gi-jpg-1681897154-19042023163914.jpg",
    "promotion": null,
    "description":
        "Toner Simple Kind to Skin giúp cân bằng da, cấp ẩm nhẹ và làm dịu da nhạy cảm.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dạng lỏng",
      "Loại da phù hợp": "Da nhạy cảm, da thường",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Anh",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "5011451101234",
      "Phân phối tại Việt Nam": "Unilever Việt Nam",
    },
    "ingredients": [
      "Pro-Vitamin B5 – phục hồi da",
      "Chamomile Extract – làm dịu da",
      "Witch Hazel – se khít lỗ chân lông",
      "Glycerin – dưỡng ẩm",
      "Allantoin – giảm kích ứng",
      "Aloe Vera Extract – cấp ẩm",
    ],
    "usage": '''
1. Sau khi rửa mặt, thấm toner vào bông cotton hoặc tay sạch.
2. Lau hoặc thoa đều lên mặt và cổ, tránh vùng mắt.
3. Vỗ nhẹ để dưỡng chất thẩm thấu sâu vào da.
4. Sử dụng sáng và tối trước serum/kem dưỡng.
5. Có thể dùng làm lotion mask bằng cách thấm toner vào bông cotton và đắp lên mặt 3–5 phút.
6. Kết hợp với các sản phẩm dưỡng ẩm khác để tăng hiệu quả làm dịu và cân bằng da.
''',
  },
  {
    "id": "SP143",
    "name": "Kem dưỡng Paula’s Choice Clear Oil-Free Moisturizer",
    "brand": "Paula’s Choice",
    "type": "kem dưỡng",
    "originalPrice": 690000,
    "discountPrice": 621000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 120,
    "image":
        "https://media.hcdn.vn/wysiwyg/Chau/kem-duong-am-paula-s-choice-danh-cho-da-mun-60ml-1.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Kem dưỡng Paula’s Choice Clear Oil-Free Moisturizer giúp cấp ẩm nhẹ, kiểm soát dầu và ngăn ngừa mụn.",
    "specs": {
      "Dung tích": "60ml",
      "Kết cấu": "Dạng lotion mỏng nhẹ",
      "Loại da phù hợp": "Da dầu, da mụn",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "0655439012345",
      "Phân phối tại Việt Nam": "Công ty TNHH Paula’s Choice Việt Nam",
    },
    "ingredients": [
      "Niacinamide – làm sáng da, kiểm soát dầu",
      "Ceramides – phục hồi hàng rào da",
      "Green Tea Extract – chống oxy hóa, kháng viêm",
      "Panthenol – dưỡng ẩm, phục hồi",
      "Allantoin – làm dịu da",
      "Glycerin – cấp ẩm",
    ],
    "usage": '''
1. Sau khi rửa mặt và serum, lấy một lượng kem vừa đủ.
2. Chấm kem lên trán, má, mũi, cằm.
3. Thoa đều và massage nhẹ nhàng để kem thẩm thấu.
4. Sử dụng sáng và tối. Buổi sáng nên kết hợp thêm kem chống nắng.
5. Có thể dùng làm lớp khóa ẩm cuối cùng trong chu trình dưỡng da.
''',
  },
  {
    "id": "SP144",
    "name": "Mặt nạ LANEIGE Lip Sleeping Mask",
    "brand": "Laneige",
    "type": "mặt nạ",
    "originalPrice": 420000,
    "discountPrice": 420000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 250,
    "image":
        "https://file.hstatic.net/200000536035/file/mat-na-moi-laneige-lip-sleeping-mask-berry-a_48c4f84eafdd4694b2a9af5c9600047c_1024x1024.jpg",
    "promotion": "Tặng 1 sample",
    "description":
        "Mặt nạ ngủ môi Laneige Lip Sleeping Mask giúp dưỡng ẩm sâu, làm mềm và loại bỏ tế bào chết trên môi.",
    "specs": {
      "Dung tích": "20g",
      "Kết cấu": "Dạng balm đặc",
      "Loại da phù hợp": "Mọi loại da môi",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "8809647397234",
      "Phân phối tại Việt Nam": "Công ty TNHH Laneige Việt Nam",
    },
    "ingredients": [
      "Berry Mix Complex – giàu chất chống oxy hóa",
      "Vitamin C – làm sáng môi",
      "Hyaluronic Acid – cấp ẩm sâu",
      "Shea Butter – dưỡng mềm môi",
      "Panthenol – phục hồi da môi",
      "Allantoin – làm dịu môi",
    ],
    "usage": '''
1. Trước khi đi ngủ, làm sạch môi bằng khăn ẩm hoặc tẩy tế bào chết nhẹ.
2. Lấy một lượng vừa đủ thoa đều lên môi.
3. Để qua đêm, sáng hôm sau lau nhẹ bằng khăn giấy hoặc rửa sạch.
4. Sử dụng hàng ngày để môi luôn mềm mịn, hồng hào.
5. Có thể dùng như son dưỡng ban ngày khi môi khô nứt.
''',
  },
  {
    "id": "SP145",
    "name": "Sữa rửa mặt SVR Topialyse Gel Lavant",
    "brand": "SVR",
    "type": "sữa rửa mặt",
    "originalPrice": 265000,
    "discountPrice": 265000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://edbeauty.vn/wp-content/uploads/2022/04/Gel-rua-mat-SVR-Topialyse-Gel-Lavant-cho-da-kho-san-ngua-1-1.jpg",
    "promotion": null,
    "description":
        "Sữa rửa mặt SVR Topialyse Gel Lavant làm sạch nhẹ nhàng, giữ ẩm và bảo vệ da nhạy cảm.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dạng gel tạo bọt nhẹ",
      "Loại da phù hợp": "Da nhạy cảm, da khô",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "3401340123456",
      "Phân phối tại Việt Nam": "Công ty TNHH SVR Việt Nam",
    },
    "ingredients": [
      "Omega 3,6,9 – nuôi dưỡng, phục hồi da",
      "Niacinamide – làm sáng da, giảm viêm",
      "Glycerin – cấp ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Shea Butter – dưỡng mềm da",
    ],
    "usage": '''
1. Làm ướt da mặt và cơ thể bằng nước sạch.
2. Lấy một lượng gel vừa đủ, tạo bọt nhẹ.
3. Massage nhẹ nhàng lên mặt và cơ thể.
4. Rửa lại bằng nước sạch.
5. Dùng hàng ngày sáng và tối để duy trì làn da khỏe mạnh.
6. Có thể kết hợp với kem dưỡng SVR để tăng hiệu quả dưỡng ẩm.
''',
  },
  {
    "id": "SP146",
    "name": "Kem chống nắng Cell Fusion C Toning Sunscreen",
    "brand": "Cell Fusion C",
    "type": "chống nắng",
    "originalPrice": 395000,
    "discountPrice": 375250,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://myphamlan.vn/wp-content/uploads/2023/03/kem-chong-nang-cell-fusion-c-toning-sunscreen-1-myphamlan.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Kem chống nắng Cell Fusion C Toning Sunscreen SPF50+ PA++++ bảo vệ da khỏi tia UVA/UVB, đồng thời nâng tông nhẹ nhàng.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng kem mỏng nhẹ",
      "Loại da phù hợp": "Mọi loại da",
      "Chỉ số chống nắng": "SPF50+ PA++++",
      "Khả năng chống nước": "Có",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8809647398234",
      "Phân phối tại Việt Nam": "Công ty TNHH Cell Fusion C Việt Nam",
    },
    "ingredients": [
      "Zinc Oxide – chống tia UVA/UVB",
      "Titanium Dioxide – bảo vệ da",
      "Niacinamide – làm sáng da",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. Hoàn tất các bước dưỡng da cơ bản trước khi thoa kem chống nắng.
2. Lấy một lượng kem vừa đủ, chấm lên trán, má, mũi, cằm.
3. Thoa đều và massage nhẹ nhàng, đừng quên vùng cổ và tai.
4. Thoa trước khi ra ngoài ít nhất 15–20 phút.
5. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng hoặc sau khi đổ mồ hôi/nước.
6. Sử dụng hàng ngày để bảo vệ da tối ưu.
''',
  },
  {
    "id": "SP147",
    "name": "Serum Garnier Bright Complete Vitamin C",
    "brand": "Garnier",
    "type": "serum",
    "originalPrice": 215000,
    "discountPrice": 215000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 300,
    "image":
        "https://media.hcdn.vn/wysiwyg/MaiQuynh/serum-garnier-tang-cuong-sang-da-mo-tham-ban-dem-30ml-3.jpg",
    "promotion": "Tặng 1 mặt nạ",
    "description":
        "Serum Garnier Bright Complete Vitamin C giúp làm sáng da, mờ thâm và đều màu da.",
    "specs": {
      "Dung tích": "30ml",
      "Kết cấu": "Dạng lỏng, thấm nhanh",
      "Loại da phù hợp": "Da xỉn màu, da có thâm",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "3600541234567",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oréal Việt Nam",
    },
    "ingredients": [
      "Vitamin C – làm sáng da, mờ thâm",
      "Niacinamide – cải thiện sắc tố",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Betaine – giữ nước",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy 2–3 giọt serum bằng ống nhỏ giọt.
2. Chấm serum lên trán, má, cằm và cổ.
3. Thoa đều và vỗ nhẹ để dưỡng chất thẩm thấu sâu.
4. Sử dụng sáng và tối. Buổi sáng nên kết hợp thêm kem chống nắng.
5. Có thể dùng riêng hoặc kết hợp với các loại serum khác trong chu trình dưỡng da.
6. Dùng liên tục ít nhất 4 tuần để thấy hiệu quả rõ rệt.
''',
  },
  {
    "id": "SP148",
    "name": "Toner Hada Labo Advanced Nourish",
    "brand": "Hada Labo",
    "type": "toner",
    "originalPrice": 245000,
    "discountPrice": 245000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 250,
    "image":
        "https://file.hstatic.net/200000868185/file/hada_labo_advanced_nourish_hyaluronic_acid_lotion_d2b827e5961342569f85687ef1eb5e68.jpg",
    "promotion": null,
    "description":
        "Toner Hada Labo Advanced Nourish chứa Hyaluronic Acid giúp cấp ẩm sâu và duy trì độ ẩm lâu dài.",
    "specs": {
      "Dung tích": "170ml",
      "Kết cấu": "Dạng lỏng",
      "Loại da phù hợp": "Da khô, da thường",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "4987241144234",
      "Phân phối tại Việt Nam": "Rohto Việt Nam",
    },
    "ingredients": [
      "Hyaluronic Acid – cấp ẩm sâu",
      "Glycerin – dưỡng ẩm",
      "Butylene Glycol – giữ nước",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Aloe Vera Extract – cấp ẩm, làm mát da",
    ],
    "usage": '''
1. Sau khi rửa mặt, lấy toner ra tay hoặc bông cotton.
2. Thoa đều lên mặt và cổ, tránh vùng mắt.
3. Vỗ nhẹ để dưỡng chất thẩm thấu sâu vào da.
4. Sử dụng sáng và tối trước serum/kem dưỡng.
5. Có thể dùng làm lotion mask bằng cách thấm toner vào bông cotton và đắp lên mặt 3–5 phút.
6. Kết hợp với các sản phẩm dưỡng ẩm khác để tăng hiệu quả làm dịu và cân bằng da.
''',
  },
  {
    "id": "SP149",
    "name": "Kem dưỡng Olay Total Effects 7 in One",
    "brand": "Olay",
    "type": "kem dưỡng",
    "originalPrice": 520000,
    "discountPrice": 468000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 140,
    "image":
        "https://media.hcdn.vn/wysiwyg/HaNguyen1/kem-duong-olay-total-effects-ngua-lao-hoa-da-5.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Kem dưỡng Olay Total Effects 7 in One giúp chống lão hóa, làm sáng da và giảm nếp nhăn.",
    "specs": {
      "Dung tích": "50g",
      "Kết cấu": "Dạng kem đặc",
      "Loại da phù hợp": "Da lão hóa, da khô",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "4902431234567",
      "Phân phối tại Việt Nam": "Procter & Gamble Việt Nam",
    },
    "ingredients": [
      "Niacinamide – làm sáng da, giảm thâm",
      "Vitamin E – chống oxy hóa",
      "Amino-Peptide Complex – tăng độ đàn hồi",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. Sau khi rửa mặt và serum, lấy một lượng kem vừa đủ.
2. Chấm kem lên trán, má, mũi, cằm.
3. Thoa đều và massage nhẹ nhàng để kem thẩm thấu.
4. Sử dụng sáng và tối. Buổi sáng nên kết hợp thêm kem chống nắng.
5. Có thể dùng làm lớp khóa ẩm cuối cùng trong chu trình dưỡng da.
''',
  },
  {
    "id": "SP150",
    "name": "Mặt nạ Freeman Charcoal & Black Sugar",
    "brand": "Freeman",
    "type": "mặt nạ",
    "originalPrice": 85000,
    "discountPrice": 85000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 320,
    "image":
        "https://media.hcdn.vn/wysiwyg/HaNguyen1/mat-na-freeman-tay-da-chet-175ml-1.jpg",
    "promotion": null,
    "description":
        "Mặt nạ Freeman Charcoal & Black Sugar giúp làm sạch sâu, loại bỏ tế bào chết và dưỡng sáng da.",
    "specs": {
      "Dung tích": "175ml",
      "Kết cấu": "Dạng kem có hạt scrub",
      "Loại da phù hợp": "Da dầu, da hỗn hợp",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "0721511234567",
      "Phân phối tại Việt Nam": "Công ty TNHH Freeman Việt Nam",
    },
    "ingredients": [
      "Charcoal – hút dầu thừa, làm sạch sâu",
      "Black Sugar – tẩy tế bào chết, dưỡng sáng da",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Vitamin C – chống oxy hóa",
    ],
    "usage": '''
1. Sau khi rửa mặt, thoa đều lớp mặt nạ lên da.
2. Massage nhẹ nhàng để loại bỏ tế bào chết.
3. Để yên 5–10 phút cho dưỡng chất thẩm thấu.
4. Rửa lại bằng nước sạch.
5. Sử dụng 2–3 lần/tuần để duy trì làn da sáng khỏe.
''',
  },
  {
    "id": "SP151",
    "name": "Sữa rửa mặt Pond’s White Beauty",
    "brand": "Pond’s",
    "type": "sữa rửa mặt",
    "originalPrice": 75000,
    "discountPrice": 75000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 400,
    "image":
        "https://media.hcdn.vn/wysiwyg/minhchau/sua-rua-mat-pond-s-lam-sang-da-ngan-ngua-mun-100g-1.jpg",
    "promotion": "Mua 2 tặng 1",
    "description":
        "Sữa rửa mặt Pond’s White Beauty giúp làm sạch bụi bẩn, dầu thừa và hỗ trợ dưỡng trắng da.",
    "specs": {
      "Dung tích": "100g",
      "Kết cấu": "Dạng kem tạo bọt",
      "Loại da phù hợp": "Da thường, da hỗn hợp",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Thái Lan",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "8999999023456",
      "Phân phối tại Việt Nam": "Unilever Việt Nam",
    },
    "ingredients": [
      "Vitamin B3 – dưỡng trắng da",
      "Niacinamide – làm sáng da, giảm thâm",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Kaolin – hút dầu thừa",
    ],
    "usage": '''
1. Làm ướt da mặt bằng nước sạch.
2. Lấy một lượng vừa đủ, tạo bọt với nước.
3. Massage nhẹ nhàng lên mặt theo chuyển động tròn.
4. Rửa lại bằng nước sạch.
5. Sử dụng 2 lần/ngày (sáng và tối).
''',
  },
  {
    "id": "SP152",
    "name": "Kem chống nắng The Saem Eco Earth Pink Sun",
    "brand": "The Saem",
    "type": "chống nắng",
    "originalPrice": 175000,
    "discountPrice": 175000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://mint07.com/wp-content/uploads/2024/11/kem-chong-nang-the-saem-eco-earth-pink-sun-cream-50g-hong-1.jpg",
    "promotion": null,
    "description":
        "Kem chống nắng The Saem Eco Earth Pink Sun SPF50+ PA++++ bảo vệ da khỏi tia UVA/UVB, nâng tông nhẹ nhàng.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng kem mỏng nhẹ",
      "Loại da phù hợp": "Mọi loại da",
      "Chỉ số chống nắng": "SPF50+ PA++++",
      "Khả năng chống nước": "Có",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8809647399234",
      "Phân phối tại Việt Nam": "Công ty TNHH The Saem Việt Nam",
    },
    "ingredients": [
      "Zinc Oxide – chống tia UVA/UVB",
      "Titanium Dioxide – bảo vệ da",
      "Niacinamide – làm sáng da",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. Hoàn tất các bước dưỡng da cơ bản trước khi thoa kem chống nắng.
2. Lấy một lượng kem vừa đủ, chấm lên trán, má, mũi, cằm.
3. Thoa đều và massage nhẹ nhàng, đừng quên vùng cổ và tai.
4. Thoa trước khi ra ngoài ít nhất 15–20 phút.
5. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng hoặc sau khi đổ mồ hôi/nước.
6. Sử dụng hàng ngày để bảo vệ da tối ưu.
''',
  },
  {
    "id": "SP153",
    "name": "Tẩy trang Byphasse Micellar Solution",
    "brand": "Byphasse",
    "type": "tẩy trang",
    "originalPrice": 125000,
    "discountPrice": 118750,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 350,
    "image":
        "https://mint07.com/wp-content/uploads/2024/05/nuoc-tay-trang-byphasse-solution-micellaire-than-hoat-tinh-xam-500ml.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Nước tẩy trang Byphasse Micellar Solution làm sạch lớp trang điểm và bụi bẩn, dịu nhẹ cho da.",
    "specs": {
      "Dung tích": "500ml",
      "Kết cấu": "Dạng nước trong suốt",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Tây Ban Nha",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "8436097091234",
      "Phân phối tại Việt Nam": "Công ty TNHH Byphasse Việt Nam",
    },
    "ingredients": [
      "Micelle Technology – làm sạch sâu lớp trang điểm",
      "Glycerin – dưỡng ẩm",
      "Aloe Vera Extract – làm dịu da",
      "Panthenol – phục hồi da",
      "Allantoin – giảm kích ứng",
      "Niacinamide – cải thiện sắc tố",
    ],
    "usage": '''
1. Thấm nước tẩy trang vào bông cotton sạch.
2. Lau nhẹ nhàng toàn mặt để loại bỏ lớp trang điểm và bụi bẩn.
3. Lặp lại cho đến khi bông sạch hoàn toàn.
4. Không cần rửa lại bằng nước, nhưng có thể rửa nếu muốn.
5. Sử dụng hàng ngày, sáng và tối.
''',
  },
  {
    "id": "SP154",
    "name": "Serum L’Oreal Revitalift 1.5% Hyaluronic Acid",
    "brand": "L’Oreal",
    "type": "serum",
    "originalPrice": 395000,
    "discountPrice": 395000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://file.hstatic.net/200000223113/file/l_oreal_paris_revitalift_hyaluronic_acid_serum_3_9efdedb4ab664391a3f35e951c140501.jpg",
    "promotion": null,
    "description":
        "Serum L’Oreal Revitalift 1.5% Hyaluronic Acid giúp cấp ẩm sâu, làm da căng mịn và giảm nếp nhăn.",
    "specs": {
      "Dung tích": "30ml",
      "Kết cấu": "Dạng lỏng, thấm nhanh",
      "Loại da phù hợp": "Da khô, da lão hóa",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "3600521234567",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oréal Việt Nam",
    },
    "ingredients": [
      "Hyaluronic Acid 1.5% – cấp ẩm sâu, làm căng da",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Vitamin E – chống oxy hóa",
      "Niacinamide – cải thiện sắc tố",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy 2–3 giọt serum bằng ống nhỏ giọt.
2. Chấm serum lên trán, má, cằm và cổ.
3. Thoa đều và vỗ nhẹ để dưỡng chất thẩm thấu sâu.
4. Sử dụng sáng và tối. Buổi sáng nên kết hợp thêm kem chống nắng.
5. Dùng liên tục ít nhất 4 tuần để thấy hiệu quả rõ rệt.
''',
  },
  {
    "id": "SP155",
    "name": "Toner Evoluderm Purifying Lotion",
    "brand": "Evoluderm",
    "type": "toner",
    "originalPrice": 99000,
    "discountPrice": 99000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 300,
    "image":
        "https://media.hcdn.vn/wysiwyg/MaiQuynh/nuoc-hoa-hong-evoluderm-2.jpg",
    "promotion": "Tặng 1 mặt nạ",
    "description":
        "Toner Evoluderm Purifying Lotion giúp làm sạch da sau bước rửa mặt, cân bằng độ ẩm và se khít lỗ chân lông.",
    "specs": {
      "Dung tích": "250ml",
      "Kết cấu": "Dạng lỏng",
      "Loại da phù hợp": "Da thường, da hỗn hợp",
      "Không chứa cồn": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "3760100682234",
      "Phân phối tại Việt Nam": "Công ty TNHH Evoluderm Việt Nam",
    },
    "ingredients": [
      "Aqua – dung môi chính",
      "Glycerin – dưỡng ẩm",
      "Fragrance – hương nhẹ",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Witch Hazel Extract – se khít lỗ chân lông",
    ],
    "usage": '''
1. Sau khi rửa mặt, thấm toner vào bông cotton hoặc tay sạch.
2. Lau hoặc thoa đều lên mặt và cổ, tránh vùng mắt.
3. Vỗ nhẹ để dưỡng chất thẩm thấu sâu vào da.
4. Sử dụng sáng và tối trước serum/kem dưỡng.
5. Có thể dùng làm lotion mask bằng cách thấm toner vào bông cotton và đắp lên mặt 3–5 phút.
''',
  },
  {
    "id": "SP156",
    "name": "Kem dưỡng Pond’s Flawless Radiance",
    "brand": "Pond’s",
    "type": "kem dưỡng",
    "originalPrice": 295000,
    "discountPrice": 295000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://vn-test-11.slatic.net/p/5480787e580169fb0356b34e453b35d1.jpg",
    "promotion": null,
    "description":
        "Kem dưỡng Pond’s Flawless Radiance giúp làm sáng da, giảm thâm nám và cải thiện sắc tố da.",
    "specs": {
      "Dung tích": "50g",
      "Kết cấu": "Dạng kem đặc",
      "Loại da phù hợp": "Da xỉn màu, da khô",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Thái Lan",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "8999999024567",
      "Phân phối tại Việt Nam": "Unilever Việt Nam",
    },
    "ingredients": [
      "Niacinamide – làm sáng da, giảm thâm",
      "Vitamin E – chống oxy hóa",
      "Retinol-C Complex – cải thiện sắc tố, giảm nếp nhăn",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. Sau khi rửa mặt và serum, lấy một lượng kem vừa đủ.
2. Chấm kem lên trán, má, mũi, cằm.
3. Thoa đều và massage nhẹ nhàng để kem thẩm thấu.
4. Sử dụng sáng và tối. Buổi sáng nên kết hợp thêm kem chống nắng.
5. Có thể dùng làm lớp khóa ẩm cuối cùng trong chu trình dưỡng da.
''',
  },
  {
    "id": "SP157",
    "name": "Mặt nạ Innisfree Super Volcanic Pore Clay",
    "brand": "Innisfree",
    "type": "mặt nạ",
    "originalPrice": 25000,
    "discountPrice": 22500,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 500,
    "image":
        "https://mint07.com/wp-content/uploads/2020/08/mat-na-innisfree-super-volcanic-pore-clay-mask-100ml-6.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Mặt nạ đất sét Innisfree Super Volcanic Pore Clay giúp làm sạch sâu, hút dầu thừa và se khít lỗ chân lông.",
    "specs": {
      "Dung tích": "20ml/túi",
      "Kết cấu": "Dạng kem đất sét",
      "Loại da phù hợp": "Da dầu, da hỗn hợp",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "88096473910234",
      "Phân phối tại Việt Nam": "Công ty TNHH Innisfree Việt Nam",
    },
    "ingredients": [
      "Jeju Volcanic Cluster – hút dầu thừa, làm sạch sâu",
      "Kaolin – hấp thụ bã nhờn",
      "Bentonite – loại bỏ tạp chất",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Green Tea Extract – chống oxy hóa",
    ],
    "usage": '''
1. Sau khi rửa mặt, thoa đều lớp mặt nạ lên da.
2. Tránh vùng mắt và môi.
3. Để yên 10–15 phút cho mặt nạ khô.
4. Rửa lại bằng nước sạch.
5. Sử dụng 2–3 lần/tuần để duy trì làn da sạch khỏe.
''',
  },
  {
    "id": "SP158",
    "name": "Sữa rửa mặt Clean & Clear Morning Energy",
    "brand": "Clean & Clear",
    "type": "sữa rửa mặt",
    "originalPrice": 65000,
    "discountPrice": 65000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 300,
    "image":
        "https://2momart.vn/photos/2momart/29052020/clean-and-clear-morning-energy-hieu-qua.jpg",
    "promotion": null,
    "description":
        "Sữa rửa mặt Clean & Clear Morning Energy giúp làm sạch bụi bẩn, dầu thừa và mang lại cảm giác tươi mát.",
    "specs": {
      "Dung tích": "100ml",
      "Kết cấu": "Dạng gel tạo bọt",
      "Loại da phù hợp": "Da dầu, da thường",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8999999012345",
      "Phân phối tại Việt Nam": "Johnson & Johnson Việt Nam",
    },
    "ingredients": [
      "Vitamin C – làm sáng da",
      "Glycerin – dưỡng ẩm",
      "Water – dung môi chính",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Menthol – tạo cảm giác mát lạnh",
    ],
    "usage": '''
1. Làm ướt da mặt bằng nước sạch.
2. Lấy một lượng gel vừa đủ ra tay.
3. Tạo bọt nhẹ nhàng với nước.
4. Massage lên mặt theo chuyển động tròn, tập trung vùng chữ T.
5. Rửa lại bằng nước sạch và lau khô bằng khăn mềm.
6. Sử dụng 2 lần/ngày (sáng và tối).
''',
  },
  {
    "id": "SP159",
    "name": "Kem chống nắng Sunplay Skin Aqua Tone Up",
    "brand": "Sunplay",
    "type": "chống nắng",
    "originalPrice": 145000,
    "discountPrice": 137750,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://beco.vn/wp-content/uploads/2019/09/Kem-Chong-Nang-Skin-Aqua-Tone-Up-UV-Essence-SPF50-PA-1.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Kem chống nắng Sunplay Skin Aqua Tone Up SPF50+ PA++++ bảo vệ da khỏi tia UVA/UVB, đồng thời nâng tông sáng tự nhiên.",
    "specs": {
      "Dung tích": "50g",
      "Kết cấu": "Dạng sữa lỏng nhẹ",
      "Loại da phù hợp": "Mọi loại da",
      "Chỉ số chống nắng": "SPF50+ PA++++",
      "Khả năng chống nước": "Có",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "4902431235678",
      "Phân phối tại Việt Nam": "Rohto Việt Nam",
    },
    "ingredients": [
      "Hyaluronic Acid – cấp ẩm sâu",
      "Vitamin C – làm sáng da",
      "UV Filters – bảo vệ da khỏi tia UVA/UVB",
      "Niacinamide – cải thiện sắc tố",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
    ],
    "usage": '''
1. Hoàn tất các bước dưỡng da cơ bản trước khi thoa kem chống nắng.
2. Lắc đều trước khi sử dụng.
3. Lấy một lượng vừa đủ, chấm lên trán, má, mũi, cằm.
4. Thoa đều và massage nhẹ nhàng, đừng quên vùng cổ và tai.
5. Thoa trước khi ra ngoài ít nhất 15–20 phút.
6. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng hoặc sau khi đổ mồ hôi/nước.
''',
  },
  {
    "id": "SP160",
    "name": "Tẩy trang Nivea Extra White MicellAIR",
    "brand": "Nivea",
    "type": "tẩy trang",
    "originalPrice": 135000,
    "discountPrice": 135000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 280,
    "image": "https://media.hcdn.vn/wysiwyg/Chau/nuoc-tay-trang-nivea-4.jpg",
    "promotion": null,
    "description":
        "Nước tẩy trang Nivea Extra White MicellAIR làm sạch lớp trang điểm và bụi bẩn, đồng thời dưỡng sáng da.",
    "specs": {
      "Dung tích": "400ml",
      "Kết cấu": "Dạng nước trong suốt",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Đức",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "4005900123456",
      "Phân phối tại Việt Nam": "Beiersdorf Việt Nam",
    },
    "ingredients": [
      "Micelle Technology – làm sạch sâu lớp trang điểm",
      "Pearl Extract – dưỡng sáng da",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Niacinamide – cải thiện sắc tố",
    ],
    "usage": '''
1. Thấm nước tẩy trang vào bông cotton sạch.
2. Lau nhẹ nhàng toàn mặt để loại bỏ lớp trang điểm và bụi bẩn.
3. Lặp lại cho đến khi bông sạch hoàn toàn.
4. Không cần rửa lại bằng nước, nhưng có thể rửa nếu muốn.
5. Sử dụng hàng ngày, sáng và tối.
''',
  },
  {
    "id": "SP161",
    "name": "Serum Rohto Melano CC Intensive Anti-Spot",
    "brand": "Rohto",
    "type": "serum",
    "originalPrice": 295000,
    "discountPrice": 295000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 150,
    "image": "https://nuty.vn/Data/Sites/1/Product/12352/cc-2.jpg",
    "promotion": "Tặng 1 mặt nạ",
    "description":
        "Serum Rohto Melano CC Intensive Anti-Spot chứa Vitamin C tinh khiết giúp làm sáng da, mờ thâm và đều màu da.",
    "specs": {
      "Dung tích": "20ml",
      "Kết cấu": "Dạng lỏng, thấm nhanh",
      "Loại da phù hợp": "Da xỉn màu, da có thâm",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "4987241145234",
      "Phân phối tại Việt Nam": "Rohto Việt Nam",
    },
    "ingredients": [
      "Vitamin C – làm sáng da, mờ thâm",
      "Vitamin E – chống oxy hóa",
      "Alpinia White Extract – cải thiện sắc tố",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy 2–3 giọt serum bằng ống nhỏ giọt.
2. Thoa đều lên mặt, tập trung vùng da thâm và xỉn màu.
3. Vỗ nhẹ để dưỡng chất thẩm thấu sâu.
4. Sử dụng sáng và tối. Buổi sáng nên kết hợp thêm kem chống nắng.
5. Dùng liên tục ít nhất 4 tuần để thấy hiệu quả rõ rệt.
''',
  },
  {
    "id": "SP162",
    "name": "Toner The Ordinary Salicylic Acid 2%",
    "brand": "The Ordinary",
    "type": "toner",
    "originalPrice": 295000,
    "discountPrice": 295000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://onepharma.vn/wp-content/uploads/2025/04/Serum-BHA-The-Ordinary-Salicylic-Acid-2-Solution-30ml-4.jpg",
    "promotion": null,
    "description":
        "Toner The Ordinary Salicylic Acid 2% giúp tẩy tế bào chết nhẹ nhàng, cải thiện kết cấu da và ngăn ngừa mụn.",
    "specs": {
      "Dung tích": "240ml",
      "Kết cấu": "Dạng lỏng",
      "Loại da phù hợp": "Da dầu, da mụn",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Canada",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "7699151905234",
      "Phân phối tại Việt Nam": "Deciem Việt Nam",
    },
    "ingredients": [
      "Salicylic Acid 2% – tẩy tế bào chết, giảm mụn",
      "Aloe Vera Extract – làm dịu da",
      "Ginseng Root Extract – chống oxy hóa",
      "Panthenol – phục hồi da",
      "Allantoin – giảm kích ứng",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. Sau khi rửa mặt, thấm toner vào bông cotton sạch.
2. Lau nhẹ nhàng toàn mặt, tránh vùng mắt và môi.
3. Vỗ nhẹ để dưỡng chất thẩm thấu.
4. Sử dụng buổi tối, tuần 2–3 lần để da làm quen.
5. Kết hợp với serum và kem dưỡng để tăng hiệu quả chăm sóc da.
''',
  },
  {
    "id": "SP163",
    "name": "Kem dưỡng Vaseline Gluta-Hya Dewy Radiance",
    "brand": "Vaseline",
    "type": "kem dưỡng",
    "originalPrice": 115000,
    "discountPrice": 103500,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 350,
    "image":
        "https://cocolux.com/storage/upload_image/images/sua-duong-the-vaseline-gluta-hya-serum-burst-uv-lotion-dewy-radiance-330ml.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Kem dưỡng Vaseline Gluta-Hya Dewy Radiance chứa Glutathione và Hyaluronic Acid giúp dưỡng sáng và cấp ẩm cho da.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dạng lotion mỏng nhẹ",
      "Loại da phù hợp": "Da thường, da khô",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Thái Lan",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "8851932375234",
      "Phân phối tại Việt Nam": "Unilever Việt Nam",
    },
    "ingredients": [
      "Glutathione – dưỡng sáng da",
      "Hyaluronic Acid – cấp ẩm sâu",
      "Niacinamide – cải thiện sắc tố",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Vitamin E – chống oxy hóa",
    ],
    "usage": '''
1. Sau khi tắm, lấy một lượng kem vừa đủ.
2. Thoa đều lên toàn thân, đặc biệt vùng da khô.
3. Massage nhẹ nhàng để kem thẩm thấu.
4. Sử dụng hàng ngày để đạt hiệu quả tốt nhất.
5. Kết hợp với sữa tắm Vaseline để tăng hiệu quả dưỡng sáng và cấp ẩm.
''',
  },
  {
    "id": "SP164",
    "name": "Mặt nạ Lush Cup O’ Coffee",
    "brand": "Lush",
    "type": "mặt nạ",
    "originalPrice": 420000,
    "discountPrice": 420000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 120,
    "image":
        "https://www.giaonhan247.com/wp-content/uploads/2022/07/Cup-O-Coffee-Face-and-Body-Mask-cua-Lush-min.jpg",
    "promotion": null,
    "description":
        "Mặt nạ Lush Cup O’ Coffee chứa chiết xuất cà phê và ca cao, giúp tẩy tế bào chết nhẹ nhàng và làm sáng da.",
    "specs": {
      "Dung tích": "150g",
      "Kết cấu": "Dạng kem có hạt scrub",
      "Loại da phù hợp": "Da dầu, da hỗn hợp",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Anh",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "5021234567890",
      "Phân phối tại Việt Nam": "Công ty TNHH Lush Việt Nam",
    },
    "ingredients": [
      "Coffee Powder – tẩy tế bào chết nhẹ nhàng",
      "Kaolin – hút dầu thừa, làm sạch sâu",
      "Cocoa Extract – chống oxy hóa, dưỡng sáng da",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Shea Butter – dưỡng mềm da",
    ],
    "usage": '''
1. Rửa mặt sạch bằng sữa rửa mặt, lau khô bằng khăn mềm.
2. Lấy một lượng mặt nạ vừa đủ, thoa đều lên toàn bộ khuôn mặt, tránh vùng mắt và môi.
3. Massage nhẹ nhàng trong 1–2 phút để các hạt cà phê loại bỏ tế bào chết.
4. Giữ nguyên mặt nạ trên da trong 10–15 phút để dưỡng chất thẩm thấu.
5. Rửa sạch lại bằng nước ấm, kết hợp massage nhẹ để da mềm mịn hơn.
6. Lau khô bằng khăn sạch và tiếp tục các bước dưỡng da sau đó.
7. Sử dụng 2–3 lần/tuần để duy trì làn da sáng khỏe, mịn màng.
''',
  },
  {
    "id": "SP165",
    "name": "Sữa rửa mặt Acnes Anti-Acne Cleanser",
    "brand": "Acnes",
    "type": "sữa rửa mặt",
    "originalPrice": 65000,
    "discountPrice": 65000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 500,
    "image":
        "https://file.hstatic.net/1000006063/file/acnes_creamy_wash_4_f599bb99b4724409aa3e74ee7cfecd82.jpg",
    "promotion": "Mua 2 tặng 1",
    "description":
        "Sữa rửa mặt Acnes Anti-Acne Cleanser giúp làm sạch bụi bẩn, dầu thừa và hỗ trợ ngăn ngừa mụn.",
    "specs": {
      "Dung tích": "100g",
      "Kết cấu": "Dạng kem tạo bọt",
      "Loại da phù hợp": "Da dầu, da mụn",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Việt Nam",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "8938505974234",
      "Phân phối tại Việt Nam": "Công ty TNHH Rohto-Mentholatum Việt Nam",
    },
    "ingredients": [
      "Salicylic Acid – làm sạch sâu, giảm mụn",
      "Vitamin C – chống oxy hóa, làm sáng da",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Tea Tree Oil – kháng khuẩn",
      "Niacinamide – cải thiện sắc tố",
    ],
    "usage": '''
1. Làm ướt da mặt bằng nước sạch.
2. Lấy một lượng kem rửa mặt vừa đủ ra lòng bàn tay, tạo bọt với nước.
3. Thoa đều và massage nhẹ nhàng lên mặt theo chuyển động tròn, tập trung vùng chữ T (trán, mũi, cằm).
4. Rửa sạch lại bằng nước mát để se khít lỗ chân lông.
5. Lau khô bằng khăn mềm, tiếp tục với toner và kem dưỡng.
6. Sử dụng 2 lần/ngày (sáng và tối) để đạt hiệu quả ngăn ngừa mụn tốt nhất.
''',
  },
  {
    "id": "SP166",
    "name": "Kem chống nắng Cell Fusion C Clear Sunscreen",
    "brand": "Cell Fusion C",
    "type": "chống nắng",
    "originalPrice": 395000,
    "discountPrice": 395000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 200,
    "image":
        "https://product.hstatic.net/200000692019/product/1_916db14b7d244ddcbff6aa38715f4fa7_master_e8f72495869944b48253ed9643885c96_master.jpg",
    "promotion": null,
    "description":
        "Kem chống nắng Cell Fusion C Clear Sunscreen SPF50+ PA++++ bảo vệ da khỏi tia UVA/UVB, dịu nhẹ cho da mụn.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng kem mỏng nhẹ",
      "Loại da phù hợp": "Da dầu, da mụn",
      "Chỉ số chống nắng": "SPF50+ PA++++",
      "Khả năng chống nước": "Có",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "88096473911234",
      "Phân phối tại Việt Nam": "Công ty TNHH Cell Fusion C Việt Nam",
    },
    "ingredients": [
      "Zinc Oxide – chống tia UVA/UVB",
      "Titanium Dioxide – bảo vệ da",
      "Centella Asiatica Extract – làm dịu, phục hồi da",
      "Niacinamide – cải thiện sắc tố",
      "Panthenol – dưỡng ẩm",
      "Allantoin – giảm kích ứng",
      "Vitamin E – chống oxy hóa",
    ],
    "usage": '''
1. Hoàn tất các bước dưỡng da cơ bản (toner, serum, kem dưỡng) trước khi thoa kem chống nắng.
2. Lấy một lượng kem vừa đủ, chấm lên các điểm chính trên mặt: trán, má, mũi, cằm.
3. Thoa đều và massage nhẹ nhàng để kem thẩm thấu, đừng quên vùng cổ và tai.
4. Thoa kem chống nắng ít nhất 15–20 phút trước khi ra ngoài để sản phẩm phát huy tác dụng.
5. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng hoặc sau khi đổ mồ hôi/nước.
6. Sử dụng hàng ngày để bảo vệ da tối ưu, kể cả khi trời râm hoặc ngồi trong phòng có ánh sáng mạnh.
''',
  },
  {
    "id": "SP167",
    "name": "Serum Innisfree Green Tea Seed",
    "brand": "Innisfree",
    "type": "serum",
    "originalPrice": 420000,
    "discountPrice": 378000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://www.innisfree.vn/static/upload/product/product/13_ID0101_4.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Serum Innisfree Green Tea Seed chứa chiết xuất trà xanh Jeju, giúp cấp ẩm sâu và làm dịu da.",
    "specs": {
      "Dung tích": "30ml",
      "Kết cấu": "Dạng lỏng, thấm nhanh",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8809647391670",
      "Phân phối tại Việt Nam": "Công ty TNHH Innisfree Việt Nam",
    },
    "ingredients": [
      "Green Tea Extract – chống oxy hóa, làm dịu da",
      "Panthenol – phục hồi da",
      "Glycerin – dưỡng ẩm",
      "Niacinamide – cải thiện sắc tố",
      "Allantoin – giảm kích ứng",
      "Betaine – giữ nước",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy 2–3 giọt serum bằng ống nhỏ giọt.
2. Chấm serum lên trán, má, cằm và cổ.
3. Thoa đều và vỗ nhẹ để dưỡng chất thẩm thấu sâu.
4. Sử dụng sáng và tối. Buổi sáng nên kết hợp thêm kem chống nắng.
5. Có thể dùng riêng hoặc kết hợp với các loại serum khác trong chu trình dưỡng da.
6. Dùng liên tục ít nhất 4 tuần để thấy hiệu quả rõ rệt.
''',
  },
  {
    "id": "SP168",
    "name": "Toner Cosrx AHA/BHA Clarifying Treatment",
    "brand": "Cosrx",
    "type": "toner",
    "originalPrice": 245000,
    "discountPrice": 245000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 220,
    "image":
        "https://product.hstatic.net/200000282419/product/4260_3835521bf4f8795dd4a66c1c4e29bd44_767d7be0f5974812ad68bb53866fe331_188bbc8fe77b4585a84a85fdb878e187.jpg",
    "promotion": null,
    "description":
        "Toner Cosrx AHA/BHA Clarifying Treatment giúp tẩy tế bào chết nhẹ nhàng, làm sạch da và ngăn ngừa mụn.",
    "specs": {
      "Dung tích": "150ml",
      "Kết cấu": "Dạng lỏng",
      "Loại da phù hợp": "Da dầu, da mụn",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "8809647391687",
      "Phân phối tại Việt Nam": "Công ty TNHH Cosrx Việt Nam",
    },
    "ingredients": [
      "AHA – tẩy tế bào chết bề mặt",
      "BHA – làm sạch sâu lỗ chân lông",
      "Mineral Water – cung cấp khoáng chất",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
      "Niacinamide – cải thiện sắc tố",
    ],
    "usage": '''
1. Sau khi rửa mặt, thấm toner vào bông cotton sạch.
2. Lau nhẹ nhàng toàn mặt, tránh vùng mắt và môi.
3. Vỗ nhẹ để dưỡng chất thẩm thấu.
4. Sử dụng buổi tối, tuần 2–3 lần để da làm quen.
5. Kết hợp với serum và kem dưỡng để tăng hiệu quả chăm sóc da.
''',
  },
  {
    "id": "SP169",
    "name": "Kem dưỡng SVR Sebiaclear Hydra",
    "brand": "SVR",
    "type": "kem dưỡng",
    "originalPrice": 395000,
    "discountPrice": 395000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 150,
    "image":
        "https://media.hcdn.vn/wysiwyg/Chau/kem-duong-am-svr-danh-cho-da-dau-mun-40ml-2_1.jpg",
    "promotion": "Tặng 1 sample",
    "description":
        "Kem dưỡng SVR Sebiaclear Hydra giúp cấp ẩm, làm dịu và phục hồi da sau điều trị mụn.",
    "specs": {
      "Dung tích": "40ml",
      "Kết cấu": "Dạng kem đặc",
      "Loại da phù hợp": "Da dầu, da mụn",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "3401340123169",
      "Phân phối tại Việt Nam": "Công ty TNHH SVR Việt Nam",
    },
    "ingredients": [
      "Niacinamide – làm sáng da, giảm viêm",
      "Ceramides – phục hồi hàng rào da",
      "Vitamin E – chống oxy hóa",
      "Panthenol – dưỡng ẩm, phục hồi",
      "Allantoin – làm dịu da",
      "Glycerin – cấp ẩm",
    ],
    "usage": '''
1. Sau khi rửa mặt và serum, lấy một lượng kem vừa đủ.
2. Chấm kem lên trán, má, mũi, cằm.
3. Thoa đều và massage nhẹ nhàng để kem thẩm thấu.
4. Sử dụng sáng và tối. Buổi sáng nên kết hợp thêm kem chống nắng.
5. Có thể dùng làm lớp khóa ẩm cuối cùng trong chu trình dưỡng da.
''',
  },
  {
    "id": "SP170",
    "name": "Mặt nạ Dr.Jart+ Cicapair Calming Mask",
    "brand": "Dr.Jart+",
    "type": "mặt nạ",
    "originalPrice": 32000,
    "discountPrice": 32000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 400,
    "image":
        "https://media.hcdn.vn/wysiwyg/HaNguyen/mat-na-dr-jart-lam-diu-ho-tro-phuc-hoi-da-nhay-cam-25g-1.jpg",
    "promotion": null,
    "description":
        "Mặt nạ Dr.Jart+ Cicapair Calming Mask chứa chiết xuất rau má, giúp làm dịu da và giảm kích ứng.",
    "specs": {
      "Dung tích": "25ml/túi",
      "Kết cấu": "Dạng giấy cotton thấm tinh chất",
      "Loại da phù hợp": "Da nhạy cảm, da mụn",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8809647391700",
      "Phân phối tại Việt Nam": "Công ty TNHH Dr.Jart+ Việt Nam",
    },
    "ingredients": [
      "Centella Asiatica Extract – làm dịu, phục hồi da",
      "Panthenol – dưỡng ẩm, phục hồi",
      "Glycerin – cấp ẩm",
      "Allantoin – giảm kích ứng",
      "Betaine – giữ nước",
    ],
    "usage": '''
1. Rửa mặt sạch bằng sữa rửa mặt.
2. Lấy mặt nạ ra khỏi túi và đắp lên mặt.
3. Căn chỉnh cho vừa vặn với đường nét gương mặt.
4. Thư giãn 15–20 phút.
5. Gỡ mặt nạ, vỗ nhẹ tinh chất còn lại để thẩm thấu.
6. Không cần rửa lại bằng nước, tiếp tục các bước dưỡng da sau đó.
''',
  },
  {
    "id": "SP171",
    "name": "Sữa rửa mặt La Roche-Posay Toleriane",
    "brand": "La Roche-Posay",
    "type": "sữa rửa mặt",
    "originalPrice": 295000,
    "discountPrice": 280250,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://maihan.vn/images/files/La-Roche-Posay-Toleriane-Dermo-Cleanser-Cleansing-Make-Up-Removal-Fluid-200ml4.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Sữa rửa mặt La Roche-Posay Toleriane giúp làm sạch nhẹ nhàng, duy trì độ ẩm và bảo vệ da nhạy cảm.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dạng gel tạo bọt nhẹ",
      "Loại da phù hợp": "Da nhạy cảm, da khô",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "3337872412345",
      "Phân phối tại Việt Nam": "Công ty TNHH La Roche-Posay Việt Nam",
    },
    "ingredients": [
      "La Roche-Posay Thermal Water – làm dịu da",
      "Glycerin – dưỡng ẩm",
      "Niacinamide – cải thiện sắc tố",
      "Panthenol – phục hồi da",
      "Allantoin – giảm kích ứng",
    ],
    "usage": '''
1. Làm ướt da mặt bằng nước sạch.
2. Lấy một lượng gel vừa đủ, tạo bọt nhẹ.
3. Massage nhẹ nhàng lên mặt theo chuyển động tròn.
4. Rửa lại bằng nước sạch và lau khô bằng khăn mềm.
5. Sử dụng sáng và tối để duy trì làn da khỏe mạnh.
''',
  },
  {
    "id": "SP172",
    "name": "Kem chống nắng The Ordinary SPF 30",
    "brand": "The Ordinary",
    "type": "chống nắng",
    "originalPrice": 310000,
    "discountPrice": 310000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 200,
    "image":
        "https://theordinaryvietnam.shop/wp-content/uploads/2021/07/5c4dd6fe4315d00f602ea5c0.jpg",
    "promotion": null,
    "description":
        "Kem chống nắng The Ordinary SPF 30 bảo vệ da khỏi tia UVA/UVB bằng bộ lọc khoáng, dịu nhẹ cho da nhạy cảm.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng kem mỏng nhẹ",
      "Loại da phù hợp": "Da nhạy cảm, da thường",
      "Chỉ số chống nắng": "SPF30 PA+++",
      "Khả năng chống nước": "Có",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Canada",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "7699151901720",
      "Phân phối tại Việt Nam": "Deciem Việt Nam",
    },
    "ingredients": [
      "Zinc Oxide – chống tia UVA/UVB",
      "Titanium Dioxide – bảo vệ da",
      "Antioxidants – chống oxy hóa",
      "Niacinamide – cải thiện sắc tố",
      "Panthenol – phục hồi da",
      "Allantoin – giảm kích ứng",
    ],
    "usage": '''
1. Hoàn tất các bước dưỡng da cơ bản trước khi thoa kem chống nắng.
2. Thoa đều lên mặt và cổ trước khi ra nắng 15–20 phút.
3. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng hoặc sau khi đổ mồ hôi/nước.
4. Sử dụng hàng ngày để bảo vệ da tối ưu.
''',
  },
  {
    "id": "SP173",
    "name": "Tẩy trang Garnier Micellar Rose Water",
    "brand": "Garnier",
    "type": "tẩy trang",
    "originalPrice": 155000,
    "discountPrice": 155000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 350,
    "image":
        "https://mint07.com/wp-content/uploads/2021/06/garnier-micellar-rose-water-cleaner-glow.jpg",
    "promotion": "Tặng 1 bông tẩy trang",
    "description":
        "Nước tẩy trang Garnier Micellar Rose Water làm sạch lớp trang điểm và bụi bẩn, đồng thời dưỡng ẩm cho da.",
    "specs": {
      "Dung tích": "400ml",
      "Kết cấu": "Dạng nước trong suốt",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "3600541234173",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oréal Việt Nam",
    },
    "ingredients": [
      "Micelle Technology – làm sạch sâu lớp trang điểm",
      "Rose Water – làm dịu và dưỡng ẩm da",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – giảm kích ứng",
    ],
    "usage": '''
1. Thấm nước tẩy trang vào bông cotton sạch.
2. Lau nhẹ nhàng toàn mặt để loại bỏ lớp trang điểm và bụi bẩn.
3. Lặp lại cho đến khi bông sạch hoàn toàn.
4. Không cần rửa lại bằng nước, nhưng có thể rửa nếu muốn.
5. Sử dụng hàng ngày, sáng và tối.
''',
  },
  {
    "id": "SP174",
    "name": "Serum Klairs Rich Moist Soothing",
    "brand": "Klairs",
    "type": "serum",
    "originalPrice": 295000,
    "discountPrice": 295000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 180,
    "image":
        "https://media.hasaki.vn/wysiwyg/HaNguyen/tinh-chat-klairs-duong-am-sau-cho-da-80ml-1.jpg",
    "promotion": null,
    "description":
        "Serum Klairs Rich Moist Soothing giúp cấp ẩm sâu, làm dịu da và cải thiện độ đàn hồi.",
    "specs": {
      "Dung tích": "30ml",
      "Kết cấu": "Dạng lỏng, thấm nhanh",
      "Loại da phù hợp": "Da khô, da nhạy cảm",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "8809115023174",
      "Phân phối tại Việt Nam": "Công ty TNHH Klairs Việt Nam",
    },
    "ingredients": [
      "Sodium Hyaluronate – cấp ẩm sâu",
      "Centella Asiatica Extract – làm dịu, phục hồi da",
      "Panthenol – dưỡng ẩm, phục hồi",
      "Allantoin – giảm kích ứng",
      "Betaine – giữ nước",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy 2–3 giọt serum bằng ống nhỏ giọt.
2. Chấm serum lên trán, má, cằm và cổ.
3. Thoa đều và vỗ nhẹ để dưỡng chất thẩm thấu sâu.
4. Sử dụng sáng và tối. Buổi sáng nên kết hợp thêm kem chống nắng.
5. Dùng liên tục ít nhất 4 tuần để thấy hiệu quả rõ rệt.
''',
  },
  {
    "id": "SP175",
    "name": "Toner Mamonde Chamomile Pure",
    "brand": "Mamonde",
    "type": "toner",
    "originalPrice": 215000,
    "discountPrice": 193500,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 250,
    "image":
        "https://media.hcdn.vn/wysiwyg/minhchau/nuoc-can-bang-mamonde-flower-story-2.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Toner Mamonde Chamomile Pure chứa chiết xuất hoa cúc, giúp làm dịu da và giảm kích ứng.",
    "specs": {
      "Dung tích": "250ml",
      "Kết cấu": "Dạng lỏng",
      "Loại da phù hợp": "Da nhạy cảm, da thường",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "8809535801750",
      "Phân phối tại Việt Nam": "Công ty TNHH AmorePacific Việt Nam",
    },
    "ingredients": [
      "Chamomile Extract – làm dịu da, giảm kích ứng",
      "Panthenol – phục hồi da",
      "Glycerin – dưỡng ẩm",
      "Allantoin – giảm kích ứng",
      "Betaine – giữ nước",
    ],
    "usage": '''
1. Sau khi rửa mặt, thấm toner vào bông cotton hoặc tay sạch.
2. Thoa đều lên mặt và cổ.
3. Vỗ nhẹ để dưỡng chất thẩm thấu.
4. Sử dụng sáng và tối trước serum/kem dưỡng.
5. Có thể dùng làm lotion mask bằng cách thấm toner vào bông cotton và đắp lên mặt 3–5 phút.
''',
  },
  {
    "id": "SP176",
    "name": "Kem dưỡng Neutrogena Rapid Wrinkle Repair",
    "brand": "Neutrogena",
    "type": "kem dưỡng",
    "originalPrice": 365000,
    "discountPrice": 365000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 180,
    "image":
        "https://wowmart.vn/wp-content/uploads/2019/04/kem-phuc-hoi-nep-nhan-neutrogena-rapid-wrinkle-repair-regenerating-cream-48g-030624-ka.jpg",
    "promotion": null,
    "description":
        "Kem dưỡng Neutrogena Rapid Wrinkle Repair giúp giảm nếp nhăn, làm sáng da và cải thiện độ đàn hồi.",
    "specs": {
      "Dung tích": "50g",
      "Kết cấu": "Dạng kem đặc",
      "Loại da phù hợp": "Da lão hóa, da khô",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "070501176000",
      "Phân phối tại Việt Nam": "Johnson & Johnson Việt Nam",
    },
    "ingredients": [
      "Retinol – giảm nếp nhăn, cải thiện sắc tố",
      "Hyaluronic Acid – cấp ẩm sâu",
      "Vitamin E – chống oxy hóa",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
    ],
    "usage": '''
1. Sau khi rửa mặt và serum, lấy một lượng kem vừa đủ.
2. Thoa đều lên mặt và cổ.
3. Sử dụng buổi tối để đạt hiệu quả tốt nhất.
4. Dùng liên tục ít nhất 4 tuần để thấy hiệu quả rõ rệt.
''',
  },
  {
    "id": "SP177",
    "name": "Mặt nạ Mediheal Collagen Impact",
    "brand": "Mediheal",
    "type": "mặt nạ",
    "originalPrice": 27000,
    "discountPrice": 27000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 600,
    "image":
        "https://media.hasaki.vn/wysiwyg/UyenKhanh/Mat-Na-Mediheal-Essential-Mask-25ml-9.jpg",
    "promotion": "Mua 10 tặng 2",
    "description":
        "Mặt nạ Mediheal Collagen Impact chứa Collagen thủy phân giúp tăng độ đàn hồi và săn chắc da.",
    "specs": {
      "Dung tích": "25ml/túi",
      "Kết cấu": "Dạng giấy cotton thấm tinh chất",
      "Loại da phù hợp": "Da lão hóa, da khô",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "8809472841770",
      "Phân phối tại Việt Nam": "Công ty TNHH Mediheal Việt Nam",
    },
    "ingredients": [
      "Hydrolyzed Collagen – tăng độ đàn hồi",
      "Elastin – cải thiện độ săn chắc",
      "Vitamin E – chống oxy hóa",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
    ],
    "usage": '''
1. Rửa mặt sạch bằng sữa rửa mặt.
2. Lấy mặt nạ ra khỏi túi và đắp lên mặt.
3. Căn chỉnh cho vừa vặn với đường nét gương mặt.
4. Thư giãn 15–20 phút.
5. Gỡ mặt nạ, vỗ nhẹ tinh chất còn lại để thẩm thấu.
6. Không cần rửa lại bằng nước, tiếp tục các bước dưỡng da sau đó.
''',
  },
  {
    "id": "SP178",
    "name": "Sữa rửa mặt CeraVe Hydrating Cleanser",
    "brand": "CeraVe",
    "type": "sữa rửa mặt",
    "originalPrice": 295000,
    "discountPrice": 295000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 250,
    "image":
        "https://media.hcdn.vn/wysiwyg/MaiQuynh/sua-rua-mat-cerave-sach-sau-5.jpg",
    "promotion": null,
    "description":
        "Sữa rửa mặt CeraVe Hydrating Cleanser giúp làm sạch nhẹ nhàng, cấp ẩm và phục hồi hàng rào bảo vệ da.",
    "specs": {
      "Dung tích": "236ml",
      "Kết cấu": "Dạng gel không tạo bọt nhiều",
      "Loại da phù hợp": "Da khô, da nhạy cảm",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "3600541234178",
      "Phân phối tại Việt Nam": "Johnson & Johnson Việt Nam",
    },
    "ingredients": [
      "Ceramides – phục hồi hàng rào da",
      "Hyaluronic Acid – cấp ẩm sâu",
      "Niacinamide – cải thiện sắc tố",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
    ],
    "usage": '''
1. Làm ướt da mặt bằng nước sạch.
2. Lấy một lượng vừa đủ, thoa đều lên mặt.
3. Massage nhẹ nhàng rồi rửa lại bằng nước sạch.
4. Sử dụng sáng và tối để duy trì làn da khỏe mạnh.
''',
  },
  {
    "id": "SP179",
    "name": "Kem chống nắng Biore UV Bright Milk",
    "brand": "Biore",
    "type": "chống nắng",
    "originalPrice": 165000,
    "discountPrice": 156750,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://media.hcdn.vn/wysiwyg/MaiQuynh/sua-chong-nang-biore-30ml-1.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Kem chống nắng Biore UV Bright Milk SPF50+ PA++++ bảo vệ da khỏi tia UVA/UVB, đồng thời nâng tông sáng tự nhiên.",
    "specs": {
      "Dung tích": "40ml",
      "Kết cấu": "Dạng sữa lỏng nhẹ",
      "Loại da phù hợp": "Mọi loại da",
      "Chỉ số chống nắng": "SPF50+ PA++++",
      "Khả năng chống nước": "Có",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "4902431790001",
      "Phân phối tại Việt Nam": "Kao Việt Nam",
    },
    "ingredients": [
      "UV Filters – bảo vệ da khỏi tia UVA/UVB",
      "Vitamin C – làm sáng da",
      "Hyaluronic Acid – cấp ẩm sâu",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
    ],
    "usage": '''
1. Lắc đều trước khi sử dụng.
2. Thoa đều lên mặt và cổ trước khi ra nắng 15–20 phút.
3. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng hoặc sau khi đổ mồ hôi/nước.
4. Sử dụng hàng ngày để bảo vệ da tối ưu.
''',
  },
  {
    "id": "SP180",
    "name": "Tẩy trang L’Oreal Micellar Water Refreshing",
    "brand": "L’Oreal",
    "type": "tẩy trang",
    "originalPrice": 145000,
    "discountPrice": 145000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 300,
    "image":
        "https://mint07.com/wp-content/uploads/2018/01/loreal-micellar-water.jpg",
    "promotion": null,
    "description":
        "Nước tẩy trang L’Oreal Micellar Water Refreshing làm sạch lớp trang điểm và bụi bẩn, mang lại cảm giác tươi mát.",
    "specs": {
      "Dung tích": "400ml",
      "Kết cấu": "Dạng nước trong suốt",
      "Loại da phù hợp": "Da thường, da hỗn hợp",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "3600541800001",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oréal Việt Nam",
    },
    "ingredients": [
      "Micelle Technology – làm sạch sâu lớp trang điểm",
      "Glycerin – dưỡng ẩm",
      "Aqua – dung môi chính",
      "Panthenol – phục hồi da",
      "Allantoin – giảm kích ứng",
    ],
    "usage": '''
1. Thấm nước tẩy trang vào bông cotton sạch.
2. Lau nhẹ nhàng toàn mặt để loại bỏ lớp trang điểm và bụi bẩn.
3. Lặp lại cho đến khi bông sạch hoàn toàn.
4. Không cần rửa lại bằng nước, nhưng có thể rửa nếu muốn.
5. Sử dụng hàng ngày, sáng và tối.
''',
  },
  {
    "id": "SP181",
    "name": "Serum The Inkey List Retinol",
    "brand": "The Inkey List",
    "type": "serum",
    "originalPrice": 295000,
    "discountPrice": 295000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://product.hstatic.net/200000261213/product/upload_e3d1bc02d25447c8a6a39c64b6e93c36_master.jpg",
    "promotion": "Tặng 1 mặt nạ",
    "description":
        "Serum The Inkey List Retinol giúp giảm nếp nhăn, cải thiện kết cấu da và làm sáng da.",
    "specs": {
      "Dung tích": "30ml",
      "Kết cấu": "Dạng lỏng, thấm nhanh",
      "Loại da phù hợp": "Da lão hóa, da khô",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Anh",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "5060422291810",
      "Phân phối tại Việt Nam": "Công ty TNHH The Inkey List Việt Nam",
    },
    "ingredients": [
      "Retinol – giảm nếp nhăn, cải thiện kết cấu da",
      "Squalane – dưỡng ẩm, phục hồi da",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy 2–3 giọt serum bằng ống nhỏ giọt.
2. Thoa đều lên mặt và cổ.
3. Sử dụng buổi tối, kết hợp kem chống nắng ban ngày.
4. Dùng liên tục ít nhất 4 tuần để thấy hiệu quả rõ rệt.
''',
  },
  {
    "id": "SP182",
    "name": "Toner Thayers Cucumber",
    "brand": "Thayers",
    "type": "toner",
    "originalPrice": 230000,
    "discountPrice": 230000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 280,
    "image":
        "https://pnstore.vn/Content/ckfinder/userfiles/images/MY%20PHAM/thayers%20(15).jpg",
    "promotion": null,
    "description":
        "Toner Thayers Cucumber chứa chiết xuất dưa leo và lô hội, giúp cân bằng da, cấp ẩm và làm dịu da.",
    "specs": {
      "Dung tích": "355ml",
      "Kết cấu": "Dạng lỏng, mùi hương dưa leo dịu nhẹ",
      "Loại da phù hợp": "Mọi loại da, đặc biệt da nhạy cảm",
      "Không chứa cồn": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "041507065182",
      "Phân phối tại Việt Nam": "Công ty TNHH Thayers Việt Nam",
    },
    "ingredients": [
      "Cucumber Extract – làm dịu da",
      "Aloe Vera – cấp ẩm, phục hồi",
      "Witch Hazel – se khít lỗ chân lông",
      "Panthenol – dưỡng ẩm",
      "Allantoin – giảm kích ứng",
    ],
    "usage": '''
1. Sau khi rửa mặt, thấm toner vào bông cotton hoặc tay sạch.
2. Thoa đều lên mặt và cổ.
3. Vỗ nhẹ để dưỡng chất thẩm thấu.
4. Sử dụng sáng và tối trước serum/kem dưỡng.
''',
  },
  {
    "id": "SP183",
    "name": "Kem dưỡng Cetaphil Daily Hydrating Lotion",
    "brand": "Cetaphil",
    "type": "kem dưỡng",
    "originalPrice": 295000,
    "discountPrice": 265500,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://wowmart.vn/wp-content/uploads/2017/03/bo-san-pham-duong-da-cetaphil-moisture-lotion-knj.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Kem dưỡng Cetaphil Daily Hydrating Lotion chứa Hyaluronic Acid giúp cấp ẩm sâu và duy trì độ ẩm lâu dài.",
    "specs": {
      "Dung tích": "100ml",
      "Kết cấu": "Dạng lotion mỏng nhẹ",
      "Loại da phù hợp": "Da khô, da thường",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Canada",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "3499320011830",
      "Phân phối tại Việt Nam": "Galderma Việt Nam",
    },
    "ingredients": [
      "Hyaluronic Acid – cấp ẩm sâu",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Niacinamide – cải thiện sắc tố",
      "Allantoin – làm dịu da",
    ],
    "usage": '''
1. Sau khi rửa mặt và serum, lấy một lượng lotion vừa đủ.
2. Thoa đều lên mặt và cổ.
3. Sử dụng sáng và tối.
4. Có thể dùng làm lớp khóa ẩm cuối cùng trong chu trình dưỡng da.
''',
  },
  {
    "id": "SP184",
    "name": "Mặt nạ Naruko Raw Job’s Tears",
    "brand": "Naruko",
    "type": "mặt nạ",
    "originalPrice": 29000,
    "discountPrice": 29000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 500,
    "image":
        "https://media.hcdn.vn/wysiwyg/Chau/mat-na-naruko-duong-da-chuyen-sau-25ml-1.jpg",
    "promotion": null,
    "description":
        "Mặt nạ Naruko Raw Job’s Tears chứa chiết xuất ý dĩ, giúp dưỡng sáng da, cấp ẩm và làm đều màu da.",
    "specs": {
      "Dung tích": "25ml/túi",
      "Kết cấu": "Dạng giấy cotton thấm tinh chất",
      "Loại da phù hợp": "Da xỉn màu, da khô",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Đài Loan",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "4710901234184",
      "Phân phối tại Việt Nam": "Công ty TNHH Naruko Việt Nam",
    },
    "ingredients": [
      "Job’s Tears Extract – dưỡng sáng da",
      "Niacinamide – cải thiện sắc tố",
      "Hyaluronic Acid – cấp ẩm sâu",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
    ],
    "usage": '''
1. Rửa mặt sạch bằng sữa rửa mặt.
2. Lấy mặt nạ ra khỏi túi và đắp lên mặt.
3. Thư giãn 15–20 phút.
4. Gỡ mặt nạ, vỗ nhẹ tinh chất còn lại để thẩm thấu.
5. Không cần rửa lại bằng nước, tiếp tục các bước dưỡng da sau đó.
''',
  },
  {
    "id": "SP185",
    "name": "Sữa rửa mặt Senka Speedy Perfect Whip",
    "brand": "Senka",
    "type": "sữa rửa mặt",
    "originalPrice": 95000,
    "discountPrice": 95000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 500,
    "image":
        "https://media.hcdn.vn/wysiwyg/kimhuy/sua-rua-mat-senka-dang-bot-danh-cho-da-dau-150ml-2.jpg",
    "promotion": "Mua 2 tặng 1",
    "description":
        "Sữa rửa mặt Senka Speedy Perfect Whip tạo bọt mịn, làm sạch sâu và giữ ẩm cho da.",
    "specs": {
      "Dung tích": "100g",
      "Kết cấu": "Dạng kem tạo bọt",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "4901872461850",
      "Phân phối tại Việt Nam": "Công ty TNHH Shiseido Việt Nam",
    },
    "ingredients": [
      "Silk Essence – dưỡng mềm da",
      "Double Hyaluronic Acid – cấp ẩm sâu",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
    ],
    "usage": '''
1. Làm ướt da mặt bằng nước sạch.
2. Lấy một lượng vừa đủ, tạo bọt với nước.
3. Massage nhẹ nhàng lên mặt.
4. Rửa lại bằng nước sạch.
5. Sử dụng sáng và tối để duy trì làn da sạch khỏe.
''',
  },
  {
    "id": "SP186",
    "name": "Kem chống nắng Vichy Capital Soleil SPF50",
    "brand": "Vichy",
    "type": "chống nắng",
    "originalPrice": 420000,
    "discountPrice": 420000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 200,
    "image":
        "https://media.hcdn.vn/wysiwyg/MaiQuynh/kem-chong-nang-vichy-capital-soleil-50ml-3.jpg",
    "promotion": null,
    "description":
        "Kem chống nắng Vichy Capital Soleil SPF50 PA++++ bảo vệ da khỏi tia UVA/UVB, đồng thời cấp ẩm nhẹ.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng kem mỏng nhẹ",
      "Loại da phù hợp": "Mọi loại da",
      "Chỉ số chống nắng": "SPF50+ PA++++",
      "Khả năng chống nước": "Có",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "3337875586186",
      "Phân phối tại Việt Nam": "Công ty TNHH Vichy Việt Nam",
    },
    "ingredients": [
      "Mexoryl XL – chống tia UVA/UVB",
      "Vitamin E – chống oxy hóa",
      "Vichy Mineralizing Water – cấp khoáng chất",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
    ],
    "usage": '''
1. Hoàn tất các bước dưỡng da cơ bản trước khi thoa kem chống nắng.
2. Thoa đều lên mặt và cổ trước khi ra nắng 15–20 phút.
3. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng hoặc sau khi đổ mồ hôi/nước.
4. Sử dụng hàng ngày để bảo vệ da tối ưu.
''',
  },
  {
    "id": "SP187",
    "name": "Serum Kiehl’s Hydro-Plumping Re-Texturizing",
    "brand": "Kiehl’s",
    "type": "serum",
    "originalPrice": 890000,
    "discountPrice": 890000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 150,
    "image":
        "https://filebroker-cdn.lazada.vn/kf/Scbea361de03b4703a39966c9b317d85dl.jpg_340x340q80.jpg",
    "promotion": "Tặng 1 mặt nạ",
    "description":
        "Serum Kiehl’s Hydro-Plumping Re-Texturizing giúp cấp ẩm sâu, làm da căng mịn và cải thiện kết cấu da.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng gel lỏng",
      "Loại da phù hợp": "Da khô, da lão hóa",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "3605971870001",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oréal Việt Nam",
    },
    "ingredients": [
      "Glycerin – dưỡng ẩm",
      "Plant-Based Extracts – cải thiện kết cấu da",
      "Hyaluronic Acid – cấp ẩm sâu",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy 2–3 giọt serum bằng ống nhỏ giọt.
2. Thoa đều lên mặt và cổ.
3. Sử dụng sáng và tối.
4. Buổi sáng nên kết hợp thêm kem chống nắng để bảo vệ da.
''',
  },
  {
    "id": "SP188",
    "name": "Toner Benton Honest TT Mist",
    "brand": "Benton",
    "type": "toner",
    "originalPrice": 210000,
    "discountPrice": 210000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 200,
    "image": "https://i.ytimg.com/vi/odbuy8TbrrI/maxresdefault.jpg",
    "promotion": null,
    "description":
        "Toner Benton Honest TT Mist chứa chiết xuất trà xanh và tràm trà, giúp làm dịu và cân bằng da.",
    "specs": {
      "Dung tích": "120ml",
      "Kết cấu": "Dạng xịt lỏng",
      "Loại da phù hợp": "Da dầu, da mụn",
      "Không chứa cồn": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "8809562388188",
      "Phân phối tại Việt Nam": "Công ty TNHH Benton Việt Nam",
    },
    "ingredients": [
      "Tea Tree Extract – kháng khuẩn, giảm mụn",
      "Green Tea Extract – chống oxy hóa, làm dịu da",
      "Panthenol – phục hồi da",
      "Allantoin – giảm kích ứng",
      "Glycerin – dưỡng ẩm",
    ],
    "usage": '''
1. Sau khi rửa mặt, xịt toner trực tiếp lên mặt hoặc thấm vào bông cotton.
2. Vỗ nhẹ để dưỡng chất thẩm thấu.
3. Sử dụng sáng và tối.
''',
  },
  {
    "id": "SP189",
    "name": "Kem dưỡng L’Oreal Paris White Perfect",
    "brand": "L’Oreal",
    "type": "kem dưỡng",
    "originalPrice": 495000,
    "discountPrice": 445500,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://media.hcdn.vn/wysiwyg/Chau/kem-duong-sang-da-giam-tham-nam-chuyen-sau-l-oreal-paris-50ml-5_1.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Kem dưỡng L’Oreal Paris White Perfect giúp dưỡng sáng da, mờ thâm nám và đều màu da.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng kem đặc",
      "Loại da phù hợp": "Da xỉn màu, da khô",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "3600521890001",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oréal Việt Nam",
    },
    "ingredients": [
      "Vitamin C – làm sáng da",
      "Niacinamide – cải thiện sắc tố",
      "Pro-Vitamin B3 – dưỡng sáng, đều màu da",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
    ],
    "usage": '''
1. Sau khi rửa mặt và serum, lấy một lượng kem vừa đủ.
2. Thoa đều lên mặt và cổ.
3. Sử dụng sáng và tối.
4. Buổi sáng nên kết hợp thêm kem chống nắng để bảo vệ da.
''',
  },
  {
    "id": "SP190",
    "name": "Mặt nạ Laneige Water Sleeping Mask Lavender",
    "brand": "Laneige",
    "type": "mặt nạ",
    "originalPrice": 420000,
    "discountPrice": 420000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 220,
    "image":
        "https://cdn.chiaki.vn/unsafe/0x480/left/top/smart/filters:quality(75)/https://chiaki.vn/upload/news/content/2020/10/mat-na-ngu-laneige-water-sleeping-mask-lavender-jpg-1603704492-26102020162812.jpg",
    "promotion": null,
    "description":
        "Mặt nạ ngủ Laneige Water Sleeping Mask Lavender giúp cấp ẩm sâu, làm dịu và phục hồi da trong khi ngủ.",
    "specs": {
      "Dung tích": "70ml",
      "Kết cấu": "Dạng gel mịn nhẹ",
      "Loại da phù hợp": "Da khô, da thường",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "8809641900001",
      "Phân phối tại Việt Nam": "Công ty TNHH Laneige Việt Nam",
    },
    "ingredients": [
      "Lavender Extract – làm dịu da, thư giãn",
      "Hyaluronic Acid – cấp ẩm sâu",
      "Beta-Glucan – phục hồi da",
      "Panthenol – dưỡng ẩm",
      "Allantoin – giảm kích ứng",
    ],
    "usage": '''
1. Sau các bước dưỡng da buổi tối, lấy một lượng vừa đủ.
2. Thoa đều lên mặt, tránh vùng mắt và môi.
3. Để qua đêm, sáng hôm sau rửa lại bằng nước sạch.
4. Sử dụng 2–3 lần/tuần để đạt hiệu quả tốt nhất.
''',
  },
  {
    "id": "SP191",
    "name": "Sữa rửa mặt Bioderma Sensibio Gel Moussant",
    "brand": "Bioderma",
    "type": "sữa rửa mặt",
    "originalPrice": 265000,
    "discountPrice": 265000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 250,
    "image":
        "https://product.hstatic.net/200000150709/product/3401381507565-content2_be7e24c4097741a2bbc88cb804b7d493_1024x1024.jpg",
    "promotion": "Tặng 1 khăn lau mặt",
    "description":
        "Sữa rửa mặt Bioderma Sensibio Gel Moussant làm sạch nhẹ nhàng, duy trì độ ẩm và bảo vệ da nhạy cảm.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dạng gel tạo bọt nhẹ",
      "Loại da phù hợp": "Da nhạy cảm, da khô",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "3401341910001",
      "Phân phối tại Việt Nam": "Công ty TNHH Bioderma Việt Nam",
    },
    "ingredients": [
      "Coco-Glucoside – chất làm sạch dịu nhẹ",
      "Glycerin – dưỡng ẩm",
      "Niacinamide – cải thiện sắc tố",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
    ],
    "usage": '''
1. Làm ướt da mặt bằng nước sạch.
2. Lấy một lượng gel vừa đủ, tạo bọt nhẹ.
3. Massage nhẹ nhàng lên mặt.
4. Rửa lại bằng nước sạch.
5. Sử dụng sáng và tối để duy trì làn da khỏe mạnh.
''',
  },
  {
    "id": "SP192",
    "name": "Kem chống nắng Anessa Perfect UV Mild Milk",
    "brand": "Anessa",
    "type": "chống nắng",
    "originalPrice": 495000,
    "discountPrice": 470250,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://file.hstatic.net/1000360941/file/a6_609feba115f54a1ba6f75c4acb13d3dc.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Kem chống nắng Anessa Perfect UV Mild Milk SPF50+ PA++++ bảo vệ da khỏi tia UVA/UVB, dịu nhẹ cho da nhạy cảm.",
    "specs": {
      "Dung tích": "60ml",
      "Kết cấu": "Dạng sữa lỏng nhẹ",
      "Loại da phù hợp": "Da nhạy cảm, da thường",
      "Chỉ số chống nắng": "SPF50+ PA++++",
      "Khả năng chống nước": "Có",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "4901872951920",
      "Phân phối tại Việt Nam": "Shiseido Việt Nam",
    },
    "ingredients": [
      "Zinc Oxide – chống tia UVA/UVB",
      "Titanium Dioxide – bảo vệ da",
      "Hyaluronic Acid – cấp ẩm sâu",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
    ],
    "usage": '''
1. Lắc đều trước khi sử dụng.
2. Thoa đều lên mặt và cổ trước khi ra nắng 15–20 phút.
3. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng hoặc sau khi đổ mồ hôi/nước.
4. Sử dụng hàng ngày để bảo vệ da tối ưu.
''',
  },
  {
    "id": "SP193",
    "name": "Serum Kiehl’s Midnight Recovery Concentrate",
    "brand": "Kiehl’s",
    "type": "serum",
    "originalPrice": 890000,
    "discountPrice": 890000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 150,
    "image":
        "https://shophanguc.net/wp-content/uploads/2021/05/184710311_876801269716166_3918402218771237841_n.jpg",
    "promotion": "Tặng 1 mặt nạ",
    "description":
        "Serum Kiehl’s Midnight Recovery Concentrate chứa tinh dầu thực vật giúp phục hồi da qua đêm, mang lại làn da mịn màng.",
    "specs": {
      "Dung tích": "30ml",
      "Kết cấu": "Dạng dầu nhẹ",
      "Loại da phù hợp": "Da khô, da lão hóa",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "3605971930001",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oréal Việt Nam",
    },
    "ingredients": [
      "Lavender Essential Oil – làm dịu da, thư giãn",
      "Evening Primrose Oil – phục hồi da",
      "Squalane – dưỡng ẩm, cải thiện kết cấu da",
      "Vitamin E – chống oxy hóa",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, nhỏ 2–3 giọt serum bằng ống nhỏ giọt.
2. Thoa đều lên mặt và cổ.
3. Sử dụng buổi tối trước khi đi ngủ.
4. Dùng liên tục ít nhất 4 tuần để thấy hiệu quả rõ rệt.
''',
  },
  {
    "id": "SP194",
    "name": "Toner Benton Aloe BHA",
    "brand": "Benton",
    "type": "toner",
    "originalPrice": 210000,
    "discountPrice": 210000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 220,
    "image":
        "https://m.media-amazon.com/images/I/81mKY8w+49L._AC_UF350,350_QL80_.jpg",
    "promotion": null,
    "description":
        "Toner Benton Aloe BHA chứa chiết xuất lô hội và BHA, giúp làm dịu da, tẩy tế bào chết nhẹ nhàng và ngăn ngừa mụn.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dạng lỏng",
      "Loại da phù hợp": "Da dầu, da mụn",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "8809562388194",
      "Phân phối tại Việt Nam": "Công ty TNHH Benton Việt Nam",
    },
    "ingredients": [
      "Aloe Vera Extract – làm dịu da, cấp ẩm",
      "Salicylic Acid – tẩy tế bào chết, giảm mụn",
      "Snail Secretion Filtrate – phục hồi da",
      "Panthenol – dưỡng ẩm, phục hồi",
      "Allantoin – giảm kích ứng",
    ],
    "usage": '''
1. Sau khi rửa mặt, thấm toner vào bông cotton.
2. Lau nhẹ nhàng toàn mặt, tránh vùng mắt.
3. Vỗ nhẹ để dưỡng chất thẩm thấu.
4. Sử dụng sáng và tối.
''',
  },
  {
    "id": "SP195",
    "name": "Kem dưỡng L’Oreal Paris Age Perfect",
    "brand": "L’Oreal",
    "type": "kem dưỡng",
    "originalPrice": 495000,
    "discountPrice": 445500,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://wowmart.vn/wp-content/uploads/2023/05/kem-duong-da-ngay-loreal-paris-age-perfect-cell-renewal-anti-aging-moisturizer-spf25-48g-ke.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Kem dưỡng L’Oreal Paris Age Perfect giúp chống lão hóa, làm săn chắc da và giảm nếp nhăn.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng kem đặc",
      "Loại da phù hợp": "Da lão hóa, da khô",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "3600521950001",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oréal Việt Nam",
    },
    "ingredients": [
      "Pro-Retinol A – chống lão hóa, giảm nếp nhăn",
      "Vitamin B3 – cải thiện sắc tố",
      "Vitamin E – chống oxy hóa",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
    ],
    "usage": '''
1. Sau khi rửa mặt và serum, lấy một lượng kem vừa đủ.
2. Thoa đều lên mặt và cổ.
3. Massage nhẹ nhàng để kem thẩm thấu.
4. Sử dụng sáng và tối.
''',
  },
  {
    "id": "SP196",
    "name": "Mặt nạ Laneige Water Sleeping Mask Lavender",
    "brand": "Laneige",
    "type": "mặt nạ",
    "originalPrice": 420000,
    "discountPrice": 420000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 200,
    "image":
        "https://laskin.vn/wp-content/uploads/2022/10/mat-na-ngu-laneige-duong-am-tang-3.jpg",
    "promotion": null,
    "description":
        "Mặt nạ ngủ Laneige Water Sleeping Mask Lavender giúp cấp ẩm sâu, làm dịu và phục hồi da trong khi ngủ.",
    "specs": {
      "Dung tích": "70ml",
      "Kết cấu": "Dạng gel mịn nhẹ",
      "Loại da phù hợp": "Da khô, da thường",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "8809641960001",
      "Phân phối tại Việt Nam": "Công ty TNHH Laneige Việt Nam",
    },
    "ingredients": [
      "Lavender Extract – làm dịu da, thư giãn",
      "Hyaluronic Acid – cấp ẩm sâu",
      "Beta-Glucan – phục hồi da",
      "Panthenol – dưỡng ẩm",
      "Allantoin – giảm kích ứng",
    ],
    "usage": '''
1. Sau các bước dưỡng da buổi tối, lấy một lượng vừa đủ.
2. Thoa đều lên mặt, tránh vùng mắt và môi.
3. Để qua đêm, sáng hôm sau rửa lại bằng nước sạch.
4. Sử dụng 2–3 lần/tuần để đạt hiệu quả tốt nhất.
''',
  },
  {
    "id": "SP197",
    "name": "Sữa rửa mặt Bioderma Sensibio Gel Moussant",
    "brand": "Bioderma",
    "type": "sữa rửa mặt",
    "originalPrice": 265000,
    "discountPrice": 265000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 240,
    "image":
        "https://media.hcdn.vn/wysiwyg/Chau/gel-rua-mat-bioderma-danh-cho-da-dau-hon-hop-2.jpg",
    "promotion": "Tặng 1 khăn lau mặt",
    "description":
        "Sữa rửa mặt Bioderma Sensibio Gel Moussant làm sạch nhẹ nhàng, duy trì độ ẩm và bảo vệ da nhạy cảm.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dạng gel tạo bọt nhẹ",
      "Loại da phù hợp": "Da nhạy cảm, da khô",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "3401341970001",
      "Phân phối tại Việt Nam": "Công ty TNHH Bioderma Việt Nam",
    },
    "ingredients": [
      "Coco-Glucoside – chất làm sạch dịu nhẹ",
      "Glycerin – dưỡng ẩm",
      "Niacinamide – cải thiện sắc tố",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
    ],
    "usage": '''
1. Làm ướt da mặt bằng nước sạch.
2. Lấy một lượng gel vừa đủ ra lòng bàn tay.
3. Tạo bọt nhẹ nhàng với nước để gel chuyển thành lớp bọt mịn.
4. Massage đều lên mặt theo chuyển động tròn, tập trung vùng chữ T (trán, mũi, cằm).
5. Rửa lại bằng nước sạch và lau khô bằng khăn mềm.
6. Sử dụng sáng và tối để duy trì làn da sạch khỏe.
7. Kết hợp với toner và kem dưỡng để đạt hiệu quả chăm sóc da tối ưu.
''',
  },
  {
    "id": "SP198",
    "name": "Kem chống nắng Anessa Perfect UV Sunscreen Aqua Booster",
    "brand": "Anessa",
    "type": "chống nắng",
    "originalPrice": 495000,
    "discountPrice": 470250,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image": "https://file.hstatic.net/200000833669/file/y39hq9177l.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Kem chống nắng Anessa Perfect UV Sunscreen Aqua Booster SPF50+ PA++++ bảo vệ da tối ưu, chống trôi khi tiếp xúc nước.",
    "specs": {
      "Dung tích": "60ml",
      "Kết cấu": "Dạng sữa lỏng nhẹ",
      "Loại da phù hợp": "Mọi loại da",
      "Chỉ số chống nắng": "SPF50+ PA++++",
      "Khả năng chống nước": "Có",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "4901872951980",
      "Phân phối tại Việt Nam": "Shiseido Việt Nam",
    },
    "ingredients": [
      "Zinc Oxide – chống tia UVA/UVB",
      "Titanium Dioxide – bảo vệ da",
      "Aqua Booster Technology – chống trôi khi tiếp xúc nước",
      "Hyaluronic Acid – cấp ẩm sâu",
      "Vitamin E – chống oxy hóa",
    ],
    "usage": '''
1. Lắc đều chai trước khi sử dụng để dung dịch hòa trộn đều.
2. Hoàn tất các bước dưỡng da cơ bản trước khi thoa kem chống nắng.
3. Lấy một lượng vừa đủ, chấm lên trán, má, mũi, cằm.
4. Thoa đều và massage nhẹ nhàng, đừng quên vùng cổ và tai.
5. Thoa kem chống nắng ít nhất 15–20 phút trước khi ra ngoài.
6. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng hoặc sau khi đổ mồ hôi/nước.
7. Sử dụng hàng ngày để bảo vệ da tối ưu, kể cả khi trời râm hoặc ngồi trong phòng có ánh sáng mạnh.
''',
  },
  {
    "id": "SP199",
    "name": "Tẩy trang L’Oreal Micellar Water Deep Cleansing",
    "brand": "L’Oreal",
    "type": "tẩy trang",
    "originalPrice": 145000,
    "discountPrice": 145000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 300,
    "image":
        "https://product.hstatic.net/200000551679/product/sg-11134201-22110-nj2ykt0levjvdf_58c201b893554780908e55c7625075a0_1024x1024.jpg",
    "promotion": null,
    "description":
        "Nước tẩy trang L’Oreal Micellar Water Deep Cleansing làm sạch lớp trang điểm đậm và bụi bẩn, dịu nhẹ cho da.",
    "specs": {
      "Dung tích": "400ml",
      "Kết cấu": "Dạng nước trong suốt",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa cồn": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "3600521990001",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oréal Việt Nam",
    },
    "ingredients": [
      "Micelle Technology – làm sạch sâu lớp trang điểm",
      "Glycerin – dưỡng ẩm",
      "Aqua – dung môi chính",
      "Panthenol – phục hồi da",
      "Allantoin – giảm kích ứng",
    ],
    "usage": '''
1. Thấm nước tẩy trang vào bông cotton sạch.
2. Lau nhẹ nhàng toàn mặt để loại bỏ lớp trang điểm và bụi bẩn.
3. Lặp lại cho đến khi bông sạch hoàn toàn.
4. Không cần rửa lại bằng nước, nhưng có thể rửa nếu muốn.
5. Sử dụng hàng ngày, sáng và tối để duy trì làn da sạch khỏe.
''',
  },
  {
    "id": "SP200",
    "name": "Serum The Inkey List Caffeine Eye Cream",
    "brand": "The Inkey List",
    "type": "serum",
    "originalPrice": 295000,
    "discountPrice": 295000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://product.hstatic.net/200000205129/product/caffeineeye_1600x_crop_center_92bb3674016b4541bcdf3943bda84c87_master.jpg",
    "promotion": "Tặng 1 mặt nạ",
    "description":
        "Serum The Inkey List Caffeine Eye Cream giúp giảm bọng mắt, quầng thâm và làm sáng vùng da quanh mắt.",
    "specs": {
      "Dung tích": "15ml",
      "Kết cấu": "Dạng kem lỏng",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Anh",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "5060422292000",
      "Phân phối tại Việt Nam": "Công ty TNHH The Inkey List Việt Nam",
    },
    "ingredients": [
      "Caffeine – giảm bọng mắt, quầng thâm",
      "Matrixyl 3000 – chống lão hóa, làm mờ nếp nhăn",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi da",
      "Allantoin – làm dịu da",
    ],
    "usage": '''
1. Sau khi rửa mặt và toner, lấy một lượng nhỏ bằng hạt đậu.
2. Thoa nhẹ nhàng quanh vùng mắt, tránh tiếp xúc trực tiếp với mắt.
3. Vỗ nhẹ bằng đầu ngón tay để dưỡng chất thẩm thấu tốt hơn.
4. Sử dụng sáng và tối đều đặn.
5. Buổi sáng nên kết hợp thêm kem chống nắng để bảo vệ vùng da mắt.
''',
  },
  {
    "id": "SP201",
    "name": "Son môi MAC Matte Lipstick",
    "brand": "MAC",
    "type": "son",
    "category": "Makeup",
    "originalPrice": 520000,
    "discountPrice": 468000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 300,
    "image":
        "https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2024/06/son-mac-macximal-silky-matte-lipstick-616-taupe-mau-cam-dat-1-jpg-1719384594-26062024134954.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Son MAC Matte Lipstick với chất son lì, màu sắc bền lâu và độ che phủ cao.",
    "specs": {
      "Trọng lượng": "3g",
      "Kết cấu": "Son lì",
      "Loại da phù hợp": "Mọi loại da môi",
      "Không chứa chì": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "7736022010001",
      "Phân phối tại Việt Nam": "Estée Lauder Việt Nam",
    },
    "ingredients": [
      "Wax Blend – tạo độ bám và kết cấu",
      "Pigments – tạo màu sắc bền lâu",
      "Vitamin E – chống oxy hóa, dưỡng môi",
      "Shea Butter – dưỡng mềm môi",
      "Jojoba Oil – cấp ẩm",
    ],
    "usage": '''
1. Thoa trực tiếp son lên môi từ giữa môi ra ngoài.
2. Có thể dùng cọ môi để tạo đường viền sắc nét.
3. Kết hợp dưỡng môi trước để môi mềm mịn, tránh khô nứt.
4. Để màu son bền lâu hơn, có thể phủ một lớp phấn mỏng lên môi trước khi thoa son.
5. Tẩy trang môi kỹ vào cuối ngày để tránh thâm môi.
''',
  },
  {
    "id": "SP202",
    "name": "Phấn phủ Maybelline Fit Me",
    "brand": "Maybelline",
    "type": "phấn phủ",
    "category": "Makeup",
    "originalPrice": 230000,
    "discountPrice": 230000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 250,
    "image":
        "https://file.hstatic.net/200000551679/file/vn-11134201-7qukw-linu1kxkf5xu9e_4df93da216b041d38d58eb41261792ec_1024x1024.jpg",
    "promotion": null,
    "description":
        "Phấn phủ Maybelline Fit Me giúp kiểm soát dầu, che phủ khuyết điểm và mang lại lớp nền tự nhiên.",
    "specs": {
      "Trọng lượng": "20g",
      "Kết cấu": "Phấn nén",
      "Loại da phù hợp": "Da dầu, da hỗn hợp",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "3600532020001",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oréal Việt Nam",
    },
    "ingredients": [
      "Talc – tạo độ mịn",
      "Silica – kiểm soát dầu",
      "Mineral Pigments – tạo màu tự nhiên",
      "Dimethicone – làm mịn da",
      "Magnesium Stearate – tăng độ bám",
    ],
    "usage": '''
1. Dùng cọ hoặc bông phấn lấy một lượng vừa đủ.
2. Phủ đều lên mặt sau lớp kem nền hoặc BB cream.
3. Tập trung vùng chữ T (trán, mũi, cằm) để kiểm soát dầu.
4. Có thể dặm lại nhiều lần trong ngày để duy trì lớp nền mịn màng.
5. Kết hợp với kem lót và kem nền cùng dòng Fit Me để đạt hiệu quả tối ưu.
''',
  },
  {
    "id": "SP203",
    "name": "Kem nền L’Oreal Infallible",
    "brand": "L’Oreal",
    "type": "kem nền",
    "category": "Makeup",
    "originalPrice": 295000,
    "discountPrice": 295000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://mint07.com/wp-content/uploads/2025/09/kem-nen-loreal-paris-infallible-24h-tinted-serum-30ml-4.jpg",
    "promotion": "Tặng cọ nền",
    "description":
        "Kem nền L’Oreal Infallible có độ che phủ cao, lâu trôi và mang lại lớp nền mịn màng.",
    "specs": {
      "Dung tích": "30ml",
      "Kết cấu": "Dạng lỏng",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "3600522030001",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oréal Việt Nam",
    },
    "ingredients": [
      "Silicone Blend – tạo độ mịn, lâu trôi",
      "Pigments – che phủ khuyết điểm",
      "Vitamin E – chống oxy hóa, dưỡng da",
      "Glycerin – cấp ẩm",
      "Dimethicone – làm mịn da",
    ],
    "usage": '''
1. Lấy một lượng kem nền vừa đủ ra mu bàn tay.
2. Dùng cọ hoặc mút tán đều lên mặt từ trung tâm ra ngoài.
3. Có thể điều chỉnh độ che phủ bằng cách thêm lớp mỏng.
4. Kết hợp với kem lót để lớp nền bền lâu hơn.
5. Tẩy trang kỹ vào cuối ngày để tránh bít tắc lỗ chân lông.
''',
  },
  {
    "id": "SP204",
    "name": "Mascara Maybelline Lash Sensational",
    "brand": "Maybelline",
    "type": "mascara",
    "category": "Makeup",
    "originalPrice": 175000,
    "discountPrice": 175000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 250,
    "image":
        "https://mint07.com/wp-content/uploads/2016/07/mascara-maybelline-lash-sensational.jpg",
    "promotion": null,
    "description":
        "Mascara Maybelline Lash Sensational giúp làm dài và dày mi, cho đôi mắt quyến rũ.",
    "specs": {
      "Dung tích": "9.5ml",
      "Kết cấu": "Dạng mascara lỏng",
      "Loại da phù hợp": "Mọi loại da",
      "Không gây kích ứng": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "3600532040001",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oréal Việt Nam",
    },
    "ingredients": [
      "Wax Blend – tạo độ dày cho mi",
      "Pigments – tạo màu sắc đậm nét",
      "Conditioning Agents – dưỡng mi",
      "Panthenol – phục hồi mi",
      "Vitamin E – chống oxy hóa",
    ],
    "usage": '''
1. Chuốt mascara từ gốc đến ngọn mi theo đường cong tự nhiên.
2. Có thể lặp lại nhiều lớp để tăng độ dày và dài.
3. Dùng đầu cọ nhỏ để chuốt mi dưới.
4. Đợi vài giây cho mascara khô trước khi chớp mắt.
5. Tẩy trang kỹ bằng nước tẩy trang dành riêng cho mắt vào cuối ngày.
''',
  },
  {
    "id": "SP205",
    "name": "Kẻ mắt nước NYX Epic Ink",
    "brand": "NYX",
    "type": "kẻ mắt",
    "category": "Makeup",
    "originalPrice": 165000,
    "discountPrice": 156750,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://mint07.com/wp-content/uploads/2019/01/ke-mat-nyx-epic-ink-liner-waterproof-black3.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Kẻ mắt nước NYX Epic Ink với đầu cọ siêu mảnh, dễ dàng tạo đường kẻ sắc nét và lâu trôi.",
    "specs": {
      "Dung tích": "1ml",
      "Kết cấu": "Dạng nước",
      "Loại da phù hợp": "Mọi loại da",
      "Không gây kích ứng": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "8008972050001",
      "Phân phối tại Việt Nam": "Công ty TNHH NYX Việt Nam",
    },
    "ingredients": [
      "Pigments – tạo màu sắc đậm nét",
      "Water – dung môi chính",
      "Film Formers – giúp đường kẻ lâu trôi",
      "Glycerin – dưỡng ẩm",
      "Panthenol – bảo vệ da vùng mắt",
    ],
    "usage": '''
1. Lắc nhẹ trước khi dùng để dung dịch đều màu.
2. Kẻ sát chân mi để tạo đường viền mắt sắc nét.
3. Có thể điều chỉnh độ dày bằng cách thay đổi góc cọ.
4. Đợi vài giây cho khô hoàn toàn trước khi chớp mắt.
5. Tẩy trang kỹ bằng nước tẩy trang dành riêng cho mắt vào cuối ngày.
''',
  },
  {
    "id": "SP206",
    "name": "Son dưỡng môi Laneige Lip Glowy Balm",
    "brand": "Laneige",
    "type": "son",
    "category": "Makeup",
    "originalPrice": 220000,
    "discountPrice": 220000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 300,
    "image":
        "https://cdn.hstatic.net/products/1000006063/bt_sweet_candy_3588ae49ff65475780b919ce8b9dc242_1024x1024.jpg",
    "promotion": null,
    "description":
        "Son dưỡng Laneige Lip Glowy Balm giúp dưỡng ẩm, làm mềm môi và tạo độ bóng nhẹ.",
    "specs": {
      "Dung tích": "10g",
      "Kết cấu": "Dạng balm",
      "Loại da phù hợp": "Mọi loại da môi",
      "Không chứa chì": "Đúng",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "8809642060001",
      "Phân phối tại Việt Nam": "Công ty TNHH Laneige Việt Nam",
    },
    "ingredients": [
      "Berry Extract – giàu chất chống oxy hóa, dưỡng môi",
      "Shea Butter – dưỡng mềm môi",
      "Vitamin E – chống oxy hóa, bảo vệ môi",
      "Jojoba Oil – cấp ẩm",
      "Beeswax – tạo độ bóng nhẹ",
    ],
    "usage": '''
1. Thoa trực tiếp lên môi bất cứ khi nào cảm thấy khô.
2. Có thể dùng trước khi đánh son màu để môi mềm mịn.
3. Dùng nhiều lần trong ngày để duy trì độ ẩm cho môi.
4. Sử dụng buổi tối như mặt nạ ngủ cho môi để phục hồi.
''',
  },
  {
    "id": "SP207",
    "name": "Phấn phủ Innisfree No Sebum",
    "brand": "Innisfree",
    "type": "phấn phủ",
    "category": "Makeup",
    "originalPrice": 150000,
    "discountPrice": 150000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 400,
    "image":
        "https://media.hasaki.vn/hsk/vn-11134207-7qukw-lk7k39egq7sy2f_tn.jpg",
    "promotion": "Tặng gương mini",
    "description":
        "Phấn phủ Innisfree No Sebum giúp kiểm soát dầu, mang lại lớp nền mịn màng và tự nhiên.",
    "specs": {
      "Trọng lượng": "5g",
      "Kết cấu": "Phấn nén",
      "Loại da phù hợp": "Da dầu, da hỗn hợp",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8809642070001",
      "Phân phối tại Việt Nam": "Công ty TNHH Innisfree Việt Nam",
    },
    "ingredients": [
      "Mineral Powder – kiểm soát dầu",
      "Green Tea Extract – chống oxy hóa, làm dịu da",
      "Mint Extract – tạo cảm giác mát lạnh",
      "Silica – hút dầu thừa",
      "Dimethicone – làm mịn da",
    ],
    "usage": '''
1. Dùng cọ hoặc bông phấn lấy một lượng vừa đủ.
2. Phủ đều lên mặt sau lớp kem nền hoặc BB cream.
3. Tập trung vùng chữ T để kiểm soát dầu.
4. Có thể dặm lại nhiều lần trong ngày để duy trì lớp nền mịn màng.
5. Kết hợp với kem lót để lớp nền lâu trôi hơn.
''',
  },
  {
    "id": "SP208",
    "name": "Kem nền Maybelline Super Stay",
    "brand": "Maybelline",
    "type": "kem nền",
    "category": "Makeup",
    "originalPrice": 310000,
    "discountPrice": 310000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 220,
    "image":
        "https://file.hstatic.net/200000868185/file/maybelline_super_stay_up_to_30h_lumi-matte_foundation_6.jpg",
    "promotion": null,
    "description":
        "Kem nền Maybelline Super Stay có độ che phủ cao, lâu trôi và mang lại lớp nền mịn màng.",
    "specs": {
      "Dung tích": "30ml",
      "Kết cấu": "Dạng lỏng",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "3600532080001",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oréal Việt Nam",
    },
    "ingredients": [
      "Silicone Blend – tạo độ mịn, lâu trôi",
      "Pigments – che phủ khuyết điểm",
      "Vitamin E – chống oxy hóa, dưỡng da",
      "Dimethicone – làm mịn da",
      "Glycerin – cấp ẩm",
    ],
    "usage": '''
1. Lấy một lượng kem nền vừa đủ ra mu bàn tay.
2. Dùng cọ hoặc mút tán đều lên mặt từ trung tâm ra ngoài.
3. Có thể điều chỉnh độ che phủ bằng cách thêm lớp mỏng.
4. Kết hợp với kem lót để lớp nền bền lâu hơn.
5. Tẩy trang kỹ vào cuối ngày để tránh bít tắc lỗ chân lông.
''',
  },
  {
    "id": "SP209",
    "name": "Mascara L’Oreal Voluminous",
    "brand": "L’Oreal",
    "type": "mascara",
    "category": "Makeup",
    "originalPrice": 185000,
    "discountPrice": 157250,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 260,
    "image":
        "https://media.hcdn.vn/catalog/product/m/a/mascara-l-oreal-khong-troi-lam-day-dai-mi-blackest-black-8-5ml-1-1680766669_img_450x450_31d6f9_fit_center.jpg",
    "promotion": "Giảm 15%",
    "description":
        "Mascara L’Oreal Voluminous giúp làm dày và dài mi, cho đôi mắt nổi bật.",
    "specs": {
      "Dung tích": "8ml",
      "Kết cấu": "Dạng mascara lỏng",
      "Loại da phù hợp": "Mọi loại da",
      "Không gây kích ứng": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "3600522090001",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oréal Việt Nam",
    },
    "ingredients": [
      "Wax Blend – tạo độ dày cho mi",
      "Pigments – tạo màu sắc đậm nét",
      "Conditioning Agents – dưỡng mi",
      "Panthenol – phục hồi mi",
      "Vitamin E – chống oxy hóa",
    ],
    "usage": '''
1. Chuốt mascara từ gốc đến ngọn mi theo đường cong tự nhiên.
2. Có thể lặp lại nhiều lớp để tăng độ dày và dài.
3. Dùng đầu cọ nhỏ để chuốt mi dưới.
4. Đợi vài giây cho mascara khô trước khi chớp mắt.
5. Tẩy trang kỹ bằng nước tẩy trang dành riêng cho mắt vào cuối ngày.
''',
  },
  {
    "id": "SP211",
    "name": "Son kem lì 3CE Velvet Lip Tint",
    "brand": "3CE",
    "type": "son",
    "category": "Makeup",
    "originalPrice": 290000,
    "discountPrice": 290000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 320,
    "image":
        "https://mint07.com/wp-content/uploads/2019/04/son-kem-3ce-velvet-lip-tint2.jpg",
    "promotion": "Mua 2 tặng 1",
    "description":
        "Son kem lì 3CE Velvet Lip Tint với chất son mịn, lì, màu sắc thời thượng và lâu trôi.",
    "specs": {
      "Trọng lượng": "4g",
      "Kết cấu": "Son kem lì",
      "Loại da phù hợp": "Mọi loại da môi",
      "Không chứa chì": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "8809642110001",
      "Phân phối tại Việt Nam": "Công ty TNHH Stylenanda Việt Nam",
    },
    "ingredients": [
      "Pigments – tạo màu sắc thời thượng",
      "Silica – kiểm soát dầu, giữ màu lâu trôi",
      "Vitamin E – chống oxy hóa, dưỡng môi",
      "Shea Butter – dưỡng mềm môi",
      "Jojoba Oil – cấp ẩm",
    ],
    "usage": '''
1. Thoa trực tiếp son lên môi từ giữa môi ra ngoài.
2. Có thể dùng cọ môi để tạo đường viền sắc nét.
3. Kết hợp dưỡng môi trước để môi mềm mịn, tránh khô nứt.
4. Để màu son bền lâu hơn, có thể phủ một lớp phấn mỏng lên môi trước khi thoa son.
5. Tẩy trang môi kỹ vào cuối ngày để tránh thâm môi.
''',
  },
  {
    "id": "SP212",
    "name": "Phấn phủ Chanel Poudre Universelle",
    "brand": "Chanel",
    "type": "phấn phủ",
    "category": "Makeup",
    "originalPrice": 1450000,
    "discountPrice": 1450000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 120,
    "image":
        "https://yeuhangngoai.net/wp-content/uploads/2023/12/phan-phu-bot-chanel-review.jpg",
    "promotion": null,
    "description":
        "Phấn phủ Chanel Poudre Universelle mang lại lớp nền mịn màng, kiểm soát dầu và giữ lớp trang điểm lâu trôi.",
    "specs": {
      "Trọng lượng": "30g",
      "Kết cấu": "Phấn nén",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "3145892120001",
      "Phân phối tại Việt Nam": "Công ty TNHH Chanel Việt Nam",
    },
    "ingredients": [
      "Talc – tạo độ mịn",
      "Silica – kiểm soát dầu",
      "Mineral Pigments – tạo màu tự nhiên",
      "Dimethicone – làm mịn da",
      "Magnesium Stearate – tăng độ bám",
    ],
    "usage": '''
1. Dùng cọ hoặc bông phấn lấy một lượng vừa đủ.
2. Phủ đều lên mặt sau lớp kem nền hoặc BB cream.
3. Tập trung vùng chữ T để kiểm soát dầu.
4. Có thể dặm lại nhiều lần trong ngày để duy trì lớp nền mịn màng.
5. Kết hợp với kem lót để lớp nền lâu trôi hơn.
''',
  },
  {
    "id": "SP213",
    "name": "Kem nền NARS Natural Radiant",
    "brand": "NARS",
    "type": "kem nền",
    "category": "Makeup",
    "originalPrice": 1350000,
    "discountPrice": 1215000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 150,
    "image":
        "https://caostore.vn/wp-content/uploads/2021/12/kem-nen-nars-natural-radiant-longwear-foundation1.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Kem nền NARS Natural Radiant có độ che phủ cao, lâu trôi và mang lại lớp nền sáng mịn tự nhiên.",
    "specs": {
      "Dung tích": "30ml",
      "Kết cấu": "Dạng lỏng",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "6078452130001",
      "Phân phối tại Việt Nam": "Công ty TNHH Shiseido Việt Nam",
    },
    "ingredients": [
      "Silicone Blend – tạo độ mịn, lâu trôi",
      "Pigments – che phủ khuyết điểm",
      "Vitamin E – chống oxy hóa, dưỡng da",
      "Dimethicone – làm mịn da",
      "Glycerin – cấp ẩm",
    ],
    "usage": '''
1. Lấy một lượng kem nền vừa đủ ra mu bàn tay.
2. Dùng cọ hoặc mút tán đều lên mặt từ trung tâm ra ngoài.
3. Có thể điều chỉnh độ che phủ bằng cách thêm lớp mỏng.
4. Kết hợp với kem lót để lớp nền bền lâu hơn.
5. Tẩy trang kỹ vào cuối ngày để tránh bít tắc lỗ chân lông.
''',
  },
  {
    "id": "SP214",
    "name": "Mascara Benefit They’re Real!",
    "brand": "Benefit",
    "type": "mascara",
    "category": "Makeup",
    "originalPrice": 520000,
    "discountPrice": 520000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 200,
    "image":
        "https://mint07.com/wp-content/uploads/2014/06/mascara-benefit-they-re-real-fullsize-review-3.jpg",
    "promotion": null,
    "description":
        "Mascara Benefit They’re Real! giúp làm dài, cong và dày mi, cho đôi mắt nổi bật.",
    "specs": {
      "Dung tích": "8.5ml",
      "Kết cấu": "Mascara lỏng",
      "Loại da phù hợp": "Mọi loại da",
      "Không gây kích ứng": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "6020042140001",
      "Phân phối tại Việt Nam": "Công ty TNHH Benefit Việt Nam",
    },
    "ingredients": [
      "Wax Blend – tạo độ dày cho mi",
      "Pigments – tạo màu sắc đậm nét",
      "Conditioning Agents – dưỡng mi",
      "Panthenol – phục hồi mi",
      "Vitamin E – chống oxy hóa",
    ],
    "usage": '''
1. Chuốt mascara từ gốc đến ngọn mi theo đường cong tự nhiên.
2. Có thể lặp lại nhiều lớp để tăng độ dày và dài.
3. Dùng đầu cọ nhỏ để chuốt mi dưới.
4. Đợi vài giây cho mascara khô trước khi chớp mắt.
5. Tẩy trang kỹ bằng nước tẩy trang dành riêng cho mắt vào cuối ngày.
''',
  },
  {
    "id": "SP215",
    "name": "Kẻ mắt dạng bút Clio Sharp So Simple",
    "brand": "Clio",
    "type": "kẻ mắt",
    "category": "Makeup",
    "originalPrice": 210000,
    "discountPrice": 210000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://adminbeauty.hvnet.vn/Upload/tinymce/2022/5/23/but-sap-ke-mat-clio-sharp-so-simple-waterproof-pencil-liner-014gr-0-hinh-anh-1.jpg",
    "promotion": "Tặng 1 mặt nạ",
    "description":
        "Kẻ mắt dạng bút Clio Sharp So Simple với đầu bút siêu mảnh, dễ dàng tạo đường kẻ sắc nét và lâu trôi.",
    "specs": {
      "Dung tích": "0.5ml",
      "Kết cấu": "Dạng nước",
      "Loại da phù hợp": "Mọi loại da",
      "Không gây kích ứng": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8809642150001",
      "Phân phối tại Việt Nam": "Công ty TNHH Clio Việt Nam",
    },
    "ingredients": [
      "Pigments – tạo màu sắc đậm nét",
      "Water – dung môi chính",
      "Film Formers – giúp đường kẻ lâu trôi",
      "Glycerin – dưỡng ẩm",
      "Panthenol – bảo vệ da vùng mắt",
    ],
    "usage": '''
1. Lắc nhẹ trước khi dùng để dung dịch đều màu.
2. Kẻ sát chân mi để tạo đường viền mắt sắc nét.
3. Có thể điều chỉnh độ dày bằng cách thay đổi góc cọ.
4. Đợi vài giây cho khô hoàn toàn trước khi chớp mắt.
5. Tẩy trang kỹ bằng nước tẩy trang dành riêng cho mắt vào cuối ngày.
''',
  },
  {
    "id": "SP216",
    "name": "Son dưỡng Dior Addict Lip Glow",
    "brand": "Dior",
    "type": "son",
    "category": "Makeup",
    "originalPrice": 850000,
    "discountPrice": 850000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 150,
    "image":
        "https://lipstick.vn/wp-content/uploads/2021/12/son-duong-dior-lip-glow-001.jpg",
    "promotion": null,
    "description":
        "Son dưỡng Dior Addict Lip Glow giúp dưỡng ẩm, làm mềm môi và tạo màu tự nhiên.",
    "specs": {
      "Trọng lượng": "3.5g",
      "Kết cấu": "Son dưỡng",
      "Loại da phù hợp": "Mọi loại da môi",
      "Không chứa chì": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "3348902160001",
      "Phân phối tại Việt Nam": "Công ty TNHH Dior Việt Nam",
    },
    "ingredients": [
      "Mango Butter – dưỡng mềm môi",
      "Luffa Cylindrica Extract – làm dịu môi",
      "Vitamin E – chống oxy hóa, bảo vệ môi",
      "Shea Butter – dưỡng ẩm",
      "Jojoba Oil – cấp ẩm",
    ],
    "usage": '''
1. Thoa trực tiếp lên môi bất cứ khi nào cảm thấy khô.
2. Có thể dùng trước khi đánh son màu để môi mềm mịn.
3. Dùng nhiều lần trong ngày để duy trì độ ẩm cho môi.
4. Sử dụng buổi tối như mặt nạ ngủ cho môi để phục hồi.
''',
  },
  {
    "id": "SP217",
    "name": "Phấn phủ The Face Shop Oil Clear",
    "brand": "The Face Shop",
    "type": "phấn phủ",
    "category": "Makeup",
    "originalPrice": 170000,
    "discountPrice": 136000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 280,
    "image":
        "https://thefaceshopchinhhang.com/wp-content/uploads/2017/04/z6545452868125_a11ad7cfce08c01cd4ec4beb15b44f33.jpg",
    "promotion": "Giảm 20%",
    "description":
        "Phấn phủ The Face Shop Oil Clear giúp kiểm soát dầu, mang lại lớp nền mịn màng và tự nhiên.",
    "specs": {
      "Trọng lượng": "5g",
      "Kết cấu": "Phấn nén",
      "Loại da phù hợp": "Da dầu, da hỗn hợp",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "8809642170001",
      "Phân phối tại Việt Nam": "Công ty TNHH The Face Shop Việt Nam",
    },
    "ingredients": [
      "Mineral Powder – kiểm soát dầu",
      "Silica – hút dầu thừa",
      "Green Tea Extract – chống oxy hóa, làm dịu da",
      "Dimethicone – làm mịn da",
      "Magnesium Stearate – tăng độ bám",
    ],
    "usage": '''
1. Dùng cọ hoặc bông phấn lấy một lượng vừa đủ.
2. Phủ đều lên mặt sau lớp kem nền hoặc BB cream.
3. Tập trung vùng chữ T để kiểm soát dầu.
4. Có thể dặm lại nhiều lần trong ngày để duy trì lớp nền mịn màng.
5. Kết hợp với kem lót để lớp nền lâu trôi hơn.
''',
  },
  {
    "id": "SP218",
    "name": "Kem nền Estee Lauder Double Wear",
    "brand": "Estee Lauder",
    "type": "kem nền",
    "category": "Makeup",
    "originalPrice": 1450000,
    "discountPrice": 1450000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 120,
    "image":
        "https://selena.vn/wp-content/uploads/2024/06/kem-nen-lau-troi-estee-lauder-double-wear-stay-in-place-makeup-spf-10-pa.jpg",
    "promotion": null,
    "description":
        "Kem nền Estee Lauder Double Wear có độ che phủ cao, lâu trôi và mang lại lớp nền mịn màng.",
    "specs": {
      "Dung tích": "30ml",
      "Kết cấu": "Dạng lỏng",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa hương liệu": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "0271312180001",
      "Phân phối tại Việt Nam": "Estée Lauder Việt Nam",
    },
    "ingredients": [
      "Silicone Blend – tạo độ mịn, lâu trôi",
      "Pigments – che phủ khuyết điểm",
      "Vitamin E – chống oxy hóa, dưỡng da",
      "Dimethicone – làm mịn da",
      "Glycerin – cấp ẩm",
    ],
    "usage": '''
1. Lấy một lượng kem nền vừa đủ ra mu bàn tay.
2. Dùng cọ hoặc mút tán đều lên mặt từ trung tâm ra ngoài.
3. Có thể điều chỉnh độ che phủ bằng cách thêm lớp mỏng.
4. Kết hợp với kem lót để lớp nền bền lâu hơn.
5. Tẩy trang kỹ vào cuối ngày để tránh bít tắc lỗ chân lông.
''',
  },
  {
    "id": "SP219",
    "name": "Mascara Etude House Curl Fix",
    "brand": "Etude House",
    "type": "mascara",
    "category": "Makeup",
    "originalPrice": 195000,
    "discountPrice": 185250,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://file.hstatic.net/200000150709/file/455709808_486725674111344_6969457019854820771_n_grande.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Mascara Etude House Curl Fix giúp làm cong và dày mi, giữ nếp suốt cả ngày.",
    "specs": {
      "Dung tích": "8ml",
      "Kết cấu": "Mascara lỏng",
      "Loại da phù hợp": "Mọi loại da",
      "Không gây kích ứng": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8809642190001",
      "Phân phối tại Việt Nam": "Công ty TNHH Etude House Việt Nam",
    },
    "ingredients": [
      "Wax Blend – tạo độ dày cho mi",
      "Pigments – tạo màu sắc đậm nét",
      "Conditioning Agents – dưỡng mi",
      "Panthenol – phục hồi mi",
      "Vitamin E – chống oxy hóa",
    ],
    "usage": '''
1. Chuốt mascara từ gốc đến ngọn mi theo đường cong tự nhiên.
2. Có thể lặp lại nhiều lớp để tăng độ cong và dày.
3. Dùng đầu cọ nhỏ để chuốt mi dưới.
4. Đợi vài giây cho mascara khô trước khi chớp mắt.
5. Tẩy trang kỹ bằng nước tẩy trang dành riêng cho mắt vào cuối ngày.
''',
  },
  {
    "id": "SP220",
    "name": "Kẻ mắt nước Maybelline Hyper Sharp",
    "brand": "Maybelline",
    "type": "kẻ mắt",
    "category": "Makeup",
    "originalPrice": 160000,
    "discountPrice": 160000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 220,
    "image":
        "https://product.hstatic.net/1000006063/product/be54934c11867b83e6d13963cb220674_8fc166edc6914912b2d03bea20be7b2f_1024x1024.jpg",
    "promotion": null,
    "description":
        "Kẻ mắt nước Maybelline Hyper Sharp với đầu bút siêu mảnh, dễ dàng tạo đường kẻ sắc nét và lâu trôi.",
    "specs": {
      "Dung tích": "0.5ml",
      "Kết cấu": "Dạng nước",
      "Loại da phù hợp": "Mọi loại da",
      "Không gây kích ứng": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "3600532200001",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oréal Việt Nam",
    },
    "ingredients": [
      "Pigments – tạo màu sắc đậm nét",
      "Water – dung môi chính",
      "Film Formers – giúp đường kẻ lâu trôi",
      "Glycerin – dưỡng ẩm",
      "Panthenol – bảo vệ da vùng mắt",
    ],
    "usage": '''
1. Lắc nhẹ trước khi dùng để dung dịch đều màu.
2. Kẻ sát chân mi để tạo đường viền mắt sắc nét.
3. Có thể điều chỉnh độ dày bằng cách thay đổi góc cọ.
4. Đợi vài giây cho khô hoàn toàn trước khi chớp mắt.
5. Tẩy trang kỹ bằng nước tẩy trang dành riêng cho mắt vào cuối ngày.
''',
  },
  {
    "id": "SP221",
    "name": "Dầu gội Dove Nutritive Solutions",
    "brand": "Dove",
    "type": "dầu gội",
    "category": "Haircare",
    "originalPrice": 95000,
    "discountPrice": 85500,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 500,
    "image":
        "https://newwaymart.vn/public/uploads/linh-be/review-dau-goi-dove-co-silicon-khong-co-tot-khong_2.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Dầu gội Dove Nutritive Solutions giúp nuôi dưỡng tóc từ gốc đến ngọn, giảm gãy rụng và khô xơ.",
    "specs": {
      "Dung tích": "340ml",
      "Kết cấu": "Dạng lỏng",
      "Loại tóc phù hợp": "Tóc khô, tóc hư tổn",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Việt Nam",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8934862210001",
      "Phân phối tại Việt Nam": "Unilever Việt Nam",
    },
    "ingredients": [
      "Nutritive Serum – nuôi dưỡng tóc từ gốc đến ngọn",
      "Glycerin – cấp ẩm cho tóc",
      "Water – dung môi chính",
      "Sodium Laureth Sulfate – làm sạch tóc",
      "Cocamidopropyl Betaine – tạo bọt dịu nhẹ",
    ],
    "usage": '''
1. Làm ướt tóc bằng nước sạch.
2. Lấy một lượng dầu gội vừa đủ, thoa đều lên tóc và da đầu.
3. Massage nhẹ nhàng để dưỡng chất thấm sâu.
4. Xả sạch bằng nước.
5. Sử dụng 2–3 lần/tuần để đạt hiệu quả tốt nhất.
''',
  },
  {
    "id": "SP222",
    "name": "Dầu xả Dove Intense Repair",
    "brand": "Dove",
    "type": "dầu xả",
    "category": "Haircare",
    "originalPrice": 98000,
    "discountPrice": 98000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 450,
    "image":
        "https://media.hcdn.vn/catalog/product/k/e/kem-xa-dove-phuc-hoi-hu-ton-1-phut-sieu-duong-180ml-2_2_img_450x450_31d6f9_fit_center.jpg",
    "promotion": null,
    "description":
        "Dầu xả Dove Intense Repair giúp phục hồi tóc hư tổn, làm tóc mềm mượt và chắc khỏe.",
    "specs": {
      "Dung tích": "320ml",
      "Kết cấu": "Dạng kem đặc",
      "Loại tóc phù hợp": "Tóc khô, tóc hư tổn",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Việt Nam",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8934862220001",
      "Phân phối tại Việt Nam": "Unilever Việt Nam",
    },
    "ingredients": [
      "Keratin Repair Actives – phục hồi tóc hư tổn",
      "Glycerin – dưỡng ẩm",
      "Water – dung môi chính",
      "Cetearyl Alcohol – làm mềm tóc",
      "Dimethicone – tạo độ mượt",
    ],
    "usage": '''
1. Sau khi gội đầu, lấy một lượng dầu xả vừa đủ.
2. Thoa đều từ thân tóc đến ngọn tóc.
3. Để 2–3 phút để dưỡng chất thấm sâu.
4. Xả sạch bằng nước.
5. Sử dụng thường xuyên để tóc chắc khỏe và mềm mượt.
''',
  },
  {
    "id": "SP223",
    "name": "Xịt dưỡng tóc TRESemmé Keratin Smooth",
    "brand": "TRESemmé",
    "type": "xịt dưỡng tóc",
    "category": "Haircare",
    "originalPrice": 145000,
    "discountPrice": 145000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 300,
    "image":
        "https://media.hcdn.vn/wysiwyg/MaiQuynh/serum-duong-toc-tresemme-moi-1.jpg",
    "promotion": "Tặng lược gỡ rối",
    "description":
        "Xịt dưỡng tóc TRESemmé Keratin Smooth giúp tóc mềm mượt, giảm xơ rối và bảo vệ tóc khỏi nhiệt độ cao.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dạng xịt",
      "Loại tóc phù hợp": "Tóc khô, tóc hư tổn",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "0224002230001",
      "Phân phối tại Việt Nam": "Unilever Việt Nam",
    },
    "ingredients": [
      "Keratin – phục hồi cấu trúc tóc",
      "Argan Oil – dưỡng mềm tóc",
      "Water – dung môi chính",
      "Panthenol – dưỡng ẩm",
      "Cyclopentasiloxane – bảo vệ tóc khỏi nhiệt độ cao",
    ],
    "usage": '''
1. Sau khi gội và lau khô tóc, xịt đều sản phẩm lên tóc.
2. Chải tóc nhẹ nhàng để dưỡng chất thấm đều.
3. Có thể dùng trước khi sấy hoặc tạo kiểu để bảo vệ tóc khỏi nhiệt độ cao.
4. Sử dụng hàng ngày để duy trì mái tóc mềm mượt và chắc khỏe.
''',
  },
  {
    "id": "SP224",
    "name": "Kem ủ tóc L’Oreal Total Repair 5",
    "brand": "L’Oreal",
    "type": "kem ủ tóc",
    "category": "Haircare",
    "originalPrice": 165000,
    "discountPrice": 165000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 250,
    "image":
        "https://product.hstatic.net/200000150709/product/7ab50fc3d7404458779842ef30494f7a_59810417dd5e457687f6d36971b0c413.jpg",
    "promotion": null,
    "description":
        "Kem ủ tóc L’Oreal Total Repair 5 giúp phục hồi tóc hư tổn, giảm gãy rụng và khô xơ.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Kem đặc",
      "Loại tóc phù hợp": "Tóc khô, tóc hư tổn",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "3600522240001",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oréal Việt Nam",
    },
    "ingredients": [
      "Ceramide – phục hồi lớp màng bảo vệ tóc",
      "Protein – nuôi dưỡng tóc chắc khỏe",
      "Vitamin B5 – dưỡng ẩm, giảm gãy rụng",
      "Glycerin – cấp ẩm",
      "Dimethicone – làm mượt tóc",
    ],
    "usage": '''
1. Sau khi gội đầu, lấy một lượng kem ủ vừa đủ.
2. Thoa đều từ thân tóc đến ngọn tóc.
3. Massage nhẹ nhàng để dưỡng chất thấm sâu.
4. Ủ trong 5–10 phút rồi xả sạch bằng nước.
5. Sử dụng 1–2 lần/tuần để đạt hiệu quả tốt nhất.
''',
  },
  {
    "id": "SP225",
    "name": "Dầu gội Head & Shoulders Cool Menthol",
    "brand": "Head & Shoulders",
    "type": "dầu gội",
    "category": "Haircare",
    "originalPrice": 89000,
    "discountPrice": 84550,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 400,
    "image":
        "https://cdnv2.tgdd.vn/bhx-static/bhx/Products/Images/2483/230645/bhx/dau-goi-head-shoulders-bac-ha-480ml_202506211701556991.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Dầu gội Head & Shoulders Cool Menthol giúp làm sạch gàu, mang lại cảm giác mát lạnh sảng khoái.",
    "specs": {
      "Dung tích": "340ml",
      "Kết cấu": "Dạng lỏng",
      "Loại tóc phù hợp": "Tóc gàu, tóc dầu",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "3700022250001",
      "Phân phối tại Việt Nam": "Procter & Gamble Việt Nam",
    },
    "ingredients": [
      "Zinc Pyrithione – trị gàu, kháng khuẩn",
      "Menthol – tạo cảm giác mát lạnh",
      "Water – dung môi chính",
      "Sodium Laureth Sulfate – làm sạch tóc",
      "Cocamidopropyl Betaine – tạo bọt dịu nhẹ",
    ],
    "usage": '''
1. Làm ướt tóc bằng nước sạch.
2. Lấy một lượng dầu gội vừa đủ, thoa đều lên tóc và da đầu.
3. Massage nhẹ nhàng để loại bỏ gàu và bụi bẩn.
4. Xả sạch bằng nước.
5. Sử dụng thường xuyên để duy trì mái tóc sạch gàu và khỏe mạnh.
''',
  },
  {
    "id": "SP226",
    "name": "Dầu xả Pantene Pro-V",
    "brand": "Pantene",
    "type": "dầu xả",
    "category": "Haircare",
    "originalPrice": 92000,
    "discountPrice": 92000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 350,
    "image":
        "https://wowmart.vn/wp-content/uploads/2018/07/dau-xa-pantene-pro-v-advanced-care-5in1-shampoo-1-13l-conditioner-ka.jpg",
    "promotion": null,
    "description":
        "Dầu xả Pantene Pro-V giúp nuôi dưỡng tóc chắc khỏe, mềm mượt và giảm gãy rụng.",
    "specs": {
      "Dung tích": "320ml",
      "Kết cấu": "Kem đặc",
      "Loại tóc phù hợp": "Mọi loại tóc",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "4902432260001",
      "Phân phối tại Việt Nam": "Procter & Gamble Việt Nam",
    },
    "ingredients": [
      "Pro-Vitamin B5 – nuôi dưỡng tóc chắc khỏe",
      "Glycerin – dưỡng ẩm",
      "Water – dung môi chính",
      "Cetearyl Alcohol – làm mềm tóc",
      "Dimethicone – tạo độ mượt",
    ],
    "usage": '''
1. Sau khi gội đầu, lấy một lượng dầu xả vừa đủ.
2. Thoa đều từ thân tóc đến ngọn tóc.
3. Massage nhẹ nhàng để dưỡng chất thấm sâu.
4. Để 2–3 phút rồi xả sạch bằng nước.
5. Sử dụng thường xuyên để tóc mềm mượt và chắc khỏe.
''',
  },
  {
    "id": "SP227",
    "name": "Xịt dưỡng tóc Mise En Scene Perfect Serum",
    "brand": "Mise En Scene",
    "type": "xịt dưỡng tóc",
    "category": "Haircare",
    "originalPrice": 175000,
    "discountPrice": 148750,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 280,
    "image":
        "https://product.hstatic.net/200000150709/product/6a4b54b6c0d0ed6b3385468d621308e1_fc86252d42b44c7d97eb520948200b77_grande.jpg",
    "promotion": "Giảm 15%",
    "description":
        "Xịt dưỡng tóc Mise En Scene Perfect Serum giúp tóc mềm mượt, giảm xơ rối và bảo vệ tóc khỏi nhiệt độ cao.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dạng xịt",
      "Loại tóc phù hợp": "Tóc khô, tóc hư tổn",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Hàn Quốc",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8801042270001",
      "Phân phối tại Việt Nam": "Công ty TNHH Mise En Scene Việt Nam",
    },
    "ingredients": [
      "Argan Oil – dưỡng mềm tóc",
      "Camellia Oil – nuôi dưỡng tóc chắc khỏe",
      "Keratin – phục hồi cấu trúc tóc",
      "Panthenol – dưỡng ẩm",
      "Cyclopentasiloxane – bảo vệ tóc khỏi nhiệt độ cao",
    ],
    "usage": '''
1. Sau khi gội và lau khô tóc, xịt đều sản phẩm lên tóc.
2. Chải tóc nhẹ nhàng để dưỡng chất thấm đều.
3. Có thể dùng trước khi sấy hoặc tạo kiểu để bảo vệ tóc khỏi nhiệt độ cao.
4. Sử dụng hàng ngày để duy trì mái tóc mềm mượt và chắc khỏe.
''',
  },
  {
    "id": "SP228",
    "name": "Kem ủ tóc Tsubaki Premium Repair Mask",
    "brand": "Tsubaki",
    "type": "kem ủ tóc",
    "category": "Haircare",
    "originalPrice": 210000,
    "discountPrice": 210000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 200,
    "image":
        "https://product.hstatic.net/200000714339/product/z4401354085079_21488291c9a2767b18bcc830e98145b5_83dfda8ded2e41a5849920a5c7c26010.jpg",
    "promotion": null,
    "description":
        "Kem ủ tóc Tsubaki Premium Repair Mask giúp phục hồi tóc hư tổn, cấp ẩm và làm tóc mềm mượt.",
    "specs": {
      "Dung tích": "180g",
      "Kết cấu": "Kem đặc",
      "Loại tóc phù hợp": "Tóc khô, tóc hư tổn",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "4901872280001",
      "Phân phối tại Việt Nam": "Công ty TNHH Shiseido Việt Nam",
    },
    "ingredients": [
      "Tsubaki Oil – dưỡng mềm tóc",
      "Hydrolyzed Silk – phục hồi tóc hư tổn",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi tóc",
      "Dimethicone – tạo độ mượt",
    ],
    "usage": '''
1. Sau khi gội đầu, lấy một lượng kem ủ vừa đủ.
2. Thoa đều từ thân tóc đến ngọn tóc.
3. Massage nhẹ nhàng để dưỡng chất thấm sâu.
4. Ủ trong 5–10 phút rồi xả sạch bằng nước.
5. Sử dụng 1–2 lần/tuần để đạt hiệu quả tốt nhất.
''',
  },
  {
    "id": "SP229",
    "name": "Dầu gội Sunsilk Smooth & Manageable",
    "brand": "Sunsilk",
    "type": "dầu gội",
    "category": "Haircare",
    "originalPrice": 75000,
    "discountPrice": 75000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 500,
    "image":
        "https://product.hstatic.net/200000376269/product/dau-goi-sunsilk-ong-muot-rang-ngoi-boa-ve-khoi-tia-uv-650g-1_7a215eda0b874e9689cb29519037f9e9.jpg",
    "promotion": "Tặng 1 mặt nạ tóc",
    "description":
        "Dầu gội Sunsilk Smooth & Manageable giúp làm sạch tóc, nuôi dưỡng tóc mềm mượt và dễ chải.",
    "specs": {
      "Dung tích": "340ml",
      "Kết cấu": "Dạng lỏng",
      "Loại tóc phù hợp": "Mọi loại tóc",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Việt Nam",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "8934862290001",
      "Phân phối tại Việt Nam": "Unilever Việt Nam",
    },
    "ingredients": [
      "Silk Protein – nuôi dưỡng tóc mềm mượt",
      "Vitamin E – chống oxy hóa, bảo vệ tóc",
      "Water – dung môi chính",
      "Sodium Laureth Sulfate – làm sạch tóc",
      "Cocamidopropyl Betaine – tạo bọt dịu nhẹ",
    ],
    "usage": '''
1. Làm ướt tóc bằng nước sạch.
2. Lấy một lượng dầu gội vừa đủ, thoa đều lên tóc và da đầu.
3. Massage nhẹ nhàng để loại bỏ bụi bẩn và dầu thừa.
4. Xả sạch bằng nước.
5. Sử dụng thường xuyên để tóc mềm mượt và dễ chải.
''',
  },
  {
    "id": "SP230",
    "name": "Dầu xả Sunsilk Soft & Smooth",
    "brand": "Sunsilk",
    "type": "dầu xả",
    "category": "Haircare",
    "originalPrice": 78000,
    "discountPrice": 78000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 420,
    "image":
        "https://concung.com/2022/03/56160-84722-large_mobile/dau-xa-sunsilk-mem-muot-dieu-ky-640g.jpg",
    "promotion": null,
    "description":
        "Dầu xả Sunsilk Soft & Smooth giúp nuôi dưỡng tóc mềm mượt, giảm xơ rối và dễ chải.",
    "specs": {
      "Dung tích": "320ml",
      "Kết cấu": "Kem đặc",
      "Loại tóc phù hợp": "Mọi loại tóc",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Việt Nam",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8934862300001",
      "Phân phối tại Việt Nam": "Unilever Việt Nam",
    },
    "ingredients": [
      "Argan Oil – dưỡng mềm tóc",
      "Vitamin E – chống oxy hóa, bảo vệ tóc",
      "Water – dung môi chính",
      "Panthenol – dưỡng ẩm",
      "Dimethicone – tạo độ mượt",
    ],
    "usage": '''
1. Sau khi gội đầu, lấy một lượng dầu xả vừa đủ.
2. Thoa đều từ thân tóc đến ngọn tóc.
3. Massage nhẹ nhàng để dưỡng chất thấm sâu.
4. Để 2–3 phút rồi xả sạch bằng nước.
5. Sử dụng thường xuyên để tóc mềm mượt và dễ chải.
''',
  },
  {
    "id": "SP231",
    "name": "Xịt dưỡng tóc Lucido-L Hair Treatment Oil",
    "brand": "Lucido-L",
    "type": "xịt dưỡng tóc",
    "category": "Haircare",
    "originalPrice": 185000,
    "discountPrice": 166500,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 300,
    "image":
        "https://product.hstatic.net/1000041671/product/dau_duong_toc_lucido_vang_am_5064ad97fe6c4958bb73d75f07a243b4_grande.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Xịt dưỡng tóc Lucido-L Hair Treatment Oil giúp tóc mềm mượt, giảm xơ rối và bảo vệ tóc khỏi hư tổn.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Dạng dầu xịt",
      "Loại tóc phù hợp": "Tóc khô, tóc hư tổn",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "4901872310001",
      "Phân phối tại Việt Nam": "Công ty TNHH Lucido-L Việt Nam",
    },
    "ingredients": [
      "Argan Oil – dưỡng mềm tóc",
      "Vitamin E – chống oxy hóa, bảo vệ tóc",
      "Silicone Blend – tạo độ bóng và bảo vệ tóc",
      "Panthenol – dưỡng ẩm",
      "Cyclopentasiloxane – bảo vệ tóc khỏi nhiệt độ cao",
    ],
    "usage": '''
1. Sau khi gội và lau khô tóc, xịt đều sản phẩm lên tóc.
2. Chải tóc nhẹ nhàng để dưỡng chất thấm đều.
3. Có thể dùng trước khi sấy hoặc tạo kiểu để bảo vệ tóc khỏi nhiệt độ cao.
4. Sử dụng hàng ngày để duy trì mái tóc mềm mượt và chắc khỏe.
''',
  },
  {
    "id": "SP232",
    "name": "Kem ủ tóc Watsons Argan Oil Hair Mask",
    "brand": "Watsons",
    "type": "kem ủ tóc",
    "category": "Haircare",
    "originalPrice": 95000,
    "discountPrice": 95000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 280,
    "image":
        "https://hermore.vn/uploads/product/1359/02-16-50-02-03-2023-olexrs-u-co-500-2.jpg",
    "promotion": null,
    "description":
        "Kem ủ tóc Watsons Argan Oil Hair Mask giúp phục hồi tóc hư tổn, cấp ẩm và làm tóc mềm mượt.",
    "specs": {
      "Dung tích": "250ml",
      "Kết cấu": "Kem đặc",
      "Loại tóc phù hợp": "Tóc khô, tóc hư tổn",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Thái Lan",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "8851122320001",
      "Phân phối tại Việt Nam": "Central Group Việt Nam",
    },
    "ingredients": [
      "Argan Oil – dưỡng mềm tóc",
      "Keratin – phục hồi cấu trúc tóc",
      "Vitamin E – chống oxy hóa, bảo vệ tóc",
      "Panthenol – dưỡng ẩm",
      "Dimethicone – tạo độ mượt",
    ],
    "usage": '''
1. Sau khi gội đầu, lấy một lượng kem ủ vừa đủ.
2. Thoa đều từ thân tóc đến ngọn tóc.
3. Massage nhẹ nhàng để dưỡng chất thấm sâu.
4. Ủ trong 5–10 phút rồi xả sạch bằng nước.
5. Sử dụng 1–2 lần/tuần để đạt hiệu quả tốt nhất.
''',
  },
  {
    "id": "SP233",
    "name": "Dầu gội Rejoice Perfume Smooth",
    "brand": "Rejoice",
    "type": "dầu gội",
    "category": "Haircare",
    "originalPrice": 69000,
    "discountPrice": 65550,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 480,
    "image":
        "https://media.hcdn.vn/wysiwyg/HaNguyen1/dau-goi-rejoice-huong-nuoc-hoa-6.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Dầu gội Rejoice Perfume Smooth giúp làm sạch tóc, nuôi dưỡng tóc mềm mượt và lưu hương thơm lâu.",
    "specs": {
      "Dung tích": "340ml",
      "Kết cấu": "Dạng lỏng",
      "Loại tóc phù hợp": "Mọi loại tóc",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Việt Nam",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8934862330001",
      "Phân phối tại Việt Nam": "Procter & Gamble Việt Nam",
    },
    "ingredients": [
      "Perfume Essence – lưu hương thơm lâu",
      "Silk Protein – nuôi dưỡng tóc mềm mượt",
      "Water – dung môi chính",
      "Sodium Laureth Sulfate – làm sạch tóc",
      "Cocamidopropyl Betaine – tạo bọt dịu nhẹ",
    ],
    "usage": '''
1. Làm ướt tóc bằng nước sạch.
2. Lấy một lượng dầu gội vừa đủ, thoa đều lên tóc và da đầu.
3. Massage nhẹ nhàng để loại bỏ bụi bẩn và dầu thừa.
4. Xả sạch bằng nước.
5. Sử dụng thường xuyên để tóc sạch khỏe và thơm lâu.
''',
  },
  {
    "id": "SP234",
    "name": "Dầu xả Rejoice Rich Soft Smooth",
    "brand": "Rejoice",
    "type": "dầu xả",
    "category": "Haircare",
    "originalPrice": 72000,
    "discountPrice": 72000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 420,
    "image":
        "https://cdn.tgdd.vn/Products/Images/2484/303587/bhx/dau-xa-rejoice-conditioner-48-hour-rich-smooth-sieu-mem-muot-160ml-202303110934137452.jpg",
    "promotion": null,
    "description":
        "Dầu xả Rejoice Rich Soft Smooth giúp nuôi dưỡng tóc mềm mượt, giảm xơ rối và dễ chải.",
    "specs": {
      "Dung tích": "320ml",
      "Kết cấu": "Kem đặc",
      "Loại tóc phù hợp": "Mọi loại tóc",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Việt Nam",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8934862340001",
      "Phân phối tại Việt Nam": "Procter & Gamble Việt Nam",
    },
    "ingredients": [
      "Silk Protein – nuôi dưỡng tóc mềm mượt",
      "Vitamin E – chống oxy hóa, bảo vệ tóc",
      "Water – dung môi chính",
      "Cetearyl Alcohol – làm mềm tóc",
      "Dimethicone – tạo độ mượt",
    ],
    "usage": '''
1. Sau khi gội đầu, lấy một lượng dầu xả vừa đủ.
2. Thoa đều từ thân tóc đến ngọn tóc.
3. Massage nhẹ nhàng để dưỡng chất thấm sâu.
4. Để 2–3 phút rồi xả sạch bằng nước.
5. Sử dụng thường xuyên để tóc mềm mượt và dễ chải.
''',
  },
  {
    "id": "SP235",
    "name": "Xịt dưỡng tóc L’Oreal Extraordinary Oil",
    "brand": "L’Oreal",
    "type": "xịt dưỡng tóc",
    "category": "Haircare",
    "originalPrice": 195000,
    "discountPrice": 195000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 300,
    "image":
        "https://salibeauty.com/wp-content/uploads/2024/08/dau-duong-toc-loreal-paris-elseve-extraordinary-oil-2.jpg",
    "promotion": "Tặng 1 mini size",
    "description":
        "Xịt dưỡng tóc L’Oreal Extraordinary Oil giúp tóc mềm mượt, giảm xơ rối và bảo vệ tóc khỏi nhiệt độ cao.",
    "specs": {
      "Dung tích": "100ml",
      "Kết cấu": "Dạng dầu xịt",
      "Loại tóc phù hợp": "Tóc khô, tóc hư tổn",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "3600522350001",
      "Phân phối tại Việt Nam": "Công ty TNHH L’Oréal Việt Nam",
    },
    "ingredients": [
      "Argan Oil – dưỡng mềm tóc",
      "Coconut Oil – cấp ẩm, nuôi dưỡng tóc",
      "Vitamin E – chống oxy hóa, bảo vệ tóc",
      "Panthenol – phục hồi tóc",
      "Cyclopentasiloxane – bảo vệ tóc khỏi nhiệt độ cao",
    ],
    "usage": '''
1. Sau khi gội và lau khô tóc, xịt đều sản phẩm lên tóc.
2. Chải tóc nhẹ nhàng để dưỡng chất thấm đều.
3. Có thể dùng trước khi sấy hoặc tạo kiểu để bảo vệ tóc khỏi nhiệt độ cao.
4. Sử dụng hàng ngày để duy trì mái tóc mềm mượt và chắc khỏe.
''',
  },
  {
    "id": "SP236",
    "name": "Kem ủ tóc Moroccanoil Intense Hydrating Mask",
    "brand": "Moroccanoil",
    "type": "kem ủ tóc",
    "category": "Haircare",
    "originalPrice": 650000,
    "discountPrice": 650000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 180,
    "image":
        "https://cdn.hstatic.net/files/200000150709/file/vn-11134207-7r98o-lq2xh0oc2kvr6d_grande.jpg",
    "promotion": null,
    "description":
        "Kem ủ tóc Moroccanoil Intense Hydrating Mask giúp phục hồi tóc hư tổn, cấp ẩm sâu và làm tóc mềm mượt.",
    "specs": {
      "Dung tích": "250ml",
      "Kết cấu": "Kem đặc",
      "Loại tóc phù hợp": "Tóc khô, tóc hư tổn",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Israel",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "7290012360001",
      "Phân phối tại Việt Nam": "Công ty TNHH Moroccanoil Việt Nam",
    },
    "ingredients": [
      "Argan Oil – dưỡng mềm tóc, giàu chất chống oxy hóa",
      "Linseed Extract – phục hồi tóc hư tổn",
      "Glycerin – cấp ẩm",
      "Panthenol – dưỡng ẩm, phục hồi tóc",
      "Dimethicone – tạo độ mượt",
    ],
    "usage": '''
1. Sau khi gội đầu, lấy một lượng kem ủ vừa đủ.
2. Thoa đều từ thân tóc đến ngọn tóc.
3. Massage nhẹ nhàng để dưỡng chất thấm sâu.
4. Ủ trong 5–10 phút rồi xả sạch bằng nước.
5. Sử dụng 1–2 lần/tuần để đạt hiệu quả tốt nhất.
''',
  },
  {
    "id": "SP237",
    "name": "Dầu gội OGX Biotin & Collagen",
    "brand": "OGX",
    "type": "dầu gội",
    "category": "Haircare",
    "originalPrice": 210000,
    "discountPrice": 189000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 250,
    "image":
        "https://eustore.com.vn/wp-content/uploads/2022/01/dau-goi-xa-biotin-tim-ban-duc-mau-moi-5.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Dầu gội OGX Biotin & Collagen giúp làm dày tóc, nuôi dưỡng tóc chắc khỏe và giảm gãy rụng.",
    "specs": {
      "Dung tích": "385ml",
      "Kết cấu": "Dạng lỏng",
      "Loại tóc phù hợp": "Tóc mỏng, tóc yếu",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "0227962370001",
      "Phân phối tại Việt Nam": "Johnson & Johnson Việt Nam",
    },
    "ingredients": [
      "Biotin – kích thích mọc tóc",
      "Collagen – tăng độ dày và chắc khỏe",
      "Hydrolyzed Wheat Protein – phục hồi tóc",
      "Glycerin – dưỡng ẩm",
      "Sodium Laureth Sulfate – làm sạch tóc",
    ],
    "usage": '''
1. Làm ướt tóc bằng nước sạch.
2. Lấy một lượng dầu gội vừa đủ, thoa đều lên tóc và da đầu.
3. Massage nhẹ nhàng để dưỡng chất thấm sâu.
4. Xả sạch bằng nước.
5. Sử dụng thường xuyên để tóc dày và chắc khỏe hơn.
''',
  },
  {
    "id": "SP238",
    "name": "Dầu xả OGX Argan Oil of Morocco",
    "brand": "OGX",
    "type": "dầu xả",
    "category": "Haircare",
    "originalPrice": 215000,
    "discountPrice": 215000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 220,
    "image":
        "https://product.hstatic.net/200000150709/product/dau_goi_ogx_argan_oil_of_morocco_355ml_529ccc4317be46ad9cd899fb2618b88f_grande.jpg",
    "promotion": null,
    "description":
        "Dầu xả OGX Argan Oil of Morocco giúp nuôi dưỡng tóc mềm mượt, giảm xơ rối và phục hồi tóc hư tổn.",
    "specs": {
      "Dung tích": "385ml",
      "Kết cấu": "Kem đặc",
      "Loại tóc phù hợp": "Tóc khô, tóc hư tổn",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "0227962380001",
      "Phân phối tại Việt Nam": "Johnson & Johnson Việt Nam",
    },
    "ingredients": [
      "Argan Oil – dưỡng mềm tóc",
      "Silk Protein – phục hồi tóc hư tổn",
      "Vitamin E – chống oxy hóa, bảo vệ tóc",
      "Panthenol – dưỡng ẩm",
      "Dimethicone – tạo độ mượt",
    ],
    "usage": '''
1. Sau khi gội đầu, lấy một lượng dầu xả vừa đủ.
2. Thoa đều từ thân tóc đến ngọn tóc.
3. Massage nhẹ nhàng để dưỡng chất thấm sâu.
4. Để 2–3 phút rồi xả sạch bằng nước.
5. Sử dụng thường xuyên để tóc mềm mượt và chắc khỏe.
''',
  },
  {
    "id": "SP239",
    "name": "Xịt dưỡng tóc Schwarzkopf Gliss Hair Repair",
    "brand": "Schwarzkopf",
    "type": "xịt dưỡng tóc",
    "category": "Haircare",
    "originalPrice": 185000,
    "discountPrice": 175750,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 260,
    "image":
        "https://product.hstatic.net/200000492117/product/3_faa6a35c0a1143869a1ba83698a777b6_master.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Xịt dưỡng tóc Schwarzkopf Gliss Hair Repair giúp phục hồi tóc hư tổn, giảm xơ rối và bảo vệ tóc khỏi nhiệt độ cao.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dạng xịt",
      "Loại tóc phù hợp": "Tóc khô, tóc hư tổn",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Đức",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "4015002390001",
      "Phân phối tại Việt Nam": "Henkel Việt Nam",
    },
    "ingredients": [
      "Keratin – phục hồi cấu trúc tóc",
      "Panthenol – dưỡng ẩm, giảm xơ rối",
      "Argan Oil – dưỡng mềm tóc",
      "Cyclopentasiloxane – bảo vệ tóc khỏi nhiệt độ cao",
      "Vitamin E – chống oxy hóa",
    ],
    "usage": '''
1. Sau khi gội và lau khô tóc, xịt đều sản phẩm lên tóc.
2. Chải tóc nhẹ nhàng để dưỡng chất thấm đều.
3. Có thể dùng trước khi sấy hoặc tạo kiểu để bảo vệ tóc khỏi nhiệt độ cao.
4. Sử dụng hàng ngày để duy trì mái tóc mềm mượt và chắc khỏe.
''',
  },
  {
    "id": "SP240",
    "name": "Kem ủ tóc Garnier Fructis Hair Food",
    "brand": "Garnier",
    "type": "kem ủ tóc",
    "category": "Haircare",
    "originalPrice": 165000,
    "discountPrice": 165000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 220,
    "image":
        "https://hudohanguc.com.au/wp-content/uploads/2022/06/8e3bf72a50172604b71f22f4440e6fa3.jpg",
    "promotion": null,
    "description":
        "Kem ủ tóc Garnier Fructis Hair Food chứa chiết xuất trái cây, giúp cấp ẩm và phục hồi tóc hư tổn.",
    "specs": {
      "Dung tích": "390ml",
      "Kết cấu": "Kem đặc",
      "Loại tóc phù hợp": "Tóc khô, tóc hư tổn",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "3600542400001",
      "Phân phối tại Việt Nam": "L’Oréal Việt Nam",
    },
    "ingredients": [
      "Banana Extract – cấp ẩm, nuôi dưỡng tóc",
      "Papaya Extract – phục hồi tóc hư tổn",
      "Coconut Oil – dưỡng mềm tóc",
      "Glycerin – dưỡng ẩm",
      "Panthenol – phục hồi tóc",
    ],
    "usage": '''
1. Sau khi gội đầu, lấy một lượng kem ủ vừa đủ.
2. Thoa đều từ thân tóc đến ngọn tóc.
3. Massage nhẹ nhàng để dưỡng chất thấm sâu.
4. Ủ trong 5–10 phút rồi xả sạch bằng nước.
5. Sử dụng 1–2 lần/tuần để đạt hiệu quả tốt nhất.
''',
  },
  {
    "id": "SP241",
    "name": "Sữa tắm Dove Deep Moisture",
    "brand": "Dove",
    "type": "sữa tắm",
    "category": "Bodycare",
    "originalPrice": 95000,
    "discountPrice": 85500,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 500,
    "image":
        "https://wowmart.vn/wp-content/uploads/2020/08/sua-tam-dove-deep-moisture-709ml-x3-chai-680ml-270924-kc.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Sữa tắm Dove Deep Moisture giúp làm sạch nhẹ nhàng, cấp ẩm và nuôi dưỡng làn da mềm mịn.",
    "specs": {
      "Dung tích": "530ml",
      "Kết cấu": "Dạng sữa lỏng",
      "Loại da phù hợp": "Da khô, da thường",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Việt Nam",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "8934862410001",
      "Phân phối tại Việt Nam": "Unilever Việt Nam",
    },
    "ingredients": [
      "NutriumMoisture – công nghệ dưỡng ẩm độc quyền",
      "Glycerin – cấp ẩm cho da",
      "Water – dung môi chính",
      "Stearic Acid – làm mềm da",
      "Cocamidopropyl Betaine – tạo bọt dịu nhẹ",
    ],
    "usage": '''
1. Làm ướt cơ thể bằng nước sạch.
2. Lấy một lượng sữa tắm vừa đủ, thoa đều lên da.
3. Massage nhẹ nhàng để loại bỏ bụi bẩn và tế bào chết.
4. Xả sạch bằng nước.
5. Sử dụng hàng ngày để duy trì làn da mềm mịn và khỏe mạnh.
''',
  },
  {
    "id": "SP242",
    "name": "Dưỡng thể Vaseline Healthy White",
    "brand": "Vaseline",
    "type": "dưỡng thể",
    "category": "Bodycare",
    "originalPrice": 115000,
    "discountPrice": 115000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 400,
    "image":
        "https://boribeauty.com/wp-content/uploads/2023/08/277345758_4990488704345457_3453923056971243073_n.jpg",
    "promotion": null,
    "description":
        "Dưỡng thể Vaseline Healthy White giúp dưỡng sáng da, cấp ẩm và bảo vệ da khỏi tác hại môi trường.",
    "specs": {
      "Dung tích": "350ml",
      "Kết cấu": "Lotion mỏng nhẹ",
      "Loại da phù hợp": "Da khô, da xỉn màu",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Thái Lan",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8851122420001",
      "Phân phối tại Việt Nam": "Unilever Việt Nam",
    },
    "ingredients": [
      "Niacinamide – dưỡng sáng da",
      "Vaseline Jelly – khóa ẩm, phục hồi da",
      "Vitamin B3 – cải thiện sắc tố",
      "Glycerin – cấp ẩm",
      "Stearic Acid – làm mềm da",
    ],
    "usage": '''
1. Sau khi tắm, lấy một lượng dưỡng thể vừa đủ.
2. Thoa đều lên toàn thân, đặc biệt vùng da khô.
3. Massage nhẹ nhàng để dưỡng chất thấm sâu.
4. Sử dụng hàng ngày để đạt hiệu quả tốt nhất.
''',
  },
  {
    "id": "SP243",
    "name": "Tẩy tế bào chết St. Ives Apricot Scrub",
    "brand": "St. Ives",
    "type": "tẩy tế bào chết body",
    "category": "Bodycare",
    "originalPrice": 135000,
    "discountPrice": 135000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 300,
    "image":
        "https://myphamhang.com/wp-content/uploads/2019/06/tay-te-bao-chet-toan-than-st-ives-apricot-scrub-5.jpg",
    "promotion": "Tặng 1 khăn tắm",
    "description":
        "Tẩy tế bào chết St. Ives Apricot Scrub giúp loại bỏ tế bào chết, làm sáng da và mịn màng.",
    "specs": {
      "Dung tích": "170g",
      "Kết cấu": "Kem có hạt scrub",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "0770432430001",
      "Phân phối tại Việt Nam": "Unilever Việt Nam",
    },
    "ingredients": [
      "Apricot Extract – làm sáng da",
      "Walnut Shell Powder – loại bỏ tế bào chết",
      "Glycerin – cấp ẩm",
      "Water – dung môi chính",
      "Sodium Lauryl Sulfate – làm sạch da",
    ],
    "usage": '''
1. Sau khi làm ướt da, lấy một lượng scrub vừa đủ.
2. Massage nhẹ nhàng toàn thân theo chuyển động tròn.
3. Tập trung vùng da thô ráp như khuỷu tay, đầu gối.
4. Rửa lại bằng nước sạch.
5. Sử dụng 2–3 lần/tuần để duy trì làn da sáng mịn.
''',
  },
  {
    "id": "SP244",
    "name": "Kem chống nắng body Nivea Sun Protect & Moisture",
    "brand": "Nivea",
    "type": "kem chống nắng body",
    "category": "Bodycare",
    "originalPrice": 165000,
    "discountPrice": 165000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 280,
    "image":
        "https://media.hcdn.vn/wysiwyg/MaiQuynh/sua-chong-nang-toan-than-nivea-cap-am-mong-nhe-7.jpg",
    "promotion": null,
    "description":
        "Kem chống nắng body Nivea Sun Protect & Moisture SPF50 bảo vệ da toàn thân khỏi tia UVA/UVB, đồng thời cấp ẩm.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dạng lotion",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Đức",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "4005902440001",
      "Phân phối tại Việt Nam": "Beiersdorf Việt Nam",
    },
    "ingredients": [
      "UV Filters – bảo vệ da khỏi tia UVA/UVB",
      "Glycerin – cấp ẩm",
      "Vitamin E – chống oxy hóa",
      "Panthenol – phục hồi da",
      "Water – dung môi chính",
    ],
    "usage": '''
1. Thoa đều lên toàn thân trước khi ra nắng 15–20 phút.
2. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng.
3. Sử dụng hàng ngày để bảo vệ da tối ưu.
''',
  },
  {
    "id": "SP245",
    "name": "Sữa tắm Lifebuoy Total 10",
    "brand": "Lifebuoy",
    "type": "sữa tắm",
    "category": "Bodycare",
    "originalPrice": 75000,
    "discountPrice": 71250,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 500,
    "image":
        "https://product.hstatic.net/200000814381/product/ao-ve-khoi-vi-khuan-lifebuoy-bao-ve-vuot-troi-980ml-202303301041545709_a47c2bb5933645a889ca29c18bdd0d34.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Sữa tắm Lifebuoy Total 10 giúp làm sạch da, kháng khuẩn và bảo vệ da khỏi vi khuẩn gây hại.",
    "specs": {
      "Dung tích": "530ml",
      "Kết cấu": "Dạng sữa lỏng",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Việt Nam",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8934862450001",
      "Phân phối tại Việt Nam": "Unilever Việt Nam",
    },
    "ingredients": [
      "Activ Silver Formula – kháng khuẩn mạnh mẽ",
      "Glycerin – cấp ẩm cho da",
      "Water – dung môi chính",
      "Sodium Laureth Sulfate – làm sạch da",
      "Cocamidopropyl Betaine – tạo bọt dịu nhẹ",
    ],
    "usage": '''
1. Làm ướt cơ thể bằng nước sạch.
2. Lấy một lượng sữa tắm vừa đủ, thoa đều lên da.
3. Massage nhẹ nhàng để loại bỏ bụi bẩn và vi khuẩn.
4. Xả sạch bằng nước.
5. Sử dụng hàng ngày để bảo vệ da khỏe mạnh.
''',
  },
  {
    "id": "SP246",
    "name": "Dưỡng thể The Body Shop Almond Milk",
    "brand": "The Body Shop",
    "type": "dưỡng thể",
    "category": "Bodycare",
    "originalPrice": 290000,
    "discountPrice": 290000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 300,
    "image":
        "https://hangngostore.com/wp-content/uploads/2022/07/SUA-CHUA-DUONG-THE-BODY-YOGURT-THE-BODY-SHOP-3.jpg",
    "promotion": null,
    "description":
        "Dưỡng thể The Body Shop Almond Milk giúp cấp ẩm, làm dịu da và nuôi dưỡng làn da mềm mịn.",
    "specs": {
      "Dung tích": "250ml",
      "Kết cấu": "Lotion mỏng nhẹ",
      "Loại da phù hợp": "Da khô, da nhạy cảm",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Anh",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "5028192460001",
      "Phân phối tại Việt Nam": "The Body Shop Việt Nam",
    },
    "ingredients": [
      "Almond Milk – làm dịu da",
      "Shea Butter – dưỡng ẩm sâu",
      "Vitamin E – chống oxy hóa",
      "Glycerin – cấp ẩm",
      "Panthenol – phục hồi da",
    ],
    "usage": '''
1. Sau khi tắm, lấy một lượng dưỡng thể vừa đủ.
2. Thoa đều lên toàn thân, đặc biệt vùng da khô.
3. Massage nhẹ nhàng để dưỡng chất thấm sâu.
4. Sử dụng hàng ngày để đạt hiệu quả tốt nhất.
''',
  },
  {
    "id": "SP247",
    "name": "Tẩy tế bào chết body Organic Shop Coffee Sugar",
    "brand": "Organic Shop",
    "type": "tẩy tế bào chết body",
    "category": "Bodycare",
    "originalPrice": 95000,
    "discountPrice": 80750,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 250,
    "image":
        "https://media.hcdn.vn/catalog/product/t/a/tay-da-chet-toan-than-organic-shop-huong-ca-phe-250ml-1-1658216580_img_450x450_31d6f9_fit_center.jpg",
    "promotion": "Giảm 15%",
    "description":
        "Tẩy tế bào chết Organic Shop Coffee Sugar giúp loại bỏ tế bào chết, làm sáng da và mịn màng.",
    "specs": {
      "Dung tích": "250ml",
      "Kết cấu": "Kem có hạt scrub",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Nga",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "4607082470001",
      "Phân phối tại Việt Nam": "Organic Shop Việt Nam",
    },
    "ingredients": [
      "Coffee Extract – làm sáng da",
      "Sugar Granules – loại bỏ tế bào chết",
      "Glycerin – cấp ẩm",
      "Water – dung môi chính",
      "Coconut Oil – dưỡng mềm da",
    ],
    "usage": '''
1. Sau khi làm ướt da, lấy một lượng scrub vừa đủ.
2. Massage nhẹ nhàng toàn thân theo chuyển động tròn.
3. Tập trung vùng da thô ráp như khuỷu tay, đầu gối.
4. Rửa lại bằng nước sạch.
5. Sử dụng 2–3 lần/tuần để duy trì làn da sáng mịn.
''',
  },
  {
    "id": "SP248",
    "name": "Kem chống nắng body Banana Boat Ultra Sport",
    "brand": "Banana Boat",
    "type": "kem chống nắng body",
    "category": "Bodycare",
    "originalPrice": 210000,
    "discountPrice": 210000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 220,
    "image":
        "https://mint07.com/wp-content/uploads/2023/05/kem-chong-nang-banana-boat-sport-ultra-spf50-90ml-1.jpg",
    "promotion": null,
    "description":
        "Kem chống nắng body Banana Boat Ultra Sport SPF50+ bảo vệ da toàn thân khỏi tia UVA/UVB, chống trôi khi vận động.",
    "specs": {
      "Dung tích": "240ml",
      "Kết cấu": "Dạng lotion",
      "Loại da phù hợp": "Mọi loại da",
      "Khả năng chống nước": "Có",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "0796562480001",
      "Phân phối tại Việt Nam": "Edgewell Personal Care Việt Nam",
    },
    "ingredients": [
      "UV Filters – bảo vệ da khỏi tia UVA/UVB",
      "Aloe Vera – làm dịu da",
      "Vitamin E – chống oxy hóa",
      "Glycerin – cấp ẩm",
      "Panthenol – phục hồi da",
    ],
    "usage": '''
1. Thoa đều lên toàn thân trước khi ra nắng 15–20 phút.
2. Thoa lại sau mỗi 2 giờ nếu vận động ngoài trời hoặc tiếp xúc trực tiếp với nước.
3. Sử dụng hàng ngày để bảo vệ da tối ưu.
''',
  },
  {
    "id": "SP249",
    "name": "Sữa tắm Hazeline Matcha & Lựu đỏ",
    "brand": "Hazeline",
    "type": "sữa tắm",
    "category": "Bodycare",
    "originalPrice": 68000,
    "discountPrice": 68000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 500,
    "image":
        "https://pvmarthanoi.com.vn/wp-content/uploads/2023/01/sua-tam-hazeline-matcha-luu-do-duong-sang-da-1kg-2-3_img_358x358_843626_fit_center.jpg",
    "promotion": "Tặng 1 mặt nạ",
    "description":
        "Sữa tắm Hazeline Matcha & Lựu đỏ giúp làm sạch da, dưỡng sáng và mang lại hương thơm dễ chịu.",
    "specs": {
      "Dung tích": "530ml",
      "Kết cấu": "Dạng sữa lỏng",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Việt Nam",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8934862490001",
      "Phân phối tại Việt Nam": "Unilever Việt Nam",
    },
    "ingredients": [
      "Matcha Extract – chống oxy hóa, dưỡng sáng da",
      "Pomegranate Extract – giàu vitamin, làm sáng da",
      "Glycerin – cấp ẩm",
      "Water – dung môi chính",
      "Cocamidopropyl Betaine – tạo bọt dịu nhẹ",
    ],
    "usage": '''
1. Làm ướt cơ thể bằng nước sạch.
2. Lấy một lượng sữa tắm vừa đủ, thoa đều lên da.
3. Massage nhẹ nhàng để loại bỏ bụi bẩn.
4. Xả sạch bằng nước.
5. Sử dụng hàng ngày để duy trì làn da sáng mịn và thơm mát.
''',
  },
  {
    "id": "SP250",
    "name": "Dưỡng thể Cetaphil Moisturizing Lotion",
    "brand": "Cetaphil",
    "type": "dưỡng thể",
    "category": "Bodycare",
    "originalPrice": 185000,
    "discountPrice": 185000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 300,
    "image":
        "https://wowmart.vn/wp-content/uploads/2017/03/bo-san-pham-duong-da-cetaphil-moisture-lotion-knj.jpg",
    "promotion": null,
    "description":
        "Dưỡng thể Cetaphil Moisturizing Lotion giúp cấp ẩm sâu, làm dịu và nuôi dưỡng làn da nhạy cảm.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Lotion mỏng nhẹ",
      "Loại da phù hợp": "Da khô, da nhạy cảm",
      "Không chứa hương liệu": "Đúng",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Canada",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "7726182500001",
      "Phân phối tại Việt Nam": "Galderma Việt Nam",
    },
    "ingredients": [
      "Glycerin – cấp ẩm cho da",
      "Panthenol – làm dịu và phục hồi da",
      "Vitamin E – chống oxy hóa",
      "Water – dung môi chính",
      "Stearic Acid – làm mềm da",
    ],
    "usage": '''
1. Sau khi tắm, lấy một lượng dưỡng thể vừa đủ.
2. Thoa đều lên toàn thân, đặc biệt vùng da khô.
3. Massage nhẹ nhàng để dưỡng chất thấm sâu.
4. Sử dụng hàng ngày để duy trì độ ẩm cho da.
''',
  },
  {
    "id": "SP251",
    "name": "Tẩy tế bào chết body Tree Hut Shea Sugar Scrub",
    "brand": "Tree Hut",
    "type": "tẩy tế bào chết body",
    "category": "Bodycare",
    "originalPrice": 195000,
    "discountPrice": 175500,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 260,
    "image":
        "https://m.media-amazon.com/images/I/71Z7HZ1MlkL._AC_UF1000,1000_QL80_.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Tẩy tế bào chết Tree Hut Shea Sugar Scrub giúp loại bỏ tế bào chết, làm sáng da và nuôi dưỡng làn da mềm mịn.",
    "specs": {
      "Dung tích": "510g",
      "Kết cấu": "Kem có hạt scrub",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "0753712510001",
      "Phân phối tại Việt Nam": "Tree Hut Việt Nam",
    },
    "ingredients": [
      "Shea Butter – dưỡng ẩm sâu, làm mềm da",
      "Sugar – loại bỏ tế bào chết tự nhiên",
      "Vitamin E – chống oxy hóa, bảo vệ da",
      "Glycerin – cấp ẩm",
      "Coconut Oil – nuôi dưỡng da",
    ],
    "usage": '''
1. Sau khi làm ướt da, lấy một lượng scrub vừa đủ.
2. Massage nhẹ nhàng toàn thân theo chuyển động tròn.
3. Tập trung vùng da thô ráp như khuỷu tay, đầu gối.
4. Rửa lại bằng nước sạch.
5. Sử dụng 2–3 lần/tuần để duy trì làn da sáng mịn.
''',
  },
  {
    "id": "SP252",
    "name": "Kem chống nắng body Anessa Perfect UV Sunscreen",
    "brand": "Anessa",
    "type": "kem chống nắng body",
    "category": "Bodycare",
    "originalPrice": 495000,
    "discountPrice": 470250,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://product.hstatic.net/200000150709/product/xit-chong-nang-anessa-duong-da-da-nang-spf50-pa-60g_c7dbab5a7b114073ab7a10792e738983_medium.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Kem chống nắng body Anessa Perfect UV Sunscreen SPF50+ PA++++ bảo vệ da toàn thân khỏi tia UVA/UVB, chống trôi khi vận động.",
    "specs": {
      "Dung tích": "90g",
      "Kết cấu": "Dạng sữa lỏng",
      "Loại da phù hợp": "Mọi loại da",
      "Khả năng chống nước": "Có",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "4901872520001",
      "Phân phối tại Việt Nam": "Shiseido Việt Nam",
    },
    "ingredients": [
      "Zinc Oxide – chống tia UV",
      "Titanium Dioxide – bảo vệ da khỏi UVA/UVB",
      "Aqua Booster Technology – tăng khả năng chống nước",
      "Glycerin – cấp ẩm",
      "Vitamin E – chống oxy hóa",
    ],
    "usage": '''
1. Lắc đều trước khi sử dụng.
2. Thoa đều lên toàn thân trước khi ra nắng 15–20 phút.
3. Thoa lại sau mỗi 2 giờ nếu vận động ngoài trời hoặc tiếp xúc trực tiếp với nước.
4. Sử dụng hàng ngày để bảo vệ da tối ưu.
''',
  },
  {
    "id": "SP253",
    "name": "Sữa tắm Enchanteur Romantic",
    "brand": "Enchanteur",
    "type": "sữa tắm",
    "category": "Bodycare",
    "originalPrice": 85000,
    "discountPrice": 85000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 350,
    "image":
        "https://cdn.tgdd.vn/Products/Images/2444/78115/bhx/sua-tam-nuoc-hoa-duong-da-enchanteur-deluxe-romantic-650g-202402051407577722.jpg",
    "promotion": null,
    "description":
        "Sữa tắm Enchanteur Romantic với hương thơm ngọt ngào, giúp làm sạch da và lưu hương lâu.",
    "specs": {
      "Dung tích": "500ml",
      "Kết cấu": "Dạng sữa lỏng",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Việt Nam",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "8934862530001",
      "Phân phối tại Việt Nam": "Wipro Consumer Care Việt Nam",
    },
    "ingredients": [
      "Perfume Essence – lưu hương thơm lâu",
      "Glycerin – cấp ẩm cho da",
      "Water – dung môi chính",
      "Sodium Laureth Sulfate – làm sạch da",
      "Cocamidopropyl Betaine – tạo bọt dịu nhẹ",
    ],
    "usage": '''
1. Làm ướt cơ thể bằng nước sạch.
2. Lấy một lượng sữa tắm vừa đủ, thoa đều lên da.
3. Massage nhẹ nhàng để loại bỏ bụi bẩn.
4. Xả sạch bằng nước.
5. Sử dụng hàng ngày để duy trì làn da sạch khỏe và thơm mát.
''',
  },
  {
    "id": "SP254",
    "name": "Dưỡng thể Hatomugi Skin Conditioner",
    "brand": "Hatomugi",
    "type": "dưỡng thể",
    "category": "Bodycare",
    "originalPrice": 145000,
    "discountPrice": 145000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 280,
    "image":
        "https://media.hcdn.vn/wysiwyg/Chau/sua-duong-the-hatomugi-duong-sang-da-ban-dem-1.jpg",
    "promotion": "Tặng 1 chai mini",
    "description":
        "Dưỡng thể Hatomugi Skin Conditioner chứa chiết xuất ý dĩ, giúp cấp ẩm, làm dịu và dưỡng sáng da.",
    "specs": {
      "Dung tích": "250ml",
      "Kết cấu": "Lotion mỏng nhẹ",
      "Loại da phù hợp": "Da khô, da xỉn màu",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "4901872540001",
      "Phân phối tại Việt Nam": "Imju Việt Nam",
    },
    "ingredients": [
      "Job’s Tears Extract – chiết xuất ý dĩ, dưỡng sáng da",
      "Glycerin – cấp ẩm cho da",
      "Vitamin E – chống oxy hóa, bảo vệ da",
      "Panthenol – làm dịu da",
      "Water – dung môi chính",
    ],
    "usage": '''
1. Sau khi tắm, lấy một lượng dưỡng thể vừa đủ.
2. Thoa đều lên toàn thân, đặc biệt vùng da khô.
3. Massage nhẹ nhàng để dưỡng chất thấm sâu.
4. Sử dụng hàng ngày để đạt hiệu quả tốt nhất.
''',
  },
  {
    "id": "SP255",
    "name": "Tẩy tế bào chết body Cocoon Dak Lak Coffee",
    "brand": "Cocoon",
    "type": "tẩy tế bào chết body",
    "category": "Bodycare",
    "originalPrice": 165000,
    "discountPrice": 165000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 240,
    "image":
        "https://image.cocoonvietnam.com/uploads/29892166_slide_2_0b4a1c8139.jpg",
    "promotion": null,
    "description":
        "Tẩy tế bào chết Cocoon Dak Lak Coffee chứa bột cà phê nguyên chất, giúp loại bỏ tế bào chết và làm sáng da.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Kem có hạt scrub",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Việt Nam",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8934862550001",
      "Phân phối tại Việt Nam": "Cocoon Việt Nam",
    },
    "ingredients": [
      "Coffee Powder – loại bỏ tế bào chết tự nhiên",
      "Shea Butter – dưỡng ẩm sâu",
      "Vitamin E – chống oxy hóa",
      "Glycerin – cấp ẩm",
      "Coconut Oil – nuôi dưỡng da",
    ],
    "usage": '''
1. Sau khi làm ướt da, lấy một lượng scrub vừa đủ.
2. Massage nhẹ nhàng toàn thân theo chuyển động tròn.
3. Tập trung vùng da thô ráp như khuỷu tay, đầu gối.
4. Rửa lại bằng nước sạch.
5. Sử dụng 2–3 lần/tuần để duy trì làn da sáng mịn.
''',
  },
  {
    "id": "SP256",
    "name": "Kem chống nắng body Vichy Ideal Soleil",
    "brand": "Vichy",
    "type": "kem chống nắng body",
    "category": "Bodycare",
    "originalPrice": 520000,
    "discountPrice": 468000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image": "https://img.watsonsvn.com/ecommerce/ecom/Vichy/200455-extra1.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Kem chống nắng body Vichy Ideal Soleil SPF50+ PA++++ bảo vệ da toàn thân khỏi tia UVA/UVB, đồng thời cấp ẩm.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dạng lotion",
      "Loại da phù hợp": "Mọi loại da",
      "Khả năng chống nước": "Có",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "3337872560001",
      "Phân phối tại Việt Nam": "L’Oréal Việt Nam",
    },
    "ingredients": [
      "Mexoryl XL – bộ lọc tia UV độc quyền",
      "Vitamin E – chống oxy hóa, bảo vệ da",
      "Vichy Mineralizing Water – cấp khoáng chất cho da",
      "Glycerin – cấp ẩm",
      "Panthenol – phục hồi da",
    ],
    "usage": '''
1. Thoa đều lên toàn thân trước khi ra nắng 15–20 phút.
2. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng hoặc vận động ngoài trời.
3. Sử dụng hàng ngày để bảo vệ da tối ưu.
''',
  },
  {
    "id": "SP257",
    "name": "Sữa tắm Purité Lavender",
    "brand": "Purité",
    "type": "sữa tắm",
    "category": "Bodycare",
    "originalPrice": 78000,
    "discountPrice": 78000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 420,
    "image": "https://media.hasaki.vn/hsk/review-sua-tam-purite-66.jpg",
    "promotion": null,
    "description":
        "Sữa tắm Purité Lavender với hương thơm oải hương dịu nhẹ giúp làm sạch da và thư giãn tinh thần.",
    "specs": {
      "Dung tích": "500ml",
      "Kết cấu": "Dạng sữa lỏng",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Việt Nam",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "08/2025",
      "Mã vạch": "8934862570001",
      "Phân phối tại Việt Nam": "Công ty TNHH Purité Việt Nam",
    },
    "ingredients": [
      "Lavender Extract – hương thơm thư giãn, làm dịu da",
      "Glycerin – cấp ẩm cho da",
      "Vitamin E – chống oxy hóa, bảo vệ da",
      "Water – dung môi chính",
      "Cocamidopropyl Betaine – tạo bọt dịu nhẹ",
    ],
    "usage": '''
1. Làm ướt cơ thể bằng nước sạch.
2. Lấy một lượng sữa tắm vừa đủ, thoa đều lên da.
3. Massage nhẹ nhàng để loại bỏ bụi bẩn.
4. Xả sạch bằng nước.
5. Sử dụng hàng ngày để duy trì làn da sạch khỏe và thư giãn.
''',
  },
  {
    "id": "SP258",
    "name": "Dưỡng thể Nivea Extra White Firming",
    "brand": "Nivea",
    "type": "dưỡng thể",
    "category": "Bodycare",
    "originalPrice": 125000,
    "discountPrice": 118750,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 350,
    "image":
        "https://cdn.nhathuoclongchau.com.vn/unsafe/800x0/sua_duong_the_nivea_ngay_va_dem_review_co_dung_chung_duoc_khong5_9046441acc.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Dưỡng thể Nivea Extra White Firming giúp dưỡng sáng da, làm săn chắc và cấp ẩm cho da.",
    "specs": {
      "Dung tích": "350ml",
      "Kết cấu": "Lotion mỏng nhẹ",
      "Loại da phù hợp": "Da khô, da xỉn màu",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Thái Lan",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "4005902580001",
      "Phân phối tại Việt Nam": "Beiersdorf Việt Nam",
    },
    "ingredients": [
      "Q10 – tăng độ săn chắc da",
      "Vitamin C – dưỡng sáng da",
      "Niacinamide – cải thiện sắc tố da",
      "Glycerin – cấp ẩm",
      "Vitamin E – chống oxy hóa",
    ],
    "usage": '''
1. Sau khi tắm, lấy một lượng dưỡng thể vừa đủ.
2. Thoa đều lên toàn thân, đặc biệt vùng da khô.
3. Massage nhẹ nhàng để dưỡng chất thấm sâu.
4. Sử dụng hàng ngày để đạt hiệu quả tốt nhất.
''',
  },
  {
    "id": "SP259",
    "name": "Tẩy tế bào chết body The Body Shop Mango",
    "brand": "The Body Shop",
    "type": "tẩy tế bào chết body",
    "category": "Bodycare",
    "originalPrice": 295000,
    "discountPrice": 295000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 200,
    "image":
        "https://sg-live-01.slatic.net/p/60d0889cc97167ea2ff9331c20b82f0a.jpg_525x525q80.jpg",
    "promotion": null,
    "description":
        "Tẩy tế bào chết The Body Shop Mango chứa chiết xuất xoài, giúp loại bỏ tế bào chết và dưỡng da mềm mịn.",
    "specs": {
      "Dung tích": "250ml",
      "Kết cấu": "Kem có hạt scrub",
      "Loại da phù hợp": "Mọi loại da",
      "Không chứa paraben": "Đúng",
      "Xuất xứ": "Anh",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "5028192590001",
      "Phân phối tại Việt Nam": "The Body Shop Việt Nam",
    },
    "ingredients": [
      "Mango Extract – dưỡng da mềm mịn",
      "Sugar Granules – loại bỏ tế bào chết",
      "Shea Butter – dưỡng ẩm sâu",
      "Glycerin – cấp ẩm",
      "Coconut Oil – nuôi dưỡng da",
    ],
    "usage": '''
1. Sau khi làm ướt da, lấy một lượng scrub vừa đủ.
2. Massage nhẹ nhàng toàn thân theo chuyển động tròn.
3. Tập trung vùng da thô ráp như khuỷu tay, đầu gối.
4. Rửa lại bằng nước sạch.
5. Sử dụng 2–3 lần/tuần để duy trì làn da sáng mịn.
''',
  },
  {
    "id": "SP260",
    "name": "Kem chống nắng body Biore UV Aqua Rich",
    "brand": "Biore",
    "type": "kem chống nắng body",
    "category": "Bodycare",
    "originalPrice": 185000,
    "discountPrice": 185000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 300,
    "image":
        "https://product.hstatic.net/200000551679/product/ng_duong_the_uv_aqua_rich_body_tone_up_peach_pearly_spf50__pa____130ml_cf3abc3d381f4f4f89ac428427f6f02d_1024x1024.jpg",
    "promotion": "Tặng 1 túi chống nắng",
    "description":
        "Kem chống nắng body Biore UV Aqua Rich SPF50+ PA++++ bảo vệ da toàn thân khỏi tia UVA/UVB, đồng thời cấp ẩm.",
    "specs": {
      "Dung tích": "90ml",
      "Kết cấu": "Dạng gel lỏng nhẹ",
      "Loại da phù hợp": "Mọi loại da",
      "Khả năng chống nước": "Có",
      "Xuất xứ": "Nhật Bản",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "07/2025",
      "Mã vạch": "4901302600001",
      "Phân phối tại Việt Nam": "Kao Việt Nam",
    },
    "ingredients": [
      "Hyaluronic Acid – cấp ẩm sâu cho da",
      "UV Filters – bảo vệ da khỏi tia UVA/UVB",
      "Vitamin E – chống oxy hóa, bảo vệ da",
      "Glycerin – cấp ẩm",
      "Panthenol – làm dịu da",
    ],
    "usage": '''
1. Thoa đều lên toàn thân trước khi ra nắng 15–20 phút.
2. Thoa lại sau mỗi 2 giờ nếu tiếp xúc trực tiếp với ánh nắng hoặc vận động ngoài trời.
3. Sử dụng hàng ngày để bảo vệ da tối ưu.
''',
  },
  {
    "id": "SP261",
    "name": "Nước hoa Chanel Coco Mademoiselle",
    "brand": "Chanel",
    "type": "nước hoa",
    "category": "Fragrance",
    "originalPrice": 2950000,
    "discountPrice": 2802500,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 150,
    "image":
        "https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2020/01/nuoc-hoa-chanel-coco-mademoiselle-100ml-anh-2-jpg-1578990557-14012020152917.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Nước hoa Chanel Coco Mademoiselle mang hương thơm quyến rũ, kết hợp giữa cam bergamot, hoa hồng và hoắc hương.",
    "specs": {
      "Dung tích": "100ml",
      "Kết cấu": "Eau de Parfum",
      "Độ lưu hương": "7–12 giờ",
      "Xuất xứ": "Pháp",
      "Hạn sử dụng": "60 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "06/2025",
      "Mã vạch": "3145892610001",
      "Phân phối tại Việt Nam": "Công ty TNHH Chanel Việt Nam",
    },
    "ingredients": [
      "Bergamot – hương cam chanh tươi mát",
      "Rose – hương hoa hồng quyến rũ",
      "Patchouli – hương gỗ trầm ấm",
      "Jasmine – hương hoa nhài ngọt ngào",
      "Vanilla – tạo chiều sâu hương thơm",
    ],
    "usage": '''
1. Xịt một lượng vừa đủ lên cổ tay, sau tai hoặc quần áo.
2. Tránh xịt trực tiếp vào mắt.
3. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp.
''',
  },
  {
    "id": "SP262",
    "name": "Xịt thơm Bath & Body Works Japanese Cherry Blossom",
    "brand": "Bath & Body Works",
    "type": "xịt thơm",
    "category": "Fragrance",
    "originalPrice": 320000,
    "discountPrice": 320000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 200,
    "image":
        "https://lisa.vn/wp-content/uploads/2024/10/Bath-And-Body-Works-Japanese-Cherry-Blossom4.jpg",
    "promotion": null,
    "description":
        "Xịt thơm Bath & Body Works Japanese Cherry Blossom mang hương hoa anh đào ngọt ngào, lưu hương nhẹ nhàng.",
    "specs": {
      "Dung tích": "236ml",
      "Kết cấu": "Body Mist",
      "Độ lưu hương": "2–4 giờ",
      "Xuất xứ": "Mỹ",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Ngày sản xuất": "09/2025",
      "Mã vạch": "6675322620001",
      "Phân phối tại Việt Nam": "Bath & Body Works Việt Nam",
    },
    "ingredients": [
      "Cherry Blossom Extract – hương hoa anh đào ngọt ngào",
      "Aloe Vera – làm dịu và cấp ẩm cho da",
      "Fragrance – hương thơm tổng hợp",
      "Water – dung môi chính",
      "Glycerin – cấp ẩm",
    ],
    "usage": '''
1. Xịt một lượng vừa đủ lên cơ thể sau khi tắm.
2. Có thể xịt nhiều lần trong ngày để duy trì hương thơm.
3. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp.
''',
  },
  {
    "id": "SP263",
    "name": "Nước hoa Dior Sauvage Eau de Toilette",
    "brand": "Dior",
    "type": "nước hoa",
    "category": "Fragrance",
    "originalPrice": 2850000,
    "discountPrice": 2850000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 150,
    "image":
        "https://product.hstatic.net/1000340570/product/sauvage-edt-1_9e398ed2b95c4282981ad8477f116ccf_master.jpg",
    "promotion": "Tặng 1 mini size",
    "description":
        "Nước hoa Dior Sauvage Eau de Toilette mang hương thơm nam tính, mạnh mẽ với cam bergamot, tiêu và ambroxan.",
    "specs": {
      "Dung tích": "100ml",
      "Kết cấu": "Eau de Toilette",
      "Độ lưu hương": "6–8 giờ",
      "Xuất xứ": "Pháp",
      "Ngày sản xuất": "07/2025",
      "Hạn sử dụng": "60 tháng kể từ ngày sản xuất",
      "Mã vạch": "3348902630001",
    },
    "ingredients": [
      "Bergamot – hương cam chanh tươi mát",
      "Pepper – hương cay nồng mạnh mẽ",
      "Ambroxan – hương gỗ trầm ấm, nam tính",
    ],
    "usage": '''
1. Xịt một lượng vừa đủ lên cổ tay, sau tai hoặc vùng cổ để hương lan tỏa tự nhiên.
2. Có thể xịt lên quần áo hoặc tóc để tăng độ lưu hương lâu hơn.
3. Tránh xịt trực tiếp vào mắt hoặc vùng da nhạy cảm.
4. Nên xịt cách da khoảng 10–15cm để hương phân tán đều.
5. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
6. Sử dụng vào buổi tối hoặc những dịp đặc biệt để tạo ấn tượng mạnh mẽ.
''',
  },
  {
    "id": "SP264",
    "name": "Xịt thơm Victoria’s Secret Love Spell",
    "brand": "Victoria’s Secret",
    "type": "xịt thơm",
    "category": "Fragrance",
    "originalPrice": 295000,
    "discountPrice": 295000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 200,
    "image":
        "https://wowmart.vn/wp-content/uploads/2021/07/xit-thom-victorias-secret-love-spell-fragrance-mist-75ml-kd.jpg",
    "promotion": null,
    "description":
        "Xịt thơm Victoria’s Secret Love Spell mang hương thơm ngọt ngào của hoa anh đào và đào, lưu hương nhẹ nhàng.",
    "specs": {
      "Dung tích": "250ml",
      "Kết cấu": "Body Mist",
      "Độ lưu hương": "2–4 giờ",
      "Xuất xứ": "Mỹ",
      "Ngày sản xuất": "08/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "6675322640001",
    },
    "ingredients": [
      "Cherry Blossom – hương hoa anh đào ngọt ngào",
      "Peach Extract – hương trái cây tươi mát",
      "Fragrance – hương thơm tổng hợp",
    ],
    "usage": '''
1. Xịt một lượng vừa đủ lên cơ thể sau khi tắm để hương thơm bám tốt hơn.
2. Có thể xịt nhiều lần trong ngày để duy trì hương thơm.
3. Xịt cách da khoảng 10–15cm để hương lan tỏa đều.
4. Kết hợp với lotion cùng mùi hương để tăng độ lưu hương.
5. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp.
''',
  },
  {
    "id": "SP265",
    "name": "Nước hoa Gucci Bloom Eau de Parfum",
    "brand": "Gucci",
    "type": "nước hoa",
    "category": "Fragrance",
    "originalPrice": 3150000,
    "discountPrice": 2835000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 140,
    "image":
        "https://orchard.vn/wp-content/uploads/2017/09/gucci-bloom-edp_5.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Nước hoa Gucci Bloom Eau de Parfum mang hương thơm nữ tính, kết hợp hoa nhài, hoa huệ và hoa kim ngân.",
    "specs": {
      "Dung tích": "100ml",
      "Kết cấu": "Eau de Parfum",
      "Độ lưu hương": "7–12 giờ",
      "Xuất xứ": "Ý",
      "Ngày sản xuất": "06/2025",
      "Hạn sử dụng": "60 tháng kể từ ngày sản xuất",
      "Mã vạch": "7370522650001",
    },
    "ingredients": [
      "Jasmine – hương hoa nhài ngọt ngào",
      "Tuberose – hương hoa huệ sang trọng",
      "Rangoon Creeper – hương hoa kim ngân độc đáo",
    ],
    "usage": '''
1. Xịt một lượng vừa đủ lên cổ tay, sau tai hoặc vùng cổ để hương thơm lan tỏa tự nhiên.
2. Có thể xịt lên quần áo hoặc tóc để tăng độ lưu hương lâu hơn.
3. Tránh xịt trực tiếp vào mắt hoặc vùng da nhạy cảm.
4. Nên xịt cách da khoảng 10–15cm để hương phân tán đều.
5. Sử dụng vào buổi tối hoặc những dịp đặc biệt để tạo ấn tượng nữ tính, sang trọng.
6. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP266",
    "name": "Xịt thơm The Body Shop White Musk",
    "brand": "The Body Shop",
    "type": "xịt thơm",
    "category": "Fragrance",
    "originalPrice": 350000,
    "discountPrice": 350000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 200,
    "image":
        "https://media.loveitopcdn.com/74/xit-thom-toan-than-the-body-shop-body-mist-white-musk.jpg",
    "promotion": null,
    "description":
        "Xịt thơm The Body Shop White Musk mang hương thơm dịu nhẹ, tinh tế với xạ hương trắng.",
    "specs": {
      "Dung tích": "100ml",
      "Kết cấu": "Body Mist",
      "Độ lưu hương": "2–4 giờ",
      "Xuất xứ": "Anh",
      "Ngày sản xuất": "08/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "5028192660001",
    },
    "ingredients": [
      "White Musk – hương xạ hương trắng tinh tế",
      "Fragrance – hương thơm tổng hợp",
      "Aloe Vera – làm dịu và cấp ẩm cho da",
    ],
    "usage": '''
1. Xịt một lượng vừa đủ lên cơ thể sau khi tắm để hương thơm bám tốt hơn.
2. Có thể xịt nhiều lần trong ngày để duy trì hương thơm.
3. Xịt cách da khoảng 10–15cm để hương lan tỏa đều.
4. Kết hợp với lotion cùng mùi hương để tăng độ lưu hương.
5. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP267",
    "name": "Nước hoa Versace Bright Crystal",
    "brand": "Versace",
    "type": "nước hoa",
    "category": "Fragrance",
    "originalPrice": 2650000,
    "discountPrice": 2252500,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 160,
    "image":
        "https://tiemnuochoa.vn/wp-content/uploads/2023/08/versace-bright-crystal-EDT-90ml.jpg",
    "promotion": "Giảm 15%",
    "description":
        "Nước hoa Versace Bright Crystal mang hương thơm tươi mát, kết hợp lựu, hoa mẫu đơn và xạ hương.",
    "specs": {
      "Dung tích": "90ml",
      "Kết cấu": "Eau de Toilette",
      "Độ lưu hương": "6–8 giờ",
      "Xuất xứ": "Ý",
      "Ngày sản xuất": "07/2025",
      "Hạn sử dụng": "60 tháng kể từ ngày sản xuất",
      "Mã vạch": "8011002670001",
    },
    "ingredients": [
      "Pomegranate – hương lựu tươi mát",
      "Peony – hương hoa mẫu đơn ngọt ngào",
      "Musk – hương xạ hương quyến rũ",
    ],
    "usage": '''
1. Xịt một lượng vừa đủ lên cổ tay, sau tai hoặc vùng cổ để hương thơm lan tỏa tự nhiên.
2. Có thể xịt lên quần áo hoặc tóc để tăng độ lưu hương lâu hơn.
3. Tránh xịt trực tiếp vào mắt hoặc vùng da nhạy cảm.
4. Nên xịt cách da khoảng 10–15cm để hương phân tán đều.
5. Sử dụng vào buổi tối hoặc những dịp đặc biệt để tạo ấn tượng sang trọng.
6. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP268",
    "name": "Xịt thơm Innisfree Perfumed Body Mist Peach",
    "brand": "Innisfree",
    "type": "xịt thơm",
    "category": "Fragrance",
    "originalPrice": 180000,
    "discountPrice": 180000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 220,
    "image":
        "https://www.innisfree.vn/static/upload/product/product/170_ID0101_5.jpg",
    "promotion": null,
    "description":
        "Xịt thơm Innisfree Perfumed Body Mist Peach mang hương đào ngọt ngào, lưu hương nhẹ nhàng và dễ chịu.",
    "specs": {
      "Dung tích": "100ml",
      "Kết cấu": "Body Mist",
      "Độ lưu hương": "2–4 giờ",
      "Xuất xứ": "Hàn Quốc",
      "Ngày sản xuất": "09/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "8809612680001",
    },
    "ingredients": [
      "Peach Extract – hương đào ngọt ngào",
      "Fragrance – hương thơm tổng hợp",
      "Aloe Vera – làm dịu và cấp ẩm cho da",
    ],
    "usage": '''
1. Xịt một lượng vừa đủ lên cơ thể sau khi tắm để hương thơm bám tốt hơn.
2. Có thể xịt nhiều lần trong ngày để duy trì hương thơm.
3. Xịt cách da khoảng 10–15cm để hương lan tỏa đều.
4. Kết hợp với lotion cùng mùi hương để tăng độ lưu hương.
5. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP269",
    "name": "Nước hoa Calvin Klein CK One",
    "brand": "Calvin Klein",
    "type": "nước hoa",
    "category": "Fragrance",
    "originalPrice": 1950000,
    "discountPrice": 1950000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://tiemnuochoa.vn/wp-content/uploads/2023/03/nuoc-hoa-calvin-klein-ck-one-4.jpg",
    "promotion": "Tặng 1 túi du lịch",
    "description":
        "Nước hoa Calvin Klein CK One mang hương thơm unisex, tươi mát với cam bergamot, trà xanh và xạ hương.",
    "specs": {
      "Dung tích": "100ml",
      "Kết cấu": "Eau de Toilette",
      "Độ lưu hương": "6–8 giờ",
      "Xuất xứ": "Mỹ",
      "Ngày sản xuất": "07/2025",
      "Hạn sử dụng": "60 tháng kể từ ngày sản xuất",
      "Mã vạch": "3607342690001",
    },
    "ingredients": [
      "Bergamot – hương cam chanh tươi mát",
      "Green Tea – hương trà xanh thanh khiết",
      "Musk – hương xạ hương quyến rũ",
    ],
    "usage": '''
1. Xịt một lượng vừa đủ lên cổ tay, sau tai hoặc vùng cổ để hương thơm lan tỏa tự nhiên.
2. Có thể xịt lên quần áo hoặc tóc để tăng độ lưu hương lâu hơn.
3. Tránh xịt trực tiếp vào mắt hoặc vùng da nhạy cảm.
4. Nên xịt cách da khoảng 10–15cm để hương phân tán đều.
5. Sử dụng hàng ngày hoặc trong các dịp đặc biệt để tạo phong cách unisex, tươi mát.
6. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP270",
    "name": "Xịt thơm Malissa Kiss Sweet Vanilla",
    "brand": "Malissa Kiss",
    "type": "xịt thơm",
    "category": "Fragrance",
    "originalPrice": 145000,
    "discountPrice": 145000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 250,
    "image":
        "https://media.hcdn.vn/wysiwyg/minhchau/xit-thom-toan-than-malissa-kiss-88ml-10.jpg",
    "promotion": null,
    "description":
        "Xịt thơm Malissa Kiss Sweet Vanilla mang hương vani ngọt ngào, lưu hương nhẹ nhàng và dễ chịu.",
    "specs": {
      "Dung tích": "88ml",
      "Kết cấu": "Body Mist",
      "Độ lưu hương": "2–4 giờ",
      "Xuất xứ": "Thái Lan",
      "Ngày sản xuất": "08/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "8851122700001",
    },
    "ingredients": [
      "Vanilla Extract – hương vani ngọt ngào",
      "Fragrance – hương thơm tổng hợp",
      "Aloe Vera – làm dịu và cấp ẩm cho da",
    ],
    "usage": '''
1. Xịt một lượng vừa đủ lên cơ thể sau khi tắm để hương thơm bám tốt hơn.
2. Có thể xịt nhiều lần trong ngày để duy trì hương thơm.
3. Xịt cách da khoảng 10–15cm để hương lan tỏa đều.
4. Kết hợp với lotion cùng mùi hương để tăng độ lưu hương.
5. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP271",
    "name": "Nước hoa Jo Malone English Pear & Freesia",
    "brand": "Jo Malone",
    "type": "nước hoa",
    "category": "Fragrance",
    "originalPrice": 3450000,
    "discountPrice": 3277500,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 140,
    "image":
        "https://product.hstatic.net/1000340570/product/en_3b704a137f2a4a0e9e85e77f9ade578e_master.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Nước hoa Jo Malone English Pear & Freesia mang hương thơm tinh tế, kết hợp lê chín mọng và hoa lan Nam Phi.",
    "specs": {
      "Dung tích": "100ml",
      "Kết cấu": "Cologne",
      "Độ lưu hương": "4–6 giờ",
      "Xuất xứ": "Anh",
      "Ngày sản xuất": "06/2025",
      "Hạn sử dụng": "60 tháng kể từ ngày sản xuất",
      "Mã vạch": "6902512710001",
    },
    "ingredients": [
      "Pear – hương lê chín mọng",
      "Freesia – hương hoa lan Nam Phi tinh tế",
      "Patchouli – hương gỗ trầm ấm",
    ],
    "usage": '''
1. Xịt một lượng vừa đủ lên cổ tay, sau tai hoặc vùng cổ để hương thơm lan tỏa tự nhiên.
2. Có thể xịt lên quần áo hoặc tóc để tăng độ lưu hương lâu hơn.
3. Tránh xịt trực tiếp vào mắt hoặc vùng da nhạy cảm.
4. Nên xịt cách da khoảng 10–15cm để hương phân tán đều.
5. Sử dụng vào ban ngày hoặc những dịp đặc biệt để tạo phong cách tinh tế, sang trọng.
6. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP272",
    "name": "Xịt thơm Enchanteur Charming",
    "brand": "Enchanteur",
    "type": "xịt thơm",
    "category": "Fragrance",
    "originalPrice": 95000,
    "discountPrice": 95000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 300,
    "image":
        "https://media.hcdn.vn/wysiwyg/kimhuy/xit-khu-mui-enchanteur-huong-nuoc-hoa-150ml-2.jpg",
    "promotion": null,
    "description":
        "Xịt thơm Enchanteur Charming mang hương thơm ngọt ngào, nữ tính với hoa hồng và vani.",
    "specs": {
      "Dung tích": "150ml",
      "Kết cấu": "Body Mist",
      "Độ lưu hương": "2–4 giờ",
      "Xuất xứ": "Việt Nam",
      "Ngày sản xuất": "08/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "8934862720001",
    },
    "ingredients": [
      "Rose Extract – hương hoa hồng ngọt ngào",
      "Vanilla – hương vani nữ tính",
      "Fragrance – hương thơm tổng hợp",
    ],
    "usage": '''
1. Xịt một lượng vừa đủ lên cơ thể sau khi tắm để hương thơm bám tốt hơn.
2. Có thể xịt nhiều lần trong ngày để duy trì hương thơm.
3. Xịt cách da khoảng 10–15cm để hương lan tỏa đều.
4. Kết hợp với lotion cùng mùi hương để tăng độ lưu hương.
5. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP273",
    "name": "Nước hoa Lancome La Vie Est Belle",
    "brand": "Lancome",
    "type": "nước hoa",
    "category": "Fragrance",
    "originalPrice": 3250000,
    "discountPrice": 3250000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 120,
    "image":
        "https://kyo.vn/wp-content/uploads/2022/08/nuoc-hoa-nu-lancome-la-vie-est-belle-edp-8.jpg",
    "promotion": "Tặng 1 túi mỹ phẩm",
    "description":
        "Nước hoa Lancome La Vie Est Belle mang hương thơm ngọt ngào, sang trọng với hoa diên vĩ, hoa nhài và vani.",
    "specs": {
      "Dung tích": "75ml",
      "Kết cấu": "Eau de Parfum",
      "Độ lưu hương": "7–12 giờ",
      "Xuất xứ": "Pháp",
      "Ngày sản xuất": "07/2025",
      "Hạn sử dụng": "60 tháng kể từ ngày sản xuất",
      "Mã vạch": "3605532730001",
    },
    "ingredients": [
      "Iris – hương hoa diên vĩ sang trọng",
      "Jasmine – hương hoa nhài ngọt ngào",
      "Vanilla – hương vani ấm áp",
    ],
    "usage": '''
1. Xịt một lượng vừa đủ lên cổ tay, sau tai hoặc vùng cổ để hương thơm lan tỏa tự nhiên.
2. Có thể xịt lên quần áo hoặc tóc để tăng độ lưu hương lâu hơn.
3. Tránh xịt trực tiếp vào mắt hoặc vùng da nhạy cảm.
4. Nên xịt cách da khoảng 10–15cm để hương phân tán đều.
5. Sử dụng vào buổi tối hoặc những dịp đặc biệt để tạo phong cách sang trọng, nữ tính.
6. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP274",
    "name": "Xịt thơm Purité Lavender Body Mist",
    "brand": "Purité",
    "type": "xịt thơm",
    "category": "Fragrance",
    "originalPrice": 125000,
    "discountPrice": 125000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 280,
    "image":
        "https://wowmart.vn/wp-content/uploads/2021/02/xit-thom-bath-body-works-lavender-in-bloom-fine-fragrance-mist-236ml-kb.jpg",
    "promotion": null,
    "description":
        "Xịt thơm Purité Lavender Body Mist mang hương oải hương dịu nhẹ, giúp thư giãn và lưu hương nhẹ nhàng.",
    "specs": {
      "Dung tích": "150ml",
      "Kết cấu": "Body Mist",
      "Độ lưu hương": "2–4 giờ",
      "Xuất xứ": "Việt Nam",
      "Ngày sản xuất": "09/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "8934862740001",
    },
    "ingredients": [
      "Lavender Extract – hương oải hương thư giãn",
      "Fragrance – hương thơm tổng hợp",
      "Aloe Vera – làm dịu và cấp ẩm cho da",
    ],
    "usage": '''
1. Xịt một lượng vừa đủ lên cơ thể sau khi tắm để hương thơm bám tốt hơn.
2. Có thể xịt nhiều lần trong ngày để duy trì hương thơm.
3. Xịt cách da khoảng 10–15cm để hương lan tỏa đều.
4. Kết hợp với lotion cùng mùi hương để tăng độ lưu hương.
5. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP275",
    "name": "Nước hoa Bvlgari Omnia Amethyste",
    "brand": "Bvlgari",
    "type": "nước hoa",
    "category": "Fragrance",
    "originalPrice": 2750000,
    "discountPrice": 2475000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 140,
    "image":
        "https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2025/04/nuoc-hoa-bvlgari-omnia-amethyste-edt-100ml-3-jpg-1744248518-10042025082838.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Nước hoa Bvlgari Omnia Amethyste mang hương thơm tinh tế, kết hợp hoa diên vĩ và gỗ hồng mộc.",
    "specs": {
      "Dung tích": "65ml",
      "Kết cấu": "Eau de Toilette",
      "Độ lưu hương": "6–8 giờ",
      "Xuất xứ": "Ý",
      "Ngày sản xuất": "07/2025",
      "Hạn sử dụng": "60 tháng kể từ ngày sản xuất",
      "Mã vạch": "7833202750001",
    },
    "ingredients": [
      "Iris – hương hoa diên vĩ sang trọng",
      "Rosewood – hương gỗ hồng mộc tinh tế",
      "Grapefruit – hương cam chanh tươi mát",
    ],
    "usage": '''
1. Xịt một lượng vừa đủ lên cổ tay, sau tai hoặc vùng cổ để hương thơm lan tỏa tự nhiên.
2. Có thể xịt lên quần áo hoặc tóc để tăng độ lưu hương lâu hơn.
3. Tránh xịt trực tiếp vào mắt hoặc vùng da nhạy cảm.
4. Nên xịt cách da khoảng 10–15cm để hương phân tán đều.
5. Sử dụng vào buổi tối hoặc những dịp đặc biệt để tạo phong cách tinh tế, sang trọng.
6. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP276",
    "name": "Xịt thơm Evoluderm Body Mist Monoï",
    "brand": "Evoluderm",
    "type": "xịt thơm",
    "category": "Fragrance",
    "originalPrice": 165000,
    "discountPrice": 165000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 220,
    "image":
        "https://mint07.com/wp-content/uploads/2019/03/xit-khoang-evoluderm2.jpg",
    "promotion": null,
    "description":
        "Xịt thơm Evoluderm Body Mist Monoï mang hương thơm ngọt ngào của hoa tiare và dầu dừa, lưu hương nhẹ nhàng.",
    "specs": {
      "Dung tích": "250ml",
      "Kết cấu": "Body Mist",
      "Độ lưu hương": "2–4 giờ",
      "Xuất xứ": "Pháp",
      "Ngày sản xuất": "08/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "3760102760001",
    },
    "ingredients": [
      "Tiare Flower Extract – hương hoa tiare ngọt ngào",
      "Coconut Oil – dưỡng ẩm và tạo hương nhiệt đới",
      "Fragrance – hương thơm tổng hợp",
    ],
    "usage": '''
1. Xịt một lượng vừa đủ lên cơ thể sau khi tắm để hương thơm bám tốt hơn.
2. Có thể xịt nhiều lần trong ngày để duy trì hương thơm.
3. Xịt cách da khoảng 10–15cm để hương lan tỏa đều.
4. Kết hợp với lotion cùng mùi hương để tăng độ lưu hương.
5. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP277",
    "name": "Nước hoa Elizabeth Arden Green Tea",
    "brand": "Elizabeth Arden",
    "type": "nước hoa",
    "category": "Fragrance",
    "originalPrice": 1450000,
    "discountPrice": 1377500,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 160,
    "image":
        "https://product.hstatic.net/1000391653/product/lux655-lux191-2_34abc4ec4bd649df96997a7fcc3b5856_large_d69a031f6ebf41358258628b196a677e_grande.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Nước hoa Elizabeth Arden Green Tea mang hương thơm tươi mát, kết hợp trà xanh, cam bergamot và bạc hà.",
    "specs": {
      "Dung tích": "100ml",
      "Kết cấu": "Eau de Toilette",
      "Độ lưu hương": "4–6 giờ",
      "Xuất xứ": "Mỹ",
      "Ngày sản xuất": "06/2025",
      "Hạn sử dụng": "60 tháng kể từ ngày sản xuất",
      "Mã vạch": "0858052770001",
    },
    "ingredients": [
      "Green Tea – hương trà xanh thanh khiết",
      "Bergamot – hương cam chanh tươi mát",
      "Mint – hương bạc hà sảng khoái",
    ],
    "usage": '''
1. Xịt một lượng vừa đủ lên cổ tay, sau tai hoặc vùng cổ để hương thơm lan tỏa tự nhiên.
2. Có thể xịt lên quần áo hoặc tóc để tăng độ lưu hương lâu hơn.
3. Tránh xịt trực tiếp vào mắt hoặc vùng da nhạy cảm.
4. Nên xịt cách da khoảng 10–15cm để hương phân tán đều.
5. Sử dụng vào ban ngày để tạo cảm giác tươi mát, sảng khoái.
6. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP278",
    "name": "Xịt thơm Love Beauty and Planet Body Mist Coconut",
    "brand": "Love Beauty and Planet",
    "type": "xịt thơm",
    "category": "Fragrance",
    "originalPrice": 175000,
    "discountPrice": 175000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 260,
    "image":
        "https://lisa.vn/wp-content/uploads/2024/10/Bath-And-Body-Works-Fresh-Coconut4-1.jpg",
    "promotion": null,
    "description":
        "Xịt thơm Love Beauty and Planet Body Mist Coconut mang hương dừa ngọt ngào, lưu hương nhẹ nhàng.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Body Mist",
      "Độ lưu hương": "2–4 giờ",
      "Xuất xứ": "Mỹ",
      "Ngày sản xuất": "08/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "0810002780001",
    },
    "ingredients": [
      "Coconut Extract – hương dừa ngọt ngào, tạo cảm giác nhiệt đới",
      "Fragrance – hương thơm tổng hợp giúp cân bằng mùi",
      "Aloe Vera – làm dịu và cấp ẩm cho da",
      "Glycerin – giữ ẩm cho da",
      "Vitamin E – chống oxy hóa, bảo vệ da",
    ],
    "usage": '''
1. Xịt một lượng vừa đủ lên cơ thể sau khi tắm để hương thơm bám tốt hơn.
2. Có thể xịt nhiều lần trong ngày để duy trì hương thơm.
3. Xịt cách da khoảng 10–15cm để hương lan tỏa đều.
4. Kết hợp với lotion cùng mùi hương để tăng độ lưu hương.
5. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP279",
    "name": "Nước hoa Narciso Rodriguez For Her",
    "brand": "Narciso Rodriguez",
    "type": "nước hoa",
    "category": "Fragrance",
    "originalPrice": 3550000,
    "discountPrice": 3550000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 120,
    "image":
        "https://kyo.vn/wp-content/uploads/2021/01/nuoc-hoa-nu-Narciso-Rodriguez-Poudree-For-Her-Eau-De-Parfum-M%C3%A0u-H%E1%BB%93ng-Nh%E1%BA%A1t-nap.jpg",
    "promotion": "Tặng 1 hộp quà",
    "description":
        "Nước hoa Narciso Rodriguez For Her mang hương thơm quyến rũ, kết hợp xạ hương, hoa hồng và hổ phách.",
    "specs": {
      "Dung tích": "100ml",
      "Kết cấu": "Eau de Parfum",
      "Độ lưu hương": "7–12 giờ",
      "Xuất xứ": "Mỹ",
      "Ngày sản xuất": "07/2025",
      "Hạn sử dụng": "60 tháng kể từ ngày sản xuất",
      "Mã vạch": "3423472790001",
    },
    "ingredients": [
      "Musk – hương xạ hương quyến rũ, gợi cảm",
      "Rose – hương hoa hồng nữ tính, lãng mạn",
      "Amber – hương hổ phách ấm áp, sang trọng",
      "Patchouli – hương gỗ trầm ấm",
      "Vanilla – tạo chiều sâu hương thơm",
    ],
    "usage": '''
1. Xịt một lượng vừa đủ lên cổ tay, sau tai hoặc vùng cổ để hương thơm lan tỏa tự nhiên.
2. Có thể xịt lên quần áo hoặc tóc để tăng độ lưu hương lâu hơn.
3. Tránh xịt trực tiếp vào mắt hoặc vùng da nhạy cảm.
4. Nên xịt cách da khoảng 10–15cm để hương phân tán đều.
5. Sử dụng vào buổi tối hoặc những dịp đặc biệt để tạo phong cách quyến rũ, sang trọng.
6. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP280",
    "name": "Xịt thơm Skin1004 Madagascar Centella Body Mist",
    "brand": "Skin1004",
    "type": "xịt thơm",
    "category": "Fragrance",
    "originalPrice": 195000,
    "discountPrice": 195000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 200,
    "image":
        "https://skin1004.com.vn/wp-content/uploads/2020/06/skin1004-madagascar-centella-toner.jpg",
    "promotion": null,
    "description":
        "Xịt thơm Skin1004 Madagascar Centella Body Mist mang hương dịu nhẹ, chiết xuất rau má giúp làm dịu da.",
    "specs": {
      "Dung tích": "150ml",
      "Kết cấu": "Body Mist",
      "Độ lưu hương": "2–4 giờ",
      "Xuất xứ": "Hàn Quốc",
      "Ngày sản xuất": "09/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "8809612800001",
    },
    "ingredients": [
      "Centella Asiatica Extract – chiết xuất rau má, làm dịu da",
      "Fragrance – hương thơm tổng hợp",
      "Aloe Vera – cấp ẩm và làm mát da",
      "Glycerin – giữ ẩm cho da",
      "Vitamin C – dưỡng sáng da",
    ],
    "usage": '''
1. Xịt một lượng vừa đủ lên cơ thể sau khi tắm để hương thơm bám tốt hơn.
2. Có thể xịt nhiều lần trong ngày để duy trì hương thơm.
3. Xịt cách da khoảng 10–15cm để hương lan tỏa đều.
4. Kết hợp với lotion cùng mùi hương để tăng độ lưu hương.
5. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP281",
    "name": "Bộ cọ trang điểm Real Techniques Everyday Essentials",
    "brand": "Real Techniques",
    "type": "cọ trang điểm",
    "category": "Tools",
    "originalPrice": 520000,
    "discountPrice": 468000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://media.hcdn.vn/catalog/product/g/o/google-shopping-bo-co-kem-mut-trang-diem-real-techniques-1-mut-4-co_img_450x450_31d6f9_fit_center.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Bộ cọ Real Techniques Everyday Essentials gồm 5 cây cọ đa năng, giúp tạo lớp nền, má hồng và mắt hoàn hảo.",
    "specs": {
      "Số lượng": "5 cây",
      "Chất liệu": "Lông nhân tạo mềm mịn",
      "Loại da phù hợp": "Mọi loại da",
      "Xuất xứ": "Mỹ",
      "Ngày sản xuất": "08/2025",
      "Hạn sử dụng": "Không áp dụng",
      "Mã vạch": "0796252810001",
    },
    "ingredients": [
      "Synthetic Bristles – lông nhân tạo mềm mịn, không gây kích ứng da",
      "Plastic Handle – tay cầm nhựa nhẹ, dễ sử dụng",
      "Aluminum Ferrule – giữ chắc phần lông cọ, chống rụng",
    ],
    "usage": '''
1. Dùng cọ nền để tán kem nền hoặc BB cream đều trên da.
2. Dùng cọ má hồng để tạo sắc hồng tự nhiên cho gò má.
3. Dùng cọ mắt để tán phấn mắt, tạo chiều sâu cho đôi mắt.
4. Vệ sinh cọ thường xuyên bằng dung dịch chuyên dụng để đảm bảo an toàn cho da.
5. Để cọ khô tự nhiên, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP282",
    "name": "Bông tẩy trang Silcot Premium Cotton",
    "brand": "Silcot",
    "type": "bông tẩy trang",
    "category": "Tools",
    "originalPrice": 45000,
    "discountPrice": 45000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 500,
    "image":
        "https://media.hcdn.vn/wysiwyg/Chau/bong-tay-trang-silcot-cao-cap-1.jpg",
    "promotion": null,
    "description":
        "Bông tẩy trang Silcot Premium Cotton mềm mịn, thấm hút tốt, giúp làm sạch lớp trang điểm và bụi bẩn.",
    "specs": {
      "Số lượng": "82 miếng",
      "Chất liệu": "Cotton tự nhiên",
      "Loại da phù hợp": "Mọi loại da",
      "Xuất xứ": "Nhật Bản",
      "Ngày sản xuất": "09/2025",
      "Hạn sử dụng": "Không áp dụng",
      "Mã vạch": "4903112820001",
    },
    "ingredients": [
      "100% Cotton – sợi bông tự nhiên, mềm mịn, an toàn cho da",
      "Không chứa hóa chất tẩy trắng – đảm bảo an toàn khi sử dụng",
    ],
    "usage": '''
1. Thấm nước tẩy trang hoặc toner vào bông để làm sạch lớp trang điểm.
2. Lau nhẹ nhàng toàn mặt theo chiều từ trong ra ngoài để loại bỏ bụi bẩn.
3. Có thể dùng để đắp lotion mask bằng cách thấm toner và đặt lên da 3–5 phút.
4. Bảo quản nơi khô ráo, tránh ẩm mốc.
''',
  },
  {
    "id": "SP283",
    "name": "Máy rửa mặt Foreo Luna Mini 2",
    "brand": "Foreo",
    "type": "dụng cụ skincare",
    "category": "Tools",
    "originalPrice": 2350000,
    "discountPrice": 2350000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 100,
    "image":
        "https://wowmart.vn/wp-content/uploads/2021/04/may-rua-mat-foreo-luna-mini-2-lollipop-pink-ke.jpg",
    "promotion": "Tặng gel rửa mặt",
    "description":
        "Máy rửa mặt Foreo Luna Mini 2 sử dụng công nghệ sóng âm T-Sonic giúp làm sạch sâu và massage da mặt.",
    "specs": {
      "Kích thước": "80 x 80 x 30mm",
      "Chất liệu": "Silicone y tế",
      "Loại da phù hợp": "Mọi loại da",
      "Xuất xứ": "Thụy Điển",
      "Ngày sản xuất": "07/2025",
      "Hạn sử dụng": "Không áp dụng",
      "Mã vạch": "7350092830001",
    },
    "ingredients": [
      "Medical Grade Silicone – chất liệu an toàn, kháng khuẩn",
      "Electronic Components – bộ vi mạch điều khiển sóng âm",
      "Lithium Battery – pin sạc tiện lợi, dùng lâu dài",
    ],
    "usage": '''
1. Làm ướt da mặt và thoa sữa rửa mặt lên da.
2. Bật máy, chọn chế độ rung phù hợp và di chuyển nhẹ nhàng trên da trong 1 phút.
3. Tập trung vùng chữ T và cằm để làm sạch sâu.
4. Rửa lại bằng nước sạch và lau khô bằng khăn mềm.
5. Vệ sinh máy sau mỗi lần sử dụng bằng nước ấm, tránh dùng chất tẩy mạnh.
6. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP284",
    "name": "Cọ trang điểm Vacosi Pro Brush Set",
    "brand": "Vacosi",
    "type": "cọ trang điểm",
    "category": "Tools",
    "originalPrice": 395000,
    "discountPrice": 395000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 200,
    "image":
        "https://mint07.com/wp-content/uploads/2021/02/co-vacosi-dong-m.jpg",
    "promotion": null,
    "description":
        "Bộ cọ trang điểm Vacosi Pro Brush Set gồm nhiều loại cọ chuyên dụng, giúp tạo lớp nền, má hồng và mắt hoàn hảo.",
    "specs": {
      "Số lượng": "7 cây",
      "Chất liệu": "Lông nhân tạo mềm mịn",
      "Loại da phù hợp": "Mọi loại da",
      "Xuất xứ": "Hàn Quốc",
      "Ngày sản xuất": "08/2025",
      "Hạn sử dụng": "Không áp dụng",
      "Mã vạch": "8809612840001",
    },
    "ingredients": [
      "Synthetic Bristles – lông nhân tạo mềm mịn, không gây kích ứng da",
      "Wooden Handle – tay cầm gỗ chắc chắn, dễ cầm nắm",
      "Aluminum Ferrule – giữ chặt phần lông cọ, chống rụng",
    ],
    "usage": '''
1. Dùng cọ nền để tán kem nền hoặc BB cream đều trên da.
2. Dùng cọ má hồng để tạo sắc hồng tự nhiên cho gò má.
3. Dùng cọ mắt để tán phấn mắt, tạo chiều sâu cho đôi mắt.
4. Vệ sinh cọ thường xuyên bằng dung dịch chuyên dụng để đảm bảo an toàn cho da.
5. Để cọ khô tự nhiên, tránh ánh nắng trực tiếp và nhiệt độ cao.
6. Bảo quản trong hộp hoặc túi cọ để giữ vệ sinh và tránh bụi bẩn.
''',
  },
  {
    "id": "SP285",
    "name": "Bông tẩy trang Ipek Cotton Pads",
    "brand": "Ipek",
    "type": "bông tẩy trang",
    "category": "Tools",
    "originalPrice": 35000,
    "discountPrice": 35000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 400,
    "image":
        "https://product.hstatic.net/200000150709/product/btt_ipek__1__9347601360cb40a09eda15fceba919fe_1024x1024_d8d450d3b41a4bf2ab9e080baa8582aa.jpg",
    "promotion": "Mua 2 tặng 1",
    "description":
        "Bông tẩy trang Ipek Cotton Pads mềm mịn, thấm hút tốt, giúp làm sạch lớp trang điểm và bụi bẩn.",
    "specs": {
      "Số lượng": "100 miếng",
      "Chất liệu": "Cotton tự nhiên",
      "Loại da phù hợp": "Mọi loại da",
      "Xuất xứ": "Thổ Nhĩ Kỳ",
      "Ngày sản xuất": "09/2025",
      "Hạn sử dụng": "Không áp dụng",
      "Mã vạch": "8691212850001",
    },
    "ingredients": [
      "100% Cotton – sợi bông tự nhiên, mềm mịn, an toàn cho da",
      "Không chứa hóa chất tẩy trắng – đảm bảo an toàn khi sử dụng",
      "Thân thiện môi trường – dễ phân hủy sinh học",
    ],
    "usage": '''
1. Thấm nước tẩy trang hoặc toner vào bông để làm sạch lớp trang điểm.
2. Lau nhẹ nhàng toàn mặt theo chiều từ trong ra ngoài để loại bỏ bụi bẩn.
3. Có thể dùng để đắp lotion mask bằng cách thấm toner và đặt lên da 3–5 phút.
4. Dùng để lau sạch móng tay sau khi tẩy sơn.
5. Bảo quản nơi khô ráo, tránh ẩm mốc.
''',
  },
  {
    "id": "SP286",
    "name": "Dụng cụ massage mặt đá ngọc bích",
    "brand": "Jade Roller",
    "type": "dụng cụ skincare",
    "category": "Tools",
    "originalPrice": 165000,
    "discountPrice": 165000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 220,
    "image":
        "https://trangsucdaquy.vn/wp-content/uploads/2018/08/Bo-massage-da-thach-anh-hong.jpg",
    "promotion": null,
    "description":
        "Dụng cụ massage mặt đá ngọc bích giúp làm dịu da, giảm sưng và hỗ trợ hấp thụ dưỡng chất.",
    "specs": {
      "Kích thước": "15cm",
      "Chất liệu": "Đá ngọc bích tự nhiên",
      "Loại da phù hợp": "Mọi loại da",
      "Xuất xứ": "Trung Quốc",
      "Ngày sản xuất": "07/2025",
      "Hạn sử dụng": "Không áp dụng",
      "Mã vạch": "6921212860001",
    },
    "ingredients": [
      "Natural Jade Stone – đá ngọc bích tự nhiên, làm dịu da và giảm sưng",
      "Metal Handle – tay cầm kim loại chắc chắn, dễ sử dụng",
      "Dual Roller Design – thiết kế hai đầu lăn cho vùng mắt và vùng má",
    ],
    "usage": '''
1. Sau khi thoa serum hoặc kem dưỡng, lăn nhẹ nhàng trên da mặt để dưỡng chất thấm sâu.
2. Dùng đầu nhỏ cho vùng mắt để giảm bọng mắt và quầng thâm.
3. Dùng đầu lớn cho vùng má và trán để làm dịu da và giảm sưng.
4. Lăn từ trong ra ngoài và từ dưới lên trên để nâng cơ mặt.
5. Vệ sinh dụng cụ sau mỗi lần sử dụng bằng khăn mềm hoặc nước ấm.
6. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP287",
    "name": "Cọ tán nền E.L.F Ultimate Blending Brush",
    "brand": "E.L.F",
    "type": "cọ trang điểm",
    "category": "Tools",
    "originalPrice": 185000,
    "discountPrice": 175750,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 220,
    "image":
        "https://product.hstatic.net/200000205129/product/elf_-_xit_makeup___primer___blush_halo___camo_blush__5__dec5930ac47b492e9cfe45ce5f931ec9.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Cọ tán nền E.L.F Ultimate Blending Brush với lông mềm mịn, giúp tán kem nền đều và mịn.",
    "specs": {
      "Chiều dài": "15cm",
      "Chất liệu": "Lông nhân tạo",
      "Loại da phù hợp": "Mọi loại da",
      "Xuất xứ": "Mỹ",
      "Ngày sản xuất": "08/2025",
      "Hạn sử dụng": "Không áp dụng",
      "Mã vạch": "6093322870001",
    },
    "ingredients": [
      "Synthetic Bristles – lông nhân tạo mềm mịn, không gây kích ứng da",
      "Plastic Handle – tay cầm nhựa nhẹ, dễ sử dụng",
      "Aluminum Ferrule – giữ chắc phần lông cọ, chống rụng",
    ],
    "usage": '''
1. Lấy một lượng kem nền hoặc BB cream vừa đủ.
2. Dùng cọ tán đều lên mặt theo chuyển động tròn để lớp nền mịn và đều màu.
3. Có thể dùng để tán phấn phủ hoặc bronzer cho hiệu ứng tự nhiên.
4. Vệ sinh cọ thường xuyên bằng dung dịch chuyên dụng để đảm bảo an toàn cho da.
5. Để cọ khô tự nhiên, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP288",
    "name": "Bông tẩy trang Miniso Cotton Pads",
    "brand": "Miniso",
    "type": "bông tẩy trang",
    "category": "Tools",
    "originalPrice": 29000,
    "discountPrice": 29000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 500,
    "image":
        "https://ansancosmetics.com/upload/images_product/sub_images/120370353_2771744433092447_5540367954431228496_n_20201001045419.jpg",
    "promotion": null,
    "description":
        "Bông tẩy trang Miniso Cotton Pads mềm mại, thấm hút tốt, phù hợp cho việc tẩy trang và dưỡng da.",
    "specs": {
      "Số lượng": "80 miếng",
      "Chất liệu": "Cotton tự nhiên",
      "Loại da phù hợp": "Mọi loại da",
      "Xuất xứ": "Trung Quốc",
      "Ngày sản xuất": "09/2025",
      "Hạn sử dụng": "Không áp dụng",
      "Mã vạch": "6971052880001",
    },
    "ingredients": [
      "100% Cotton – sợi bông tự nhiên, mềm mịn, an toàn cho da",
      "Không chứa hóa chất tẩy trắng – đảm bảo an toàn khi sử dụng",
      "Thân thiện môi trường – dễ phân hủy sinh học",
    ],
    "usage": '''
1. Thấm nước tẩy trang hoặc toner vào bông để làm sạch lớp trang điểm.
2. Lau nhẹ nhàng toàn mặt theo chiều từ trong ra ngoài để loại bỏ bụi bẩn.
3. Có thể dùng để đắp lotion mask bằng cách thấm toner và đặt lên da 3–5 phút.
4. Dùng để lau sạch móng tay sau khi tẩy sơn.
5. Bảo quản nơi khô ráo, tránh ẩm mốc.
''',
  },
  {
    "id": "SP289",
    "name": "Máy hút mụn Xiaomi InFace",
    "brand": "Xiaomi",
    "type": "dụng cụ skincare",
    "category": "Tools",
    "originalPrice": 495000,
    "discountPrice": 445500,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 150,
    "image":
        "https://img.gigadigital.vn/image/1681808007095-may-hut-mun-dau-den-ket-noi-wifi-inface-cf-05e-10.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Máy hút mụn Xiaomi InFace sử dụng công nghệ hút chân không giúp loại bỏ mụn đầu đen và dầu thừa.",
    "specs": {
      "Kích thước": "160 x 40mm",
      "Chất liệu": "Nhựa ABS",
      "Loại da phù hợp": "Da dầu, da mụn",
      "Xuất xứ": "Trung Quốc",
      "Ngày sản xuất": "07/2025",
      "Hạn sử dụng": "Không áp dụng",
      "Mã vạch": "6970242890001",
    },
    "ingredients": [
      "ABS Plastic – chất liệu nhựa bền, nhẹ",
      "Electronic Components – bộ vi mạch điều khiển hút chân không",
      "Vacuum Pump – tạo lực hút loại bỏ mụn đầu đen và dầu thừa",
      "Rechargeable Battery – pin sạc tiện lợi, dùng lâu dài",
    ],
    "usage": '''
1. Rửa mặt sạch và xông hơi để mở lỗ chân lông trước khi sử dụng.
2. Bật máy, chọn chế độ hút phù hợp và di chuyển nhẹ nhàng trên vùng da cần làm sạch.
3. Không để máy cố định quá lâu trên một điểm để tránh gây tổn thương da.
4. Sau khi sử dụng, rửa mặt lại bằng nước mát để se khít lỗ chân lông.
5. Vệ sinh đầu hút sau mỗi lần sử dụng bằng nước ấm hoặc dung dịch chuyên dụng.
6. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP290",
    "name": "Cọ đánh mắt Morphe Eye Brush Set",
    "brand": "Morphe",
    "type": "cọ trang điểm",
    "category": "Tools",
    "originalPrice": 620000,
    "discountPrice": 620000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 180,
    "image":
        "https://sg-live-01.slatic.net/p/f14412ebe12c9b742fc2661751bd5aa1.jpg_525x525q80.jpg",
    "promotion": null,
    "description":
        "Bộ cọ đánh mắt Morphe Eye Brush Set gồm nhiều loại cọ chuyên dụng cho trang điểm mắt.",
    "specs": {
      "Số lượng": "6 cây",
      "Chất liệu": "Lông nhân tạo mềm mịn",
      "Loại da phù hợp": "Mọi loại da",
      "Xuất xứ": "Mỹ",
      "Ngày sản xuất": "08/2025",
      "Hạn sử dụng": "Không áp dụng",
      "Mã vạch": "6356352900001",
    },
    "ingredients": [
      "Synthetic Bristles – lông nhân tạo mềm mịn, không gây kích ứng da",
      "Wooden Handle – tay cầm gỗ chắc chắn, dễ cầm nắm",
      "Aluminum Ferrule – giữ chặt phần lông cọ, chống rụng",
    ],
    "usage": '''
1. Dùng cọ để tán phấn mắt, kẻ viền hoặc tạo khối cho mắt.
2. Kết hợp nhiều loại cọ để tạo phong cách trang điểm đa dạng: từ tự nhiên đến cá tính.
3. Dùng cọ nhỏ để nhấn nhá góc mắt, cọ lớn để tán màu nền.
4. Vệ sinh cọ thường xuyên bằng dung dịch chuyên dụng để đảm bảo an toàn cho da.
5. Để cọ khô tự nhiên, tránh ánh nắng trực tiếp và nhiệt độ cao.
6. Bảo quản trong hộp hoặc túi cọ để giữ vệ sinh và tránh bụi bẩn.
''',
  },
  {
    "id": "SP291",
    "name": "Bông tẩy trang Lameila Cotton Puff",
    "brand": "Lameila",
    "type": "bông tẩy trang",
    "category": "Tools",
    "originalPrice": 32000,
    "discountPrice": 32000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 400,
    "image":
        "https://product.hstatic.net/1000006063/product/1269_2d2f99a9e2b94f1d91b08cb325e518e5_1024x1024.jpg",
    "promotion": "Tặng 1 túi zip",
    "description":
        "Bông tẩy trang Lameila Cotton Puff mềm mại, thấm hút tốt, giúp làm sạch lớp trang điểm và bụi bẩn.",
    "specs": {
      "Số lượng": "100 miếng",
      "Chất liệu": "Cotton tự nhiên",
      "Loại da phù hợp": "Mọi loại da",
      "Xuất xứ": "Trung Quốc",
      "Ngày sản xuất": "09/2025",
      "Hạn sử dụng": "Không áp dụng",
      "Mã vạch": "6971052910001",
    },
    "ingredients": [
      "100% Cotton – sợi bông tự nhiên, mềm mịn, an toàn cho da",
      "Không chứa hóa chất tẩy trắng – đảm bảo an toàn khi sử dụng",
      "Thân thiện môi trường – dễ phân hủy sinh học",
    ],
    "usage": '''
1. Thấm nước tẩy trang hoặc toner vào bông để làm sạch lớp trang điểm.
2. Lau nhẹ nhàng toàn mặt theo chiều từ trong ra ngoài để loại bỏ bụi bẩn.
3. Có thể dùng để đắp lotion mask bằng cách thấm toner và đặt lên da 3–5 phút.
4. Dùng để lau sạch móng tay sau khi tẩy sơn.
5. Bảo quản nơi khô ráo, tránh ẩm mốc.
''',
  },
  {
    "id": "SP292",
    "name": "Dụng cụ massage nâng cơ mặt Refa Carat",
    "brand": "Refa",
    "type": "dụng cụ skincare",
    "category": "Tools",
    "originalPrice": 3950000,
    "discountPrice": 3950000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 100,
    "image":
        "https://img.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2020/06/review-chi-tiet-cay-lan-massage-refa-carat-4-min-jpg-1592452595-18062020105635.jpg",
    "promotion": null,
    "description":
        "Dụng cụ massage nâng cơ mặt Refa Carat với thiết kế con lăn bạch kim giúp nâng cơ, làm săn chắc và cải thiện độ đàn hồi da.",
    "specs": {
      "Kích thước": "92 x 149 x 61mm",
      "Chất liệu": "Bạch kim mạ",
      "Loại da phù hợp": "Mọi loại da",
      "Xuất xứ": "Nhật Bản",
      "Ngày sản xuất": "07/2025",
      "Hạn sử dụng": "Không áp dụng",
      "Mã vạch": "4582132920001",
    },
    "ingredients": [
      "Platinum Coating – lớp mạ bạch kim chống oxy hóa, bền bỉ",
      "ABS Resin – nhựa ABS chắc chắn, nhẹ",
      "Dual Roller Design – thiết kế hai con lăn giúp nâng cơ và massage đều",
    ],
    "usage": '''
1. Sau khi thoa serum hoặc kem dưỡng, lăn nhẹ nhàng trên da mặt để dưỡng chất thấm sâu.
2. Dùng cho vùng má, cằm và cổ để nâng cơ, làm săn chắc da.
3. Lăn từ trong ra ngoài và từ dưới lên trên để nâng cơ mặt.
4. Có thể dùng cho vùng cổ để giảm căng thẳng và cải thiện độ đàn hồi.
5. Vệ sinh dụng cụ sau mỗi lần sử dụng bằng khăn mềm hoặc nước ấm.
6. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP293",
    "name": "Cọ phủ phấn BH Cosmetics Large Powder Brush",
    "brand": "BH Cosmetics",
    "type": "cọ trang điểm",
    "category": "Tools",
    "originalPrice": 215000,
    "discountPrice": 204250,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://www.bocotrangdiem.net/upload/Images/BH-COSMETICS-NOI-DUNG/Bo-co-trang-diem-bh-cosmetics-pretty-in-pink-10-piece%2004.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Cọ phủ phấn BH Cosmetics Large Powder Brush với lông mềm mịn, giúp phủ phấn đều và mịn trên da.",
    "specs": {
      "Chiều dài": "18cm",
      "Chất liệu": "Lông nhân tạo",
      "Loại da phù hợp": "Mọi loại da",
      "Xuất xứ": "Mỹ",
      "Ngày sản xuất": "08/2025",
      "Hạn sử dụng": "Không áp dụng",
      "Mã vạch": "8499532930001",
    },
    "ingredients": [
      "Synthetic Bristles – lông nhân tạo mềm mịn, không gây kích ứng da",
      "Wooden Handle – tay cầm gỗ chắc chắn, dễ cầm nắm",
      "Aluminum Ferrule – giữ chặt phần lông cọ, chống rụng",
    ],
    "usage": '''
1. Dùng cọ để lấy một lượng phấn vừa đủ.
2. Phủ đều lên mặt theo chuyển động tròn để tạo lớp nền mịn màng.
3. Có thể dùng để phủ phấn phủ hoặc bronzer cho hiệu ứng tự nhiên.
4. Vệ sinh cọ thường xuyên bằng dung dịch chuyên dụng để đảm bảo an toàn cho da.
5. Để cọ khô tự nhiên, tránh ánh nắng trực tiếp và nhiệt độ cao.
6. Bảo quản trong hộp hoặc túi cọ để giữ vệ sinh và tránh bụi bẩn.
''',
  },
  {
    "id": "SP294",
    "name": "Bông tẩy trang Guardian Soft Cotton",
    "brand": "Guardian",
    "type": "bông tẩy trang",
    "category": "Tools",
    "originalPrice": 39000,
    "discountPrice": 39000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 450,
    "image":
        "https://vn-test-11.slatic.net/p/e2dfb657822b1f2f30604b8ca264e059.jpg",
    "promotion": null,
    "description":
        "Bông tẩy trang Guardian Soft Cotton mềm mại, thấm hút tốt, phù hợp cho việc tẩy trang và dưỡng da.",
    "specs": {
      "Số lượng": "100 miếng",
      "Chất liệu": "Cotton tự nhiên",
      "Loại da phù hợp": "Mọi loại da",
      "Xuất xứ": "Việt Nam",
      "Ngày sản xuất": "09/2025",
      "Hạn sử dụng": "Không áp dụng",
      "Mã vạch": "8934862940001",
    },
    "ingredients": [
      "100% Cotton – sợi bông tự nhiên, mềm mịn, an toàn cho da",
      "Không chứa hóa chất tẩy trắng – đảm bảo an toàn khi sử dụng",
      "Thân thiện môi trường – dễ phân hủy sinh học",
    ],
    "usage": '''
1. Thấm nước tẩy trang hoặc toner vào bông để làm sạch lớp trang điểm.
2. Lau nhẹ nhàng toàn mặt theo chiều từ trong ra ngoài để loại bỏ bụi bẩn.
3. Có thể dùng để đắp lotion mask bằng cách thấm toner và đặt lên da 3–5 phút.
4. Dùng để lau sạch móng tay sau khi tẩy sơn.
5. Bảo quản nơi khô ráo, tránh ẩm mốc.
''',
  },
  {
    "id": "SP295",
    "name": "Máy xông mặt Kingdom KD-233",
    "brand": "Kingdom",
    "type": "dụng cụ skincare",
    "category": "Tools",
    "originalPrice": 650000,
    "discountPrice": 650000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 120,
    "image":
        "https://myphambo.com/wp-content/uploads/2016/06/May-xong-mat-kingdom-kd-2331-5.jpg",
    "promotion": "Tặng 1 mặt nạ giấy",
    "description":
        "Máy xông mặt Kingdom KD-233 giúp làm sạch sâu, mở lỗ chân lông và hỗ trợ hấp thụ dưỡng chất.",
    "specs": {
      "Kích thước": "210 x 140 x 180mm",
      "Chất liệu": "Nhựa ABS",
      "Loại da phù hợp": "Mọi loại da",
      "Xuất xứ": "Trung Quốc",
      "Ngày sản xuất": "07/2025",
      "Hạn sử dụng": "Không áp dụng",
      "Mã vạch": "6921212950001",
    },
    "ingredients": [
      "ABS Plastic – chất liệu nhựa bền, nhẹ",
      "Electronic Components – bộ vi mạch điều khiển hơi nước",
      "Water Tank – bình chứa nước dung tích lớn",
      "Steam Nozzle – đầu phun hơi nước đều và ổn định",
    ],
    "usage": '''
1. Đổ nước sạch vào bình chứa, có thể thêm vài giọt tinh dầu để thư giãn.
2. Bật máy và xông hơi mặt trong 5–10 phút để mở lỗ chân lông.
3. Sau khi xông, thoa serum hoặc kem dưỡng để tăng hiệu quả hấp thụ.
4. Vệ sinh bình chứa và đầu phun sau mỗi lần sử dụng để tránh vi khuẩn.
5. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP296",
    "name": "Cọ má hồng FOCALLURE Blush Brush",
    "brand": "FOCALLURE",
    "type": "cọ trang điểm",
    "category": "Tools",
    "originalPrice": 145000,
    "discountPrice": 145000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 250,
    "image":
        "https://product.hstatic.net/200000793379/product/noi_dung_tung_co_jary_2-02_4b93510c72c64b459825e13228bcf246_master.jpg",
    "promotion": null,
    "description":
        "Cọ má hồng FOCALLURE Blush Brush với lông mềm mịn, giúp tán má hồng đều và tự nhiên.",
    "specs": {
      "Chiều dài": "16cm",
      "Chất liệu": "Lông nhân tạo",
      "Loại da phù hợp": "Mọi loại da",
      "Xuất xứ": "Trung Quốc",
      "Ngày sản xuất": "08/2025",
      "Hạn sử dụng": "Không áp dụng",
      "Mã vạch": "6971052960001",
    },
    "ingredients": [
      "Synthetic Bristles – lông nhân tạo mềm mịn, không gây kích ứng da",
      "Wooden Handle – tay cầm gỗ chắc chắn, dễ cầm nắm",
      "Aluminum Ferrule – giữ chặt phần lông cọ, chống rụng",
    ],
    "usage": '''
1. Dùng cọ để lấy một lượng má hồng vừa đủ.
2. Tán đều lên gò má theo chuyển động tròn để tạo hiệu ứng tự nhiên.
3. Có thể dùng để tán bronzer hoặc highlighter cho gương mặt thêm sắc nét.
4. Vệ sinh cọ thường xuyên bằng dung dịch chuyên dụng để đảm bảo an toàn cho da.
5. Để cọ khô tự nhiên, tránh ánh nắng trực tiếp và nhiệt độ cao.
6. Bảo quản trong hộp hoặc túi cọ để giữ vệ sinh và tránh bụi bẩn.
''',
  },
  {
    "id": "SP297",
    "name": "Bông tẩy trang Muji Cut Cotton",
    "brand": "Muji",
    "type": "bông tẩy trang",
    "category": "Tools",
    "originalPrice": 85000,
    "discountPrice": 76500,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 500,
    "image":
        "https://www.shopnhatchaly.com/wp-content/uploads/2017/09/Bong-tay-trang-tach-lop-Muji-4-1200x1200.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Bông tẩy trang Muji Cut Cotton mềm mại, thấm hút tốt, phù hợp cho việc tẩy trang và dưỡng da.",
    "specs": {
      "Số lượng": "180 miếng",
      "Chất liệu": "Cotton tự nhiên",
      "Loại da phù hợp": "Mọi loại da",
      "Xuất xứ": "Nhật Bản",
      "Ngày sản xuất": "09/2025",
      "Hạn sử dụng": "Không áp dụng",
      "Mã vạch": "4547312970001",
    },
    "ingredients": [
      "100% Cotton – sợi bông tự nhiên, mềm mịn, an toàn cho da",
      "Không chứa hóa chất tẩy trắng – đảm bảo an toàn khi sử dụng",
      "Thân thiện môi trường – dễ phân hủy sinh học",
    ],
    "usage": '''
1. Thấm nước tẩy trang hoặc toner vào bông để làm sạch lớp trang điểm.
2. Lau nhẹ nhàng toàn mặt theo chiều từ trong ra ngoài để loại bỏ bụi bẩn.
3. Có thể dùng để đắp lotion mask bằng cách thấm toner và đặt lên da 3–5 phút.
4. Dùng để lau sạch móng tay sau khi tẩy sơn.
5. Bảo quản nơi khô ráo, tránh ẩm mốc.
''',
  },
  {
    "id": "SP298",
    "name": "Dụng cụ lăn lạnh mặt bằng thép không gỉ",
    "brand": "Cool Roller",
    "type": "dụng cụ skincare",
    "category": "Tools",
    "originalPrice": 175000,
    "discountPrice": 175000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 220,
    "image":
        "https://okbuy.vn/upload/images/large/Con-lan-massage-nang-co-mat-3D-tao-cam-Vline-bong-doi-NK-125G-1710556038.jpg",
    "promotion": null,
    "description":
        "Dụng cụ lăn lạnh mặt bằng thép không gỉ giúp làm dịu da, giảm sưng và hỗ trợ hấp thụ dưỡng chất.",
    "specs": {
      "Kích thước": "15cm",
      "Chất liệu": "Thép không gỉ",
      "Loại da phù hợp": "Mọi loại da",
      "Xuất xứ": "Trung Quốc",
      "Ngày sản xuất": "07/2025",
      "Hạn sử dụng": "Không áp dụng",
      "Mã vạch": "6921212980001",
    },
    "ingredients": [
      "Stainless Steel – thép không gỉ, giữ lạnh lâu, giúp làm dịu da",
      "Plastic Handle – tay cầm nhựa nhẹ, dễ sử dụng",
      "Dual Roller Design – thiết kế hai đầu lăn cho vùng mắt và vùng má",
    ],
    "usage": '''
1. Sau khi thoa serum hoặc kem dưỡng, lăn nhẹ nhàng trên da mặt để dưỡng chất thấm sâu.
2. Dùng cho vùng má, cằm và trán để làm dịu da và giảm sưng.
3. Dùng đầu nhỏ cho vùng mắt để giảm bọng mắt và quầng thâm.
4. Lăn từ trong ra ngoài và từ dưới lên trên để nâng cơ mặt.
5. Vệ sinh dụng cụ sau mỗi lần sử dụng bằng khăn mềm hoặc nước ấm.
6. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP299",
    "name": "Cọ nền Wet n Wild Flat Top Brush",
    "brand": "Wet n Wild",
    "type": "cọ trang điểm",
    "category": "Tools",
    "originalPrice": 95000,
    "discountPrice": 90250,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 300,
    "image":
        "https://img.lazcdn.com/g/p/7d22a85ca9e2f6c3fa0fa7b4a7007a5c.jpg_720x720q80.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Cọ nền Wet n Wild Flat Top Brush với lông mềm mịn, giúp tán kem nền đều và mịn.",
    "specs": {
      "Chiều dài": "15cm",
      "Chất liệu": "Lông nhân tạo",
      "Loại da phù hợp": "Mọi loại da",
      "Xuất xứ": "Mỹ",
      "Ngày sản xuất": "08/2025",
      "Hạn sử dụng": "Không áp dụng",
      "Mã vạch": "0778022990001",
    },
    "ingredients": [
      "Synthetic Bristles – lông nhân tạo mềm mịn, không gây kích ứng da",
      "Plastic Handle – tay cầm nhựa nhẹ, dễ sử dụng",
      "Aluminum Ferrule – giữ chặt phần lông cọ, chống rụng",
    ],
    "usage": '''
1. Lấy một lượng kem nền vừa đủ.
2. Dùng cọ tán đều lên mặt theo chuyển động tròn để lớp nền mịn và đều màu.
3. Có thể dùng để tán phấn phủ hoặc bronzer cho hiệu ứng tự nhiên.
4. Vệ sinh cọ thường xuyên bằng dung dịch chuyên dụng để đảm bảo an toàn cho da.
5. Để cọ khô tự nhiên, tránh ánh nắng trực tiếp và nhiệt độ cao.
6. Bảo quản trong hộp hoặc túi cọ để giữ vệ sinh và tránh bụi bẩn.
''',
  },
  {
    "id": "SP300",
    "name": "Bông tẩy trang Emily Cotton Pads",
    "brand": "Emily",
    "type": "bông tẩy trang",
    "category": "Tools",
    "originalPrice": 28000,
    "discountPrice": 28000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 500,
    "image":
        "https://linkstore.vn/wp-content/uploads/2023/04/Bong-tay-trang-Emily-Wattepads-120-mieng-7.jpg",
    "promotion": null,
    "description":
        "Bông tẩy trang Emily Cotton Pads mềm mại, thấm hút tốt, phù hợp cho việc tẩy trang và dưỡng da.",
    "specs": {
      "Số lượng": "100 miếng",
      "Chất liệu": "Cotton tự nhiên",
      "Loại da phù hợp": "Mọi loại da",
      "Xuất xứ": "Việt Nam",
      "Ngày sản xuất": "09/2025",
      "Hạn sử dụng": "Không áp dụng",
      "Mã vạch": "8934863000001",
    },
    "ingredients": [
      "100% Cotton – sợi bông tự nhiên, mềm mịn, an toàn cho da",
      "Không chứa hóa chất tẩy trắng – đảm bảo an toàn khi sử dụng",
      "Thân thiện môi trường – dễ phân hủy sinh học",
    ],
    "usage": '''
1. Thấm nước tẩy trang hoặc toner vào bông để làm sạch lớp trang điểm.
2. Lau nhẹ nhàng toàn mặt theo chiều từ trong ra ngoài để loại bỏ bụi bẩn.
3. Có thể dùng để đắp lotion mask bằng cách thấm toner và đặt lên da 3–5 phút.
4. Dùng để lau sạch móng tay sau khi tẩy sơn.
5. Bảo quản nơi khô ráo, tránh ẩm mốc.
''',
  },
  {
    "id": "SP301",
    "name": "Viên uống đẹp da Blackmores Radiance",
    "brand": "Blackmores",
    "type": "thực phẩm chức năng",
    "category": "Khác",
    "originalPrice": 450000,
    "discountPrice": 405000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 150,
    "image":
        "https://product.hstatic.net/200000713511/product/eu-dung-cua-tinh-dau-hoa-anh-thao-blackmores-evening-primrose-190-vien_481256db9f18419bbdeb7cde86c59281.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Viên uống Blackmores Radiance bổ sung dưỡng chất giúp cải thiện làn da, hỗ trợ chống oxy hóa và làm đẹp từ bên trong.",
    "specs": {
      "Quy cách": "Hộp 60 viên",
      "Dạng": "Viên nang",
      "Đối tượng phù hợp": "Người trưởng thành",
      "Xuất xứ": "Úc",
      "Ngày sản xuất": "07/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "9300803010001",
    },
    "ingredients": [
      "Vitamin C – chống oxy hóa, hỗ trợ sản xuất collagen",
      "Vitamin E – bảo vệ da khỏi tác hại của gốc tự do",
      "Collagen – cải thiện độ đàn hồi và săn chắc da",
      "Zinc – hỗ trợ quá trình tái tạo da",
      "Grape Seed Extract – tăng cường khả năng chống oxy hóa",
    ],
    "usage": '''
1. Uống 1–2 viên mỗi ngày sau bữa ăn để tăng khả năng hấp thụ.
2. Sử dụng đều đặn trong ít nhất 2–3 tháng để đạt hiệu quả tốt nhất.
3. Kết hợp với chế độ ăn uống lành mạnh và uống đủ nước để tối ưu hiệu quả.
4. Không dùng quá liều khuyến nghị, tham khảo ý kiến bác sĩ nếu đang mang thai hoặc cho con bú.
5. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP302",
    "name": "Khẩu trang 3D Mask KF94",
    "brand": "3D Mask",
    "type": "khẩu trang",
    "category": "Khác",
    "originalPrice": 55000,
    "discountPrice": 55000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 600,
    "image": "https://gumi.vn/wp-content/uploads/2023/10/11-1.jpg",
    "promotion": null,
    "description":
        "Khẩu trang 3D Mask KF94 với thiết kế ôm sát, lọc bụi mịn và vi khuẩn hiệu quả.",
    "specs": {
      "Quy cách": "Hộp 10 cái",
      "Chất liệu": "Vải không dệt, lớp lọc KF94",
      "Đối tượng phù hợp": "Người lớn",
      "Xuất xứ": "Hàn Quốc",
      "Ngày sản xuất": "09/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "8809613020001",
    },
    "ingredients": [
      "Non-woven Fabric – lớp ngoài chống bụi và giọt bắn",
      "Melt-blown Filter – lớp lọc KF94 ngăn bụi mịn và vi khuẩn",
      "Soft Inner Layer – lớp trong mềm mại, thoáng khí, không gây kích ứng da",
    ],
    "usage": '''
1. Đeo khẩu trang che kín mũi và miệng, điều chỉnh dây đeo cho vừa vặn.
2. Bóp nhẹ phần nẹp mũi để khẩu trang ôm sát khuôn mặt.
3. Thay khẩu trang sau mỗi lần sử dụng hoặc khi bẩn, ẩm ướt.
4. Không tái sử dụng khẩu trang dùng một lần.
5. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP303",
    "name": "Nước súc miệng Listerine Cool Mint",
    "brand": "Listerine",
    "type": "nước súc miệng",
    "category": "Khác",
    "originalPrice": 95000,
    "discountPrice": 95000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 400,
    "image":
        "https://media.hcdn.vn/catalog/product/f/a/facebook-dynamic-nuoc-suc-mieng-listerine-hoi-tho-thom-mat-100ml-1709002180_img_450x450_31d6f9_fit_center.jpg",
    "promotion": "Tặng 1 chai mini",
    "description":
        "Nước súc miệng Listerine Cool Mint giúp diệt khuẩn, làm sạch khoang miệng và mang lại hơi thở thơm mát.",
    "specs": {
      "Dung tích": "500ml",
      "Kết cấu": "Dung dịch lỏng",
      "Đối tượng phù hợp": "Người lớn",
      "Xuất xứ": "Mỹ",
      "Ngày sản xuất": "08/2025",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Mã vạch": "3125473030001",
    },
    "ingredients": [
      "Menthol – tạo cảm giác mát lạnh, thơm miệng",
      "Thymol – kháng khuẩn, hỗ trợ làm sạch khoang miệng",
      "Eucalyptol – kháng viêm, giảm mảng bám",
      "Methyl Salicylate – hỗ trợ giảm viêm nướu",
      "Alcohol – dung môi giúp hòa tan tinh dầu kháng khuẩn",
    ],
    "usage": '''
1. Súc miệng với 20ml dung dịch trong 30 giây, không nuốt.
2. Sử dụng 2 lần/ngày sau khi đánh răng để duy trì hơi thở thơm mát.
3. Không dùng cho trẻ em dưới 12 tuổi nếu không có chỉ định của bác sĩ.
4. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP304",
    "name": "Dầu massage thư giãn Aroma Therapy",
    "brand": "Aroma Therapy",
    "type": "dầu massage",
    "category": "Khác",
    "originalPrice": 165000,
    "discountPrice": 165000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 250,
    "image":
        "https://product.hstatic.net/200000355161/product/80b26822b26c6f32367d_d9ed8744ccef43809d7ff2f221bb2cb7_master.jpg",
    "promotion": null,
    "description":
        "Dầu massage thư giãn Aroma Therapy với hương tinh dầu tự nhiên giúp giảm căng thẳng và thư giãn cơ thể.",
    "specs": {
      "Dung tích": "100ml",
      "Kết cấu": "Dầu lỏng",
      "Loại da phù hợp": "Mọi loại da",
      "Xuất xứ": "Thái Lan",
      "Ngày sản xuất": "07/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "8851123040001",
    },
    "ingredients": [
      "Lavender Oil – giúp thư giãn tinh thần, giảm căng thẳng",
      "Jojoba Oil – dưỡng ẩm, làm mềm da",
      "Vitamin E – chống oxy hóa, bảo vệ da",
      "Sweet Almond Oil – nuôi dưỡng và làm dịu da",
      "Natural Fragrance – hương thơm tự nhiên dễ chịu",
    ],
    "usage": '''
1. Lấy một lượng dầu vừa đủ, thoa đều và massage nhẹ nhàng trên cơ thể.
2. Có thể dùng sau khi tắm để tăng hiệu quả thư giãn và dưỡng ẩm.
3. Massage theo chuyển động tròn để kích thích tuần hoàn máu.
4. Tránh sử dụng trên vết thương hở hoặc vùng da bị kích ứng.
5. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP305",
    "name": "Xịt khử mùi Nivea Men Cool Kick",
    "brand": "Nivea",
    "type": "xịt khử mùi",
    "category": "Khác",
    "originalPrice": 115000,
    "discountPrice": 109250,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 350,
    "image":
        "https://media.hcdn.vn/catalog/product/x/i/xit-khu-mui-cho-nam-nivea-men-cool-kick-cool-fresh-150ml-1674016558_img_450x450_31d6f9_fit_center.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Xịt khử mùi Nivea Men Cool Kick mang lại cảm giác mát lạnh, ngăn mùi hiệu quả suốt 48 giờ.",
    "specs": {
      "Dung tích": "150ml",
      "Kết cấu": "Dung dịch xịt",
      "Đối tượng phù hợp": "Nam giới",
      "Xuất xứ": "Đức",
      "Ngày sản xuất": "08/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "4005903050001",
    },
    "ingredients": [
      "Alcohol Denat – dung môi giúp khử khuẩn và làm khô nhanh",
      "Menthol – tạo cảm giác mát lạnh, sảng khoái",
      "Fragrance – hương thơm nam tính, dễ chịu",
      "Propylene Glycol – giữ ẩm nhẹ cho da",
      "Butane/Isobutane – khí nén tạo lực phun",
    ],
    "usage": '''
1. Lắc đều trước khi sử dụng để dung dịch hòa trộn tốt.
2. Xịt trực tiếp vào vùng da dưới cánh tay sau khi tắm để ngăn mùi hiệu quả.
3. Giữ khoảng cách 15cm khi xịt để dung dịch phân tán đều.
4. Tránh xịt vào mắt hoặc vùng da bị trầy xước.
5. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP306",
    "name": "Miếng dán mụn Cosrx Acne Pimple Master Patch",
    "brand": "Cosrx",
    "type": "miếng dán mụn",
    "category": "Khác",
    "originalPrice": 75000,
    "discountPrice": 75000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 500,
    "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiMh2Q8zWX-zTjeBkj50kroLYv5fnpAvjZfA&s",
    "promotion": null,
    "description":
        "Miếng dán mụn Cosrx Acne Pimple Master Patch giúp bảo vệ và hỗ trợ làm khô nhân mụn nhanh chóng.",
    "specs": {
      "Quy cách": "Hộp 24 miếng",
      "Kết cấu": "Miếng dán hydrocolloid",
      "Loại da phù hợp": "Da mụn",
      "Xuất xứ": "Hàn Quốc",
      "Ngày sản xuất": "09/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "8809413060001",
    },
    "ingredients": [
      "Hydrocolloid – hút dịch mụn, bảo vệ khỏi vi khuẩn",
      "Polyurethane Film – lớp màng bảo vệ, chống thấm nước",
      "Acrylic Adhesive – chất kết dính an toàn cho da",
    ],
    "usage": '''
1. Làm sạch vùng da bị mụn và lau khô trước khi dán.
2. Dán miếng patch trực tiếp lên nốt mụn, đảm bảo phủ kín nhân mụn.
3. Thay miếng dán sau 6–8 giờ hoặc khi patch chuyển màu trắng.
4. Có thể dùng dưới lớp trang điểm để bảo vệ da.
5. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP307",
    "name": "Bộ quà tặng chăm sóc da Innisfree Holiday Set",
    "brand": "Innisfree",
    "type": "bộ quà tặng",
    "category": "Khác",
    "originalPrice": 495000,
    "discountPrice": 495000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://www.innisfree.vn/static/upload/product/product/366_ID0101_3.jpg",
    "promotion": "Tặng túi vải",
    "description":
        "Bộ quà tặng Innisfree Holiday Set gồm các sản phẩm chăm sóc da cơ bản, thích hợp làm quà tặng.",
    "specs": {
      "Quy cách": "Set 4 sản phẩm",
      "Loại da phù hợp": "Mọi loại da",
      "Xuất xứ": "Hàn Quốc",
      "Ngày sản xuất": "07/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "8809613070001",
    },
    "ingredients": [
      "Green Tea Extract – chống oxy hóa, làm dịu da",
      "Hyaluronic Acid – cấp ẩm sâu, giữ nước cho da",
      "Vitamin E – bảo vệ da khỏi gốc tự do",
      "Niacinamide – dưỡng sáng da, cải thiện sắc tố",
      "Panthenol – làm dịu và phục hồi da",
    ],
    "usage": '''
1. Rửa mặt bằng sữa rửa mặt trong set để loại bỏ bụi bẩn.
2. Dùng toner để cân bằng độ pH và làm sạch sâu.
3. Thoa serum để dưỡng chất thấm sâu vào da.
4. Khóa ẩm bằng kem dưỡng để duy trì làn da mềm mịn.
5. Thích hợp làm quà tặng cho người thân và bạn bè trong dịp lễ.
6. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP308",
    "name": "Kem tẩy lông Veet Silk & Fresh",
    "brand": "Veet",
    "type": "tẩy lông",
    "category": "Khác",
    "originalPrice": 95000,
    "discountPrice": 95000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 300,
    "image":
        "https://file.hstatic.net/1000006063/file/2_96c330737bf74003be6ff163b6a16f24_master.jpg",
    "promotion": null,
    "description":
        "Kem tẩy lông Veet Silk & Fresh giúp loại bỏ lông nhanh chóng, đồng thời dưỡng da mềm mịn.",
    "specs": {
      "Dung tích": "100g",
      "Kết cấu": "Kem đặc",
      "Loại da phù hợp": "Da thường",
      "Xuất xứ": "Pháp",
      "Ngày sản xuất": "08/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "3030053080001",
    },
    "ingredients": [
      "Thioglycolate – phá vỡ cấu trúc keratin của lông để dễ loại bỏ",
      "Aloe Vera Extract – làm dịu da, giảm kích ứng",
      "Vitamin E – chống oxy hóa, dưỡng da mềm mịn",
      "Glycerin – cấp ẩm cho da",
      "Fragrance – tạo hương thơm dễ chịu",
    ],
    "usage": '''
1. Thoa kem đều lên vùng da cần tẩy lông, tránh vùng da nhạy cảm.
2. Để 5–10 phút rồi dùng thìa gạt bỏ lông theo chiều ngược lại.
3. Rửa sạch bằng nước ấm và lau khô bằng khăn mềm.
4. Không để kem quá lâu trên da để tránh kích ứng.
5. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP309",
    "name": "Gel rửa tay khô Lifebuoy",
    "brand": "Lifebuoy",
    "type": "gel rửa tay",
    "category": "Khác",
    "originalPrice": 35000,
    "discountPrice": 35000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 600,
    "image":
        "https://cdn.tgdd.vn/Products/Images/2486/243351/bhx/-202402261327125572.jpg",
    "promotion": "Mua 2 tặng 1",
    "description":
        "Gel rửa tay khô Lifebuoy giúp diệt khuẩn nhanh chóng, bảo vệ tay sạch sẽ mà không cần rửa lại bằng nước.",
    "specs": {
      "Dung tích": "50ml",
      "Kết cấu": "Gel lỏng",
      "Đối tượng phù hợp": "Mọi đối tượng",
      "Xuất xứ": "Việt Nam",
      "Ngày sản xuất": "09/2025",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Mã vạch": "8934863090001",
    },
    "ingredients": [
      "Alcohol 70% – diệt khuẩn nhanh chóng",
      "Glycerin – giữ ẩm, tránh khô da",
      "Fragrance – tạo hương thơm dễ chịu",
      "Aqua – dung môi chính",
      "Carbomer – tạo kết cấu gel",
    ],
    "usage": '''
1. Lấy một lượng gel vừa đủ vào lòng bàn tay.
2. Xoa đều khắp tay cho đến khi khô, không cần rửa lại bằng nước.
3. Sử dụng bất cứ khi nào cần làm sạch tay nhanh chóng, đặc biệt trước khi ăn hoặc sau khi tiếp xúc nơi công cộng.
4. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP310",
    "name": "Dung dịch vệ sinh phụ nữ Dạ Hương",
    "brand": "Dạ Hương",
    "type": "vệ sinh phụ nữ",
    "category": "Khác",
    "originalPrice": 65000,
    "discountPrice": 65000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 400,
    "image":
        "https://www.sieuthianhduong.com/images/product/theme-1587722307-da-huong3.jpg",
    "promotion": null,
    "description":
        "Dung dịch vệ sinh phụ nữ Dạ Hương giúp làm sạch nhẹ nhàng, cân bằng độ pH và ngăn ngừa viêm nhiễm.",
    "specs": {
      "Dung tích": "120ml",
      "Kết cấu": "Dung dịch lỏng",
      "Loại da phù hợp": "Phù hợp cho phụ nữ trưởng thành",
      "Xuất xứ": "Việt Nam",
      "Ngày sản xuất": "07/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "8934863100001",
    },
    "ingredients": [
      "Lactic Acid – cân bằng độ pH, ngăn ngừa viêm nhiễm",
      "Chamomile Extract – làm dịu da, giảm kích ứng",
      "Menthol – tạo cảm giác mát lạnh, thoải mái",
      "Glycerin – cấp ẩm cho da",
      "Fragrance – hương thơm dịu nhẹ",
    ],
    "usage": '''
1. Lấy một lượng dung dịch vừa đủ pha loãng với nước trước khi sử dụng.
2. Rửa vùng kín nhẹ nhàng rồi xả sạch bằng nước.
3. Sử dụng hàng ngày để duy trì vệ sinh và sự thoải mái.
4. Không sử dụng cho vết thương hở hoặc vùng da bị kích ứng.
5. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP311",
    "name": "Viên uống trắng da Glutathione",
    "brand": "Relumins",
    "type": "thực phẩm chức năng",
    "category": "Khác",
    "originalPrice": 620000,
    "discountPrice": 558000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://depthatdep.com/wp-content/uploads/2022/05/vien-uong-glutathione-600-dr-lacir-2022-5.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Viên uống trắng da Relumins Glutathione giúp cải thiện sắc tố da, hỗ trợ chống oxy hóa và làm sáng da từ bên trong.",
    "specs": {
      "Quy cách": "Hộp 60 viên",
      "Dạng": "Viên nang",
      "Đối tượng phù hợp": "Người trưởng thành",
      "Xuất xứ": "Mỹ",
      "Ngày sản xuất": "08/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "8574843110001",
    },
    "ingredients": [
      "Glutathione – chất chống oxy hóa mạnh, hỗ trợ làm sáng da",
      "Vitamin C – tăng cường sản xuất collagen, hỗ trợ Glutathione hoạt động",
      "Alpha Lipoic Acid – chống oxy hóa, bảo vệ tế bào",
      "Zinc – hỗ trợ quá trình tái tạo da",
      "Grape Seed Extract – tăng khả năng chống oxy hóa",
    ],
    "usage": '''
1. Uống 1–2 viên mỗi ngày sau bữa ăn để tăng khả năng hấp thụ.
2. Sử dụng đều đặn trong ít nhất 2–3 tháng để đạt hiệu quả rõ rệt.
3. Kết hợp với chế độ ăn uống lành mạnh và uống đủ nước để tối ưu hiệu quả.
4. Không dùng quá liều khuyến nghị, tham khảo ý kiến bác sĩ nếu đang mang thai hoặc cho con bú.
5. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP312",
    "name": "Khẩu trang y tế 4 lớp",
    "brand": "Ecom Med",
    "type": "khẩu trang",
    "category": "Khác",
    "originalPrice": 45000,
    "discountPrice": 45000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 700,
    "image":
        "https://nhuycompany.com/wp-content/uploads/2020/03/khau-trang-y-te-4-lop-giay-loc-khang-khuan-mau-xanh-jdshbjhb-1.jpg",
    "promotion": null,
    "description":
        "Khẩu trang y tế Ecom Med 4 lớp giúp lọc bụi mịn, vi khuẩn và bảo vệ đường hô hấp hiệu quả.",
    "specs": {
      "Quy cách": "Hộp 50 cái",
      "Chất liệu": "Vải không dệt, lớp lọc kháng khuẩn",
      "Đối tượng phù hợp": "Người lớn",
      "Xuất xứ": "Việt Nam",
      "Ngày sản xuất": "09/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "8934863120001",
    },
    "ingredients": [
      "Non-woven Fabric – lớp ngoài chống bụi và giọt bắn",
      "Melt-blown Filter – lớp lọc kháng khuẩn ngăn bụi mịn và vi khuẩn",
      "Soft Inner Layer – lớp trong mềm mại, thoáng khí, không gây kích ứng da",
    ],
    "usage": '''
1. Đeo khẩu trang che kín mũi và miệng, điều chỉnh dây đeo cho vừa vặn.
2. Bóp nhẹ phần nẹp mũi để khẩu trang ôm sát khuôn mặt.
3. Thay khẩu trang sau mỗi lần sử dụng hoặc khi bẩn, ẩm ướt.
4. Không tái sử dụng khẩu trang dùng một lần.
5. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP313",
    "name": "Nước súc miệng Colgate Plax",
    "brand": "Colgate",
    "type": "nước súc miệng",
    "category": "Khác",
    "originalPrice": 89000,
    "discountPrice": 89000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 420,
    "image":
        "https://product.hstatic.net/200000232425/product/upload_8938dd921bcc4fd89dc9b45bbaa5d158_master.jpg",
    "promotion": "Tặng bàn chải",
    "description":
        "Nước súc miệng Colgate Plax giúp diệt khuẩn, làm sạch khoang miệng và mang lại hơi thở thơm mát.",
    "specs": {
      "Dung tích": "500ml",
      "Kết cấu": "Dung dịch lỏng",
      "Đối tượng phù hợp": "Người lớn",
      "Xuất xứ": "Mỹ",
      "Ngày sản xuất": "07/2025",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Mã vạch": "0350003130001",
    },
    "ingredients": [
      "Cetylpyridinium Chloride – diệt khuẩn, giảm mảng bám",
      "Menthol – tạo cảm giác mát lạnh, thơm miệng",
      "Fluoride – bảo vệ răng, ngăn ngừa sâu răng",
      "Glycerin – giữ ẩm cho khoang miệng",
      "Aqua – dung môi chính",
    ],
    "usage": '''
1. Súc miệng với 20ml dung dịch trong 30 giây, không nuốt.
2. Sử dụng 2 lần/ngày sau khi đánh răng để duy trì hơi thở thơm mát.
3. Không dùng cho trẻ em dưới 12 tuổi nếu không có chỉ định của bác sĩ.
4. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP314",
    "name": "Dầu massage body Purité",
    "brand": "Purité",
    "type": "dầu massage",
    "category": "Khác",
    "originalPrice": 145000,
    "discountPrice": 145000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 280,
    "image":
        "https://tiki.vn/blog/wp-content/uploads/2023/09/b4ce3f2c-c95d-4d26-a92d-e5237ba2351f.jpg",
    "promotion": null,
    "description":
        "Dầu massage body Purité với hương tinh dầu thiên nhiên giúp thư giãn cơ thể và dưỡng da mềm mịn.",
    "specs": {
      "Dung tích": "100ml",
      "Kết cấu": "Dầu lỏng",
      "Loại da phù hợp": "Mọi loại da",
      "Xuất xứ": "Pháp",
      "Ngày sản xuất": "08/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "3030053140001",
    },
    "ingredients": [
      "Lavender Oil – giúp thư giãn tinh thần, giảm căng thẳng",
      "Olive Oil – dưỡng ẩm, làm mềm da",
      "Vitamin E – chống oxy hóa, bảo vệ da",
      "Sweet Almond Oil – nuôi dưỡng và làm dịu da",
      "Natural Fragrance – hương thơm tự nhiên dễ chịu",
    ],
    "usage": '''
1. Lấy một lượng dầu vừa đủ, thoa đều và massage nhẹ nhàng trên cơ thể.
2. Có thể dùng sau khi tắm để tăng hiệu quả thư giãn và dưỡng ẩm.
3. Massage theo chuyển động tròn để kích thích tuần hoàn máu.
4. Tránh sử dụng trên vết thương hở hoặc vùng da bị kích ứng.
5. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP315",
    "name": "Xịt khử mùi Enchanteur Charming",
    "brand": "Enchanteur",
    "type": "xịt khử mùi",
    "category": "Khác",
    "originalPrice": 95000,
    "discountPrice": 90250,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 350,
    "image":
        "https://media.hcdn.vn/wysiwyg/kimhuy/xit-khu-mui-enchanteur-huong-nuoc-hoa-150ml_1.jpg",
    "promotion": "Giảm 5%",
    "description":
        "Xịt khử mùi Enchanteur Charming mang hương thơm ngọt ngào, ngăn mùi hiệu quả và lưu hương lâu.",
    "specs": {
      "Dung tích": "150ml",
      "Kết cấu": "Dung dịch xịt",
      "Đối tượng phù hợp": "Nữ giới",
      "Xuất xứ": "Việt Nam",
      "Ngày sản xuất": "09/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "8934863150001",
    },
    "ingredients": [
      "Alcohol Denat – dung môi giúp khử khuẩn và làm khô nhanh",
      "Fragrance – hương thơm ngọt ngào, nữ tính",
      "Water – dung môi chính",
      "Propylene Glycol – giữ ẩm nhẹ cho da",
      "Butane/Isobutane – khí nén tạo lực phun",
    ],
    "usage": '''
1. Lắc đều trước khi sử dụng để dung dịch hòa trộn tốt.
2. Xịt trực tiếp vào vùng da dưới cánh tay sau khi tắm để ngăn mùi hiệu quả.
3. Giữ khoảng cách 15cm khi xịt để dung dịch phân tán đều.
4. Tránh xịt vào mắt hoặc vùng da bị trầy xước.
5. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP316",
    "name": "Miếng dán mụn Some By Mi Clear Spot Patch",
    "brand": "Some By Mi",
    "type": "miếng dán mụn",
    "category": "Khác",
    "originalPrice": 69000,
    "discountPrice": 69000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 420,
    "image":
        "https://product.hstatic.net/200000934663/product/adrwe346twserfg_833b6da42bc54c059e762b1caab56543.jpg",
    "promotion": null,
    "description":
        "Miếng dán mụn Some By Mi Clear Spot Patch giúp bảo vệ và hỗ trợ làm khô nhân mụn nhanh chóng.",
    "specs": {
      "Quy cách": "Hộp 18 miếng",
      "Kết cấu": "Miếng dán hydrocolloid",
      "Loại da phù hợp": "Da mụn",
      "Xuất xứ": "Hàn Quốc",
      "Ngày sản xuất": "07/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "8809413160001",
    },
    "ingredients": [
      "Hydrocolloid – hút dịch mụn, bảo vệ khỏi vi khuẩn",
      "Tea Tree Extract – kháng khuẩn, làm dịu da",
      "Polyurethane Film – lớp màng bảo vệ, chống thấm nước",
      "Acrylic Adhesive – chất kết dính an toàn cho da",
    ],
    "usage": '''
1. Làm sạch vùng da bị mụn và lau khô trước khi dán.
2. Dán miếng patch trực tiếp lên nốt mụn, đảm bảo phủ kín nhân mụn.
3. Thay miếng dán sau 6–8 giờ hoặc khi patch chuyển màu trắng.
4. Có thể dùng dưới lớp trang điểm để bảo vệ da.
5. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP317",
    "name": "Bộ quà tặng Laneige Water Bank Set",
    "brand": "Laneige",
    "type": "bộ quà tặng",
    "category": "Khác",
    "originalPrice": 850000,
    "discountPrice": 850000,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 180,
    "image":
        "https://media.hcdn.vn/wysiwyg/nhphuong/PhuongSmall/bo-kit-duong-am-da-5-mon-laneige-1_1.jpg",
    "promotion": "Tặng túi đựng mỹ phẩm",
    "description":
        "Bộ quà tặng Laneige Water Bank Set gồm các sản phẩm dưỡng ẩm chuyên sâu, giúp da căng mịn và ngậm nước.",
    "specs": {
      "Quy cách": "Set 4 sản phẩm",
      "Loại da phù hợp": "Da khô, da thường",
      "Xuất xứ": "Hàn Quốc",
      "Ngày sản xuất": "08/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "8809613170001",
    },
    "ingredients": [
      "Hydro Ionized Mineral Water – cung cấp khoáng chất, tăng khả năng giữ nước cho da",
      "Hyaluronic Acid – cấp ẩm sâu, giúp da ngậm nước và căng mịn",
      "Vitamin E – chống oxy hóa, bảo vệ da khỏi gốc tự do",
      "Green Tea Extract – làm dịu da, chống viêm",
      "Panthenol – phục hồi và làm dịu da",
    ],
    "usage": '''
1. Sử dụng theo từng bước: toner, serum, kem dưỡng, mặt nạ ngủ để tối ưu hiệu quả.
2. Dùng toner để cân bằng độ pH, tiếp theo serum để dưỡng chất thấm sâu.
3. Khóa ẩm bằng kem dưỡng và dùng mặt nạ ngủ để duy trì độ ẩm qua đêm.
4. Thích hợp làm quà tặng cho người thân và bạn bè trong dịp lễ.
5. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP318",
    "name": "Kem tẩy lông Palmer’s Cocoa Butter",
    "brand": "Palmer’s",
    "type": "tẩy lông",
    "category": "Khác",
    "originalPrice": 115000,
    "discountPrice": 115000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 260,
    "image":
        "https://vn-test-11.slatic.net/p/d2d081bb3474b5bbf1b273c3b03e5ef6.jpg",
    "promotion": null,
    "description":
        "Kem tẩy lông Palmer’s Cocoa Butter giúp loại bỏ lông nhanh chóng, đồng thời dưỡng da mềm mịn nhờ bơ cacao.",
    "specs": {
      "Dung tích": "100g",
      "Kết cấu": "Kem đặc",
      "Loại da phù hợp": "Da thường, da khô",
      "Xuất xứ": "Mỹ",
      "Ngày sản xuất": "07/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "0101813180001",
    },
    "ingredients": [
      "Cocoa Butter – dưỡng ẩm, làm mềm da",
      "Thioglycolate – phá vỡ cấu trúc keratin của lông để dễ loại bỏ",
      "Vitamin E – chống oxy hóa, bảo vệ da",
      "Glycerin – cấp ẩm cho da",
      "Fragrance – tạo hương thơm dễ chịu",
    ],
    "usage": '''
1. Thoa kem đều lên vùng da cần tẩy lông, tránh vùng da nhạy cảm.
2. Để 5–10 phút rồi dùng thìa gạt bỏ lông theo chiều ngược lại.
3. Rửa sạch bằng nước ấm và lau khô bằng khăn mềm.
4. Không để kem quá lâu trên da để tránh kích ứng.
5. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP319",
    "name": "Gel rửa tay khô On1",
    "brand": "On1",
    "type": "gel rửa tay",
    "category": "Khác",
    "originalPrice": 42000,
    "discountPrice": 37800,
    "isDiscountActive": true,
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 500,
    "image":
        "https://alobuy.vn/uploads/products/500/gel-rua-tay-kho-on1-250ml-sach-khuan-huong-fresh-sakura-1589496668.jpg",
    "promotion": "Giảm 10%",
    "description":
        "Gel rửa tay khô On1 giúp diệt khuẩn nhanh chóng, bảo vệ tay sạch sẽ mà không cần rửa lại bằng nước.",
    "specs": {
      "Dung tích": "100ml",
      "Kết cấu": "Gel lỏng",
      "Đối tượng phù hợp": "Mọi đối tượng",
      "Xuất xứ": "Việt Nam",
      "Ngày sản xuất": "09/2025",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Mã vạch": "8934863190001",
    },
    "ingredients": [
      "Alcohol 70% – diệt khuẩn nhanh chóng",
      "Glycerin – giữ ẩm, tránh khô da",
      "Fragrance – tạo hương thơm dễ chịu",
      "Aqua – dung môi chính",
      "Carbomer – tạo kết cấu gel",
    ],
    "usage": '''
1. Lấy một lượng gel vừa đủ vào lòng bàn tay.
2. Xoa đều khắp tay cho đến khi khô, không cần rửa lại bằng nước.
3. Sử dụng bất cứ khi nào cần làm sạch tay nhanh chóng, đặc biệt trước khi ăn hoặc sau khi tiếp xúc nơi công cộng.
4. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP320",
    "name": "Dung dịch vệ sinh phụ nữ Lactacyd",
    "brand": "Lactacyd",
    "type": "vệ sinh phụ nữ",
    "category": "Khác",
    "originalPrice": 78000,
    "discountPrice": 78000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 420,
    "image":
        "https://media.hcdn.vn/wysiwyg/minhchau/dung-dich-ve-sinh-phu-nu-lactacyd-pearly-intimate-150ml-2.jpg",
    "promotion": null,
    "description":
        "Dung dịch vệ sinh phụ nữ Lactacyd giúp làm sạch nhẹ nhàng, cân bằng độ pH và ngăn ngừa viêm nhiễm.",
    "specs": {
      "Dung tích": "150ml",
      "Kết cấu": "Dung dịch lỏng",
      "Loại da phù hợp": "Phù hợp cho phụ nữ trưởng thành",
      "Xuất xứ": "Pháp",
      "Ngày sản xuất": "08/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "3030053200001",
    },
    "ingredients": [
      "Lactic Acid – cân bằng độ pH, ngăn ngừa viêm nhiễm",
      "Milk Extract – chiết xuất sữa, dưỡng ẩm và làm mềm da",
      "Chamomile Extract – làm dịu da, giảm kích ứng",
      "Glycerin – cấp ẩm, giữ cho da mềm mại",
      "Fragrance – hương thơm dịu nhẹ, tạo cảm giác thoải mái",
    ],
    "usage": '''
1. Lấy một lượng dung dịch vừa đủ, pha loãng với nước trước khi sử dụng.
2. Rửa vùng kín nhẹ nhàng, tránh chà xát mạnh.
3. Xả sạch bằng nước và lau khô bằng khăn mềm.
4. Sử dụng hàng ngày để duy trì vệ sinh và sự thoải mái.
5. Không sử dụng cho vết thương hở hoặc vùng da bị kích ứng.
6. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP321",
    "name": "Xịt khử mùi Nivea Men Fresh Active",
    "brand": "Nivea",
    "type": "xịt khử mùi",
    "category": "Others",
    "originalPrice": 115000,
    "discountPrice": 115000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 300,
    "image":
        "https://myphamxachtayduc.vn/wp-content/uploads/2025/06/xit-khu-mui-nivea-men-fresh-active-75-ml-4.jpg",
    "promotion": null,
    "description":
        "Xịt khử mùi Nivea Men Fresh Active mang lại cảm giác mát lạnh, ngăn mùi hiệu quả suốt 48 giờ.",
    "specs": {
      "Dung tích": "150ml",
      "Kết cấu": "Dung dịch xịt",
      "Đối tượng phù hợp": "Nam giới",
      "Xuất xứ": "Đức",
      "Ngày sản xuất": "08/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "4005903210001",
    },
    "ingredients": [
      "Alcohol Denat – dung môi giúp khử khuẩn",
      "Menthol – tạo cảm giác mát lạnh",
      "Fragrance – hương thơm nam tính",
      "Propylene Glycol – giữ ẩm nhẹ cho da",
      "Butane/Isobutane – khí nén tạo lực phun",
    ],
    "usage": '''
1. Lắc đều trước khi sử dụng.
2. Xịt trực tiếp vào vùng da dưới cánh tay sau khi tắm.
3. Giữ khoảng cách 15cm khi xịt để dung dịch phân tán đều.
4. Tránh xịt vào mắt hoặc vùng da bị trầy xước.
5. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP322",
    "name": "Xịt khử mùi Dove Invisible Dry",
    "brand": "Dove",
    "type": "xịt khử mùi",
    "category": "Others",
    "originalPrice": 125000,
    "discountPrice": 125000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 280,
    "image":
        "https://sau7h.com/wp-content/uploads/2017/09/Xit-khu-mui-toan-than-Dove-nu.jpg",
    "promotion": null,
    "description":
        "Xịt khử mùi Dove Invisible Dry giúp ngăn mùi, không để lại vệt trắng trên quần áo.",
    "specs": {
      "Dung tích": "150ml",
      "Kết cấu": "Dung dịch xịt",
      "Đối tượng phù hợp": "Nữ giới",
      "Xuất xứ": "Anh",
      "Ngày sản xuất": "07/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "8712563220001",
    },
    "ingredients": [
      "Alcohol Denat – khử khuẩn",
      "Fragrance – hương thơm dịu nhẹ",
      "Glycerin – dưỡng ẩm da",
      "Cyclopentasiloxane – giúp khô nhanh",
      "Aqua – dung môi chính",
    ],
    "usage": '''
1. Lắc đều trước khi sử dụng.
2. Xịt trực tiếp vào vùng da dưới cánh tay.
3. Sử dụng hàng ngày để ngăn mùi hiệu quả.
4. Không để lại vệt trắng trên quần áo.
''',
  },
  {
    "id": "SP323",
    "name": "Xịt khử mùi Adidas Dynamic Pulse",
    "brand": "Adidas",
    "type": "xịt khử mùi",
    "category": "Others",
    "originalPrice": 135000,
    "discountPrice": 135000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 250,
    "image":
        "https://sg-live-01.slatic.net/p/aca6840b20f85501b6bacf0de9af0cb3.jpg_525x525q80.jpg",
    "promotion": null,
    "description":
        "Xịt khử mùi Adidas Dynamic Pulse mang lại hương thơm thể thao, năng động.",
    "specs": {
      "Dung tích": "150ml",
      "Kết cấu": "Dung dịch xịt",
      "Đối tượng phù hợp": "Nam giới",
      "Xuất xứ": "Pháp",
      "Ngày sản xuất": "09/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "3607343230001",
    },
    "ingredients": [
      "Alcohol Denat – khử khuẩn",
      "Fragrance – hương thơm thể thao",
      "Menthol – tạo cảm giác mát lạnh",
      "Aqua – dung môi chính",
      "Butane – khí nén tạo lực phun",
    ],
    "usage": '''
1. Lắc đều trước khi sử dụng.
2. Xịt trực tiếp vào vùng da dưới cánh tay.
3. Thích hợp dùng sau khi tập luyện thể thao.
4. Lưu hương lâu, tạo cảm giác năng động.
''',
  },
  {
    "id": "SP324",
    "name": "Xịt khử mùi Romano Classic",
    "brand": "Romano",
    "type": "xịt khử mùi",
    "category": "Others",
    "originalPrice": 95000,
    "discountPrice": 95000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 320,
    "image":
        "https://media.hcdn.vn/wysiwyg/xit-khu-mui-romano-huong-nuoc-hoa-195ml-1.jpg",
    "promotion": null,
    "description":
        "Xịt khử mùi Romano Classic với hương thơm nam tính, lưu hương lâu.",
    "specs": {
      "Dung tích": "150ml",
      "Kết cấu": "Dung dịch xịt",
      "Đối tượng phù hợp": "Nam giới",
      "Xuất xứ": "Việt Nam",
      "Ngày sản xuất": "08/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "8934863240001",
    },
    "ingredients": [
      "Alcohol Denat – khử khuẩn",
      "Fragrance – hương thơm mạnh mẽ",
      "Propylene Glycol – giữ ẩm nhẹ",
      "Aqua – dung môi chính",
    ],
    "usage": '''
1. Lắc đều trước khi sử dụng.
2. Xịt trực tiếp vào vùng da dưới cánh tay.
3. Sử dụng hàng ngày để ngăn mùi hiệu quả.
4. Lưu hương lâu, phù hợp môi trường công sở.
''',
  },
  {
    "id": "SP325",
    "name": "Xịt khử mùi Axe Dark Temptation",
    "brand": "Axe",
    "type": "xịt khử mùi",
    "category": "Others",
    "originalPrice": 110000,
    "discountPrice": 110000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 270,
    "image":
        "https://media.hcdn.vn/wysiwyg/Chau/xit-nuoc-hoa-toan-than-axe-cho-nam-135ml-2.jpg",
    "promotion": null,
    "description":
        "Xịt khử mùi Axe Dark Temptation với hương socola ngọt ngào, quyến rũ.",
    "specs": {
      "Dung tích": "150ml",
      "Kết cấu": "Dung dịch xịt",
      "Đối tượng phù hợp": "Nam giới",
      "Xuất xứ": "Mỹ",
      "Ngày sản xuất": "07/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "0794003250001",
    },
    "ingredients": [
      "Alcohol Denat – khử khuẩn",
      "Fragrance – hương socola ngọt ngào",
      "Aqua – dung môi chính",
      "Butane/Isobutane – khí nén tạo lực phun",
    ],
    "usage": '''
1. Lắc đều trước khi sử dụng.
2. Xịt trực tiếp vào vùng da dưới cánh tay.
3. Thích hợp dùng cho các buổi hẹn hò.
4. Lưu hương ngọt ngào, quyến rũ.
''',
  },
  {
    "id": "SP326",
    "name": "Xịt khử mùi Enchanteur Romantic",
    "brand": "Enchanteur",
    "type": "xịt khử mùi",
    "category": "Others",
    "originalPrice": 99000,
    "discountPrice": 99000,
    "isDiscountActive": false,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 310,
    "image":
        "https://media.hcdn.vn/wysiwyg/kimhuy/xit-khu-mui-enchanteur-huong-nuoc-hoa-150ml-2.jpg",
    "promotion": null,
    "description":
        "Xịt khử mùi Enchanteur Romantic mang hương thơm ngọt ngào, nữ tính, lưu hương lâu suốt cả ngày.",
    "specs": {
      "Dung tích": "150ml",
      "Kết cấu": "Dung dịch xịt",
      "Đối tượng phù hợp": "Nữ giới",
      "Xuất xứ": "Việt Nam",
      "Ngày sản xuất": "09/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "8934863260001",
    },
    "ingredients": [
      "Alcohol Denat – khử khuẩn, làm khô nhanh",
      "Fragrance – hương thơm ngọt ngào, nữ tính",
      "Aqua – dung môi chính",
      "Propylene Glycol – giữ ẩm nhẹ cho da",
      "Butane/Isobutane – khí nén tạo lực phun",
    ],
    "usage": '''
1. Lắc đều trước khi sử dụng.
2. Xịt trực tiếp vào vùng da dưới cánh tay sau khi tắm.
3. Giữ khoảng cách 15cm khi xịt để dung dịch phân tán đều.
4. Tránh xịt vào mắt hoặc vùng da bị trầy xước.
5. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP327",
    "name": "Dầu massage thư giãn Aroma Therapy Lavender",
    "brand": "Aroma Therapy",
    "type": "dầu massage",
    "category": "Others",
    "originalPrice": 165000,
    "discountPrice": 165000,
    "isDiscountActive": false,
    "promotion": null,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 250,
    "image":
        "https://img.lazcdn.com/g/p/22ca8b5980d05f6f41b3d2f5aee02f09.jpg_720x720q80.jpg",
    "description":
        "Dầu massage Aroma Therapy Lavender với hương tinh dầu oải hương giúp thư giãn tinh thần và giảm căng thẳng.",
    "specs": {
      "Dung tích": "100ml",
      "Kết cấu": "Dầu lỏng",
      "Loại da phù hợp": "Mọi loại da",
      "Xuất xứ": "Thái Lan",
      "Ngày sản xuất": "08/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "8851123270001",
    },
    "ingredients": [
      "Lavender Oil – thư giãn tinh thần, hỗ trợ giấc ngủ",
      "Jojoba Oil – dưỡng ẩm, cân bằng dầu trên da",
      "Vitamin E – chống oxy hóa, bảo vệ da",
      "Grapeseed Oil – giàu axit béo, nuôi dưỡng da",
      "Chamomile Extract – làm dịu da, giảm kích ứng",
    ],
    "usage": '''
1. Lấy một lượng dầu vừa đủ, thoa đều và massage nhẹ nhàng trên cơ thể.
2. Dùng sau khi tắm để tăng hiệu quả thư giãn và dưỡng ẩm.
3. Massage theo chuyển động tròn để kích thích tuần hoàn máu.
4. Có thể dùng trước khi ngủ để hỗ trợ giấc ngủ sâu.
5. Tránh sử dụng trên vết thương hở hoặc vùng da bị kích ứng.
''',
  },
  {
    "id": "SP328",
    "name": "Dầu massage body Purité Olive",
    "brand": "Purité",
    "type": "dầu massage",
    "category": "Others",
    "originalPrice": 145000,
    "discountPrice": 145000,
    "isDiscountActive": false,
    "promotion": null,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 220,
    "image":
        "https://filebroker-cdn.lazada.vn/kf/Sfafe31a015c443de994231e9ec38b298v.jpg_340x340q80.jpg",
    "description":
        "Dầu massage Purité Olive chiết xuất từ dầu ô liu, giúp dưỡng ẩm và làm mềm da.",
    "specs": {
      "Dung tích": "100ml",
      "Kết cấu": "Dầu lỏng",
      "Loại da phù hợp": "Da khô, da thường",
      "Xuất xứ": "Pháp",
      "Ngày sản xuất": "07/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "3030053280001",
    },
    "ingredients": [
      "Olive Oil – dưỡng ẩm, chống oxy hóa",
      "Sweet Almond Oil – nuôi dưỡng, làm dịu da khô",
      "Vitamin E – bảo vệ da khỏi gốc tự do",
      "Sunflower Seed Oil – phục hồi da",
      "Natural Fragrance – hương thơm nhẹ nhàng",
    ],
    "usage": '''
1. Thoa dầu lên da sau khi tắm, massage nhẹ nhàng để dưỡng chất thấm sâu.
2. Có thể dùng kết hợp với đá nóng để tăng hiệu quả thư giãn.
3. Sử dụng thường xuyên giúp da mềm mại, mịn màng.
''',
  },
  {
    "id": "SP329",
    "name": "Dầu massage dưỡng ẩm Johnson’s Baby",
    "brand": "Johnson’s",
    "type": "dầu massage",
    "category": "Others",
    "originalPrice": 120000,
    "discountPrice": 120000,
    "isDiscountActive": false,
    "promotion": null,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 300,
    "image": "https://file.hstatic.net/200000713511/file/6.jpg",
    "description":
        "Dầu massage Johnson’s Baby dịu nhẹ, thích hợp cho cả trẻ em và người lớn.",
    "specs": {
      "Dung tích": "200ml",
      "Kết cấu": "Dầu lỏng",
      "Loại da phù hợp": "Da nhạy cảm",
      "Xuất xứ": "Mỹ",
      "Ngày sản xuất": "09/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "0794003290001",
    },
    "ingredients": [
      "Mineral Oil – dưỡng ẩm, làm mềm da",
      "Vitamin E – chống oxy hóa",
      "Aloe Vera Extract – làm dịu da",
      "Chamomile Extract – giảm kích ứng",
      "Fragrance – hương thơm dịu nhẹ",
    ],
    "usage": '''
1. Dùng cho trẻ em và người lớn để dưỡng ẩm da.
2. Massage nhẹ nhàng sau khi tắm để da mềm mại.
3. Có thể dùng để massage cho bé giúp bé ngủ ngon.
4. Tránh tiếp xúc với mắt.
''',
  },
  {
    "id": "SP330",
    "name": "Dầu massage tinh dầu dừa Cocoon",
    "brand": "Cocoon",
    "type": "dầu massage",
    "category": "Others",
    "originalPrice": 135000,
    "discountPrice": 135000,
    "isDiscountActive": false,
    "promotion": null,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 200,
    "image":
        "https://media.hcdn.vn/catalog/product/c/o/combo-2-son-duong-cocoon-dau-dua-ben-tre-5g-3-1689839286_img_450x450_31d6f9_fit_center.jpg",
    "description":
        "Dầu massage Cocoon chiết xuất từ dầu dừa nguyên chất, giúp dưỡng ẩm và làm mềm da.",
    "specs": {
      "Dung tích": "100ml",
      "Kết cấu": "Dầu lỏng",
      "Loại da phù hợp": "Da khô",
      "Xuất xứ": "Việt Nam",
      "Ngày sản xuất": "08/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "8934863300001",
    },
    "ingredients": [
      "Coconut Oil – dưỡng ẩm, làm mềm da",
      "Vitamin E – chống oxy hóa",
      "Shea Butter – nuôi dưỡng da",
      "Natural Fragrance – hương thơm tự nhiên",
      "Aloe Vera – làm dịu da",
    ],
    "usage": '''
1. Thoa dầu lên da sau khi tắm, massage nhẹ nhàng để dưỡng chất thấm sâu.
2. Có thể dùng để massage vùng da khô như khuỷu tay, đầu gối.
3. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp.
''',
  },
  {
    "id": "SP331",
    "name": "Dầu massage thảo mộc Himalaya",
    "brand": "Himalaya",
    "type": "dầu massage",
    "category": "Others",
    "originalPrice": 155000,
    "discountPrice": 155000,
    "isDiscountActive": false,
    "promotion": null,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 180,
    "image":
        "https://product.hstatic.net/200000455999/product/tinh_dau_day_at_the_spa__2__7643a66f0a60463191317e4628daded4_1024x1024.jpg",
    "description":
        "Dầu massage Himalaya chiết xuất từ thảo mộc thiên nhiên, giúp thư giãn cơ thể và dưỡng da.",
    "specs": {
      "Dung tích": "100ml",
      "Kết cấu": "Dầu lỏng",
      "Loại da phù hợp": "Mọi loại da",
      "Xuất xứ": "Ấn Độ",
      "Ngày sản xuất": "07/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "8901133310001",
    },
    "ingredients": [
      "Herbal Extracts – thư giãn cơ thể",
      "Sesame Oil – dưỡng ẩm",
      "Vitamin E – chống oxy hóa",
      "Neem Oil – kháng khuẩn, bảo vệ da",
      "Natural Fragrance – hương thảo mộc",
    ],
    "usage": '''
1. Dùng một lượng vừa đủ, massage nhẹ nhàng trên cơ thể.
2. Thích hợp dùng sau khi tắm hoặc trước khi ngủ.
3. Có thể dùng để massage chân tay giảm mỏi.
4. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp.
''',
  },
  {
    "id": "SP332",
    "name": "Dầu massage tinh dầu cam Bergamot",
    "brand": "Essential Oils",
    "type": "dầu massage",
    "category": "Others",
    "originalPrice": 175000,
    "discountPrice": 175000,
    "isDiscountActive": false,
    "promotion": null,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 160,
    "image":
        "https://product.hstatic.net/200000121007/product/tinh-dau-thom-phong-1_01a20f481feb4832b0ee4d6bcda95c5c_master.jpg",
    "description":
        "Dầu massage Bergamot với hương tinh dầu cam giúp thư giãn và làm dịu tinh thần, đồng thời dưỡng da mềm mịn.",
    "specs": {
      "Dung tích": "100ml",
      "Kết cấu": "Dầu lỏng",
      "Loại da phù hợp": "Mọi loại da",
      "Xuất xứ": "Ý",
      "Ngày sản xuất": "09/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "8001233320001",
    },
    "ingredients": [
      "Bergamot Oil – hương cam chanh, giúp thư giãn tinh thần, giảm căng thẳng",
      "Jojoba Oil – dưỡng ẩm, cân bằng dầu trên da",
      "Vitamin E – chống oxy hóa, bảo vệ da khỏi gốc tự do",
      "Sweet Almond Oil – nuôi dưỡng da, làm dịu da khô",
      "Grapeseed Oil – giàu axit béo, giúp da mềm mại",
      "Orange Peel Extract – tăng hương thơm tự nhiên, làm sáng da",
      "Natural Fragrance – hương thơm tự nhiên, dễ chịu",
    ],
    "usage": '''
1. Lấy một lượng dầu vừa đủ, thoa đều và massage nhẹ nhàng trên cơ thể.
2. Dùng sau khi tắm để tăng hiệu quả thư giãn và dưỡng ẩm.
3. Massage theo chuyển động tròn để kích thích tuần hoàn máu.
4. Có thể dùng để massage vùng vai, cổ giúp giảm căng thẳng.
5. Thích hợp sử dụng trước khi ngủ để hỗ trợ giấc ngủ sâu.
6. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp và nhiệt độ cao.
''',
  },
  {
    "id": "SP333",
    "name": "Miếng dán mụn Cosrx Acne Pimple Master Patch",
    "brand": "Cosrx",
    "type": "miếng dán mụn",
    "category": "Others",
    "originalPrice": 75000,
    "discountPrice": 70000,
    "isDiscountActive": true,
    "promotion": "Giảm giá 7% tuần lễ Black Friday",
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 500,
    "image":
        "https://product.hstatic.net/1000328823/product/reyer_f0bd0aaea23f43098feab653114f1f57_master.jpg",
    "description":
        "Miếng dán mụn Cosrx giúp bảo vệ và hỗ trợ làm khô nhân mụn nhanh chóng.",
    "specs": {
      "Quy cách": "Hộp 24 miếng",
      "Kết cấu": "Miếng dán hydrocolloid",
      "Loại da phù hợp": "Da mụn",
      "Xuất xứ": "Hàn Quốc",
      "Ngày sản xuất": "08/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "8809413330001",
    },
    "ingredients": [
      "Hydrocolloid – hút dịch mụn, bảo vệ khỏi vi khuẩn",
      "Polyurethane Film – lớp màng bảo vệ, chống thấm nước",
      "Acrylic Adhesive – chất kết dính an toàn cho da",
      "Tea Tree Oil – kháng khuẩn, giảm viêm",
      "Centella Asiatica Extract – làm dịu da, hỗ trợ phục hồi",
    ],
    "usage": '''
1. Làm sạch vùng da bị mụn và lau khô trước khi dán.
2. Dán miếng patch trực tiếp lên nốt mụn, đảm bảo phủ kín nhân mụn.
3. Thay miếng dán sau 6–8 giờ hoặc khi patch chuyển màu trắng.
4. Có thể dùng dưới lớp trang điểm để bảo vệ da.
''',
  },
  {
    "id": "SP334",
    "name": "Miếng dán mụn Some By Mi Clear Spot Patch",
    "brand": "Some By Mi",
    "type": "miếng dán mụn",
    "category": "Others",
    "originalPrice": 69000,
    "discountPrice": 65000,
    "isDiscountActive": true,
    "promotion": "Giảm giá 6% cho đơn hàng online",
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 420,
    "image":
        "https://media.hcdn.vn/wysiwyg/MaiQuynh/mieng-dan-mun-some-by-mi-18-mieng-6.jpg",
    "description":
        "Miếng dán mụn Some By Mi giúp bảo vệ và làm khô nhân mụn nhanh chóng.",
    "specs": {
      "Quy cách": "Hộp 18 miếng",
      "Kết cấu": "Miếng dán hydrocolloid",
      "Loại da phù hợp": "Da mụn",
      "Xuất xứ": "Hàn Quốc",
      "Ngày sản xuất": "09/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "8809413340001",
    },
    "ingredients": [
      "Hydrocolloid – hút dịch mụn",
      "Tea Tree Extract – kháng khuẩn, làm dịu da",
      "Salicylic Acid – hỗ trợ làm sạch lỗ chân lông",
      "Polyurethane Film – chống thấm nước",
      "Niacinamide – hỗ trợ làm sáng da",
    ],
    "usage": '''
1. Làm sạch vùng da bị mụn.
2. Dán miếng patch trực tiếp lên nốt mụn.
3. Thay miếng dán sau 6–8 giờ hoặc khi patch chuyển màu trắng.
4. Sử dụng thường xuyên để bảo vệ da khỏi vi khuẩn và giảm sưng viêm.
''',
  },
  {
    "id": "SP335",
    "name": "Miếng dán mụn Innisfree Bija Trouble Patch",
    "brand": "Innisfree",
    "type": "miếng dán mụn",
    "category": "Others",
    "originalPrice": 85000,
    "discountPrice": 80000,
    "isDiscountActive": true,
    "promotion": "Giảm giá 6% cho tuần lễ Cyber Monday",
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 350,
    "image":
        "https://salt.tikicdn.com/cache/w1200/ts/product/4c/5f/05/7a1da7e091ba0ace11e9a85606601c12.jpg",
    "description":
        "Miếng dán mụn Innisfree Bija Trouble Patch giúp bảo vệ da và giảm sưng viêm.",
    "specs": {
      "Quy cách": "Hộp 20 miếng",
      "Kết cấu": "Miếng dán hydrocolloid",
      "Loại da phù hợp": "Da mụn",
      "Xuất xứ": "Hàn Quốc",
      "Ngày sản xuất": "07/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "8809613350001",
    },
    "ingredients": [
      "Hydrocolloid – hút dịch mụn",
      "Bija Oil – kháng viêm, làm dịu da",
      "Centella Asiatica – hỗ trợ phục hồi da",
      "Acrylic Adhesive – chất kết dính an toàn",
      "Green Tea Extract – chống oxy hóa, kháng khuẩn",
    ],
    "usage": '''
1. Làm sạch vùng da bị mụn.
2. Dán miếng patch trực tiếp lên nốt mụn.
3. Thay miếng dán sau 8 giờ hoặc khi patch chuyển màu.
4. Có thể dùng qua đêm để tăng hiệu quả giảm sưng viêm.
''',
  },
  {
    "id": "SP336",
    "name": "Miếng dán mụn Mediheal Clear Spot Patch",
    "brand": "Mediheal",
    "type": "miếng dán mụn",
    "category": "Others",
    "originalPrice": 80000,
    "discountPrice": 76000,
    "isDiscountActive": true,
    "promotion": "Giảm giá 5% cho tuần lễ Black Friday",
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 300,
    "image":
        "https://product.hstatic.net/200000414981/product/8809449344643_neo_mieng_dan_mun_moms_derm_premium_104_mieng_2b7fb652f4c94bcc9d14a1fd53b77c47_grande.jpg",
    "description":
        "Miếng dán mụn Mediheal giúp bảo vệ da và hỗ trợ làm khô nhân mụn nhanh chóng.",
    "specs": {
      "Quy cách": "Hộp 24 miếng",
      "Kết cấu": "Miếng dán hydrocolloid",
      "Loại da phù hợp": "Da mụn",
      "Xuất xứ": "Hàn Quốc",
      "Ngày sản xuất": "08/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "8809613360001",
    },
    "ingredients": [
      "Hydrocolloid – hút dịch mụn",
      "Centella Asiatica Extract – làm dịu da",
      "Niacinamide – hỗ trợ làm sáng vùng da mụn",
      "Polyurethane Film – chống thấm nước",
      "Tea Tree Oil – kháng khuẩn",
    ],
    "usage": '''
1. Làm sạch vùng da bị mụn.
2. Dán miếng patch trực tiếp lên nốt mụn.
3. Thay miếng dán sau 6–8 giờ hoặc khi patch chuyển màu trắng.
4. Có thể dùng dưới lớp trang điểm để bảo vệ da.
''',
  },
  {
    "id": "SP337",
    "name": "Miếng dán mụn 3M Nexcare Acne Patch",
    "brand": "3M Nexcare",
    "type": "miếng dán mụn",
    "category": "Others",
    "originalPrice": 95000,
    "discountPrice": 89000,
    "isDiscountActive": true,
    "promotion": "Giảm giá 7% cho đơn hàng online",
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 400,
    "image":
        "https://trungtamthuoc.com/images/products/mieng-dan-mun-3m-nexcare-6-n5168.jpg",
    "description":
        "Miếng dán mụn Nexcare giúp hút dịch mụn và bảo vệ da khỏi vi khuẩn, phù hợp dùng cả ngày.",
    "specs": {
      "Quy cách": "Hộp 36 miếng",
      "Kết cấu": "Miếng dán hydrocolloid",
      "Loại da phù hợp": "Da mụn",
      "Xuất xứ": "Mỹ",
      "Ngày sản xuất": "09/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "0511313370001",
    },
    "ingredients": [
      "Hydrocolloid – hút dịch mụn, bảo vệ khỏi vi khuẩn",
      "Polyurethane Film – lớp màng bảo vệ, chống thấm nước",
      "Acrylic Adhesive – chất kết dính an toàn cho da",
      "Tea Tree Oil – kháng khuẩn, giảm viêm",
      "Niacinamide – hỗ trợ làm sáng vùng da mụn",
    ],
    "usage": '''
1. Làm sạch vùng da bị mụn và lau khô.
2. Dán miếng patch trực tiếp lên nốt mụn, đảm bảo phủ kín nhân mụn.
3. Thay miếng dán sau 6–8 giờ hoặc khi patch chuyển màu trắng.
4. Có thể dùng qua đêm để tăng hiệu quả hút dịch mụn.
5. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp.
''',
  },
  {
    "id": "SP338",
    "name": "Miếng dán mụn Dr.Jart+ Ctrl-A Spot Patch",
    "brand": "Dr.Jart+",
    "type": "miếng dán mụn",
    "category": "Others",
    "originalPrice": 98000,
    "discountPrice": 93000,
    "isDiscountActive": true,
    "promotion": "Khuyến mãi 5% cho tuần lễ Black Friday",
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 280,
    "image":
        "https://cdn.hstatic.net/products/200000868185/dr.g_a_clear_ultra_thin_spot_patch_7c3bd02e9c154a5a8829f458d4ef99d6.jpg",
    "description":
        "Miếng dán mụn Dr.Jart+ giúp bảo vệ da, giảm sưng viêm và hỗ trợ làm khô nhân mụn nhanh chóng.",
    "specs": {
      "Quy cách": "Hộp 24 miếng",
      "Kết cấu": "Miếng dán hydrocolloid",
      "Loại da phù hợp": "Da mụn",
      "Xuất xứ": "Hàn Quốc",
      "Ngày sản xuất": "07/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "8809613380001",
    },
    "ingredients": [
      "Hydrocolloid – hút dịch mụn, bảo vệ khỏi vi khuẩn",
      "Centella Asiatica Extract – làm dịu da, hỗ trợ phục hồi",
      "Salicylic Acid – làm sạch lỗ chân lông, giảm mụn viêm",
      "Polyurethane Film – chống thấm nước, bảo vệ da",
      "Green Tea Extract – kháng khuẩn, chống oxy hóa",
    ],
    "usage": '''
1. Làm sạch vùng da bị mụn và lau khô.
2. Dán miếng patch trực tiếp lên nốt mụn.
3. Thay miếng dán sau 6–8 giờ hoặc khi patch chuyển màu trắng.
4. Có thể dùng dưới lớp trang điểm để bảo vệ da.
5. Sử dụng thường xuyên để giảm sưng viêm và ngăn ngừa vi khuẩn.
''',
  },
  {
    "id": "SP339",
    "name": "Bộ quà tặng dưỡng da Innisfree Green Tea",
    "brand": "Innisfree",
    "type": "bộ quà tặng",
    "category": "Others",
    "originalPrice": 450000,
    "discountPrice": 420000,
    "isDiscountActive": true,
    "promotion": "Giảm giá 7% tuần lễ Black Friday",
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 150,
    "image":
        "https://mint07.com/wp-content/uploads/2024/09/set-duong-da-innisfree-green-tea-trio-kit-3-mon.jpg",
    "description":
        "Bộ quà tặng Innisfree Green Tea gồm toner, serum và kem dưỡng chiết xuất trà xanh.",
    "specs": {
      "Quy cách": "Hộp quà 3 sản phẩm",
      "Loại da phù hợp": "Da dầu, da hỗn hợp",
      "Xuất xứ": "Hàn Quốc",
      "Ngày sản xuất": "08/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "8809613390001",
    },
    "ingredients": [
      "Green Tea Extract – chống oxy hóa, dưỡng ẩm",
      "Glycerin – cấp ẩm",
      "Niacinamide – làm sáng da",
      "Panthenol – làm dịu da",
    ],
    "usage":
        "Sử dụng toner sau khi rửa mặt, serum trước khi dưỡng, kem dưỡng cuối cùng.",
  },
  {
    "id": "SP340",
    "name": "Bộ quà tặng nước hoa Dior Mini Set",
    "brand": "Dior",
    "type": "bộ quà tặng",
    "category": "Others",
    "originalPrice": 2200000,
    "discountPrice": 2200000,
    "isDiscountActive": false,
    "promotion": null,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 80,
    "image":
        "https://cdn.vuahanghieu.com/unsafe/0x900/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2024/10/set-nuoc-hoa-dior-miss-dior-blooming-gift-set-3-mon-kem-tui-670de95909d89-15102024110233.jpg",
    "description": "Set quà tặng Dior gồm 3 chai nước hoa mini sang trọng.",
    "specs": {
      "Quy cách": "Hộp quà 3 chai 15ml",
      "Đối tượng phù hợp": "Nam và nữ",
      "Xuất xứ": "Pháp",
      "Ngày sản xuất": "07/2025",
      "Hạn sử dụng": "60 tháng kể từ ngày sản xuất",
      "Mã vạch": "3348903400001",
    },
    "ingredients": [
      "Alcohol Denat – dung môi",
      "Fragrance – hương thơm đặc trưng Dior",
      "Aqua – dung môi chính",
      "Essential Oils – tạo hương tự nhiên",
    ],
    "usage": "Xịt trực tiếp lên vùng da cổ tay, sau tai hoặc quần áo.",
  },
  {
    "id": "SP341",
    "name": "Bộ quà tặng chăm sóc tóc L'Oréal",
    "brand": "L'Oréal",
    "type": "bộ quà tặng",
    "category": "Others",
    "originalPrice": 520000,
    "discountPrice": 490000,
    "isDiscountActive": true,
    "promotion": "Giảm giá 6% cho đơn hàng online",
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 120,
    "image":
        "https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2025/04/70b181a6-top-san-pham-skincare-va-haircare-loreal-thumbnail.jpg",
    "description": "Bộ quà tặng L'Oréal gồm dầu gội, dầu xả và xịt dưỡng tóc.",
    "specs": {
      "Quy cách": "Hộp quà 3 sản phẩm",
      "Loại tóc phù hợp": "Tóc khô, hư tổn",
      "Xuất xứ": "Pháp",
      "Ngày sản xuất": "09/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "3011373410001",
    },
    "ingredients": [
      "Argan Oil – dưỡng tóc mềm mượt",
      "Keratin – phục hồi tóc hư tổn",
      "Vitamin B5 – nuôi dưỡng tóc chắc khỏe",
    ],
    "usage": "Dùng dầu gội và dầu xả khi gội đầu, xịt dưỡng sau khi sấy tóc.",
  },
  {
    "id": "SP342",
    "name": "Bộ quà tặng dưỡng thể Vaseline",
    "brand": "Vaseline",
    "type": "bộ quà tặng",
    "category": "Others",
    "originalPrice": 350000,
    "discountPrice": 350000,
    "isDiscountActive": false,
    "promotion": null,
    "promotionStart": null,
    "promotionEnd": null,
    "stockQuantity": 200,
    "image":
        "https://cdn.hstatic.net/products/1000006063/vaseline_0867d42173644ef494e394e01ee7735a_1024x1024.jpg",
    "description":
        "Bộ quà tặng Vaseline gồm sữa tắm và kem dưỡng thể dưỡng ẩm chuyên sâu.",
    "specs": {
      "Quy cách": "Hộp quà 2 sản phẩm",
      "Loại da phù hợp": "Da khô",
      "Xuất xứ": "Mỹ",
      "Ngày sản xuất": "06/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "0794003420001",
    },
    "ingredients": [
      "Petrolatum – khóa ẩm",
      "Glycerin – cấp ẩm",
      "Vitamin E – chống oxy hóa",
    ],
    "usage": "Dùng sữa tắm hàng ngày, thoa kem dưỡng thể sau khi tắm.",
  },
  {
    "id": "SP343",
    "name": "Bộ quà tặng trang điểm Maybelline",
    "brand": "Maybelline",
    "type": "bộ quà tặng",
    "category": "Others",
    "originalPrice": 480000,
    "discountPrice": 450000,
    "isDiscountActive": true,
    "promotion": "Giảm giá 6% cho tuần lễ Black Friday",
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 140,
    "image":
        "https://cocolux.com/storage/upload_image/images/san-pham/top-5-kem-che-khuyet-diem-han-quoc-duoc-yeu-thich-nhat-hien-nay.jpg",
    "description": "Bộ quà tặng Maybelline gồm son, mascara và phấn phủ.",
    "specs": {
      "Quy cách": "Hộp quà 3 sản phẩm",
      "Đối tượng phù hợp": "Nữ giới",
      "Xuất xứ": "Mỹ",
      "Ngày sản xuất": "08/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "3600533430001",
    },
    "ingredients": [
      "Wax – tạo độ bám cho son",
      "Pigments – màu sắc tự nhiên",
      "Silica – kiểm soát dầu",
      "Fragrance – hương thơm nhẹ",
    ],
    "usage": "Dùng son cho môi, mascara cho mi và phấn phủ sau lớp nền.",
  },
  {
    "id": "SP344",
    "name": "Bộ quà tặng dưỡng da Laneige Water Bank",
    "brand": "Laneige",
    "type": "bộ quà tặng",
    "category": "Others",
    "originalPrice": 890000,
    "discountPrice": 850000,
    "isDiscountActive": true,
    "promotion": "Giảm giá 5% cho tuần lễ Black Friday",
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 100,
    "image":
        "https://media.hcdn.vn/catalog/product/b/o/bo-kit-duong-am-da-5-mon_img_450x450_31d6f9_fit_center.jpg",
    "description":
        "Bộ quà tặng Laneige Water Bank gồm serum và kem dưỡng ẩm chuyên sâu, giúp cấp nước và phục hồi da khô.",
    "specs": {
      "Quy cách": "Hộp quà 2 sản phẩm",
      "Loại da phù hợp": "Da khô, da thường",
      "Xuất xứ": "Hàn Quốc",
      "Ngày sản xuất": "09/2025",
      "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
      "Mã vạch": "8809643440001",
    },
    "ingredients": [
      "Hyaluronic Acid – cấp nước cho da, giữ ẩm lâu dài",
      "Mineral Water – bổ sung khoáng chất cần thiết",
      "Glycerin – dưỡng ẩm, làm mềm da",
      "Panthenol – làm dịu da, hỗ trợ phục hồi",
      "Green Tea Extract – chống oxy hóa, bảo vệ da",
    ],
    "usage": '''
1. Sau khi rửa mặt, thoa serum Laneige Water Bank để cấp nước tức thì cho da.
2. Tiếp tục dùng kem dưỡng ẩm để khóa ẩm và duy trì độ mềm mịn.
3. Sử dụng đều đặn sáng và tối để đạt hiệu quả tối ưu.
4. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp.
''',
  },
  {
    "id": "SP345",
    "name": "Thực phẩm chức năng Vitamin C 1000mg",
    "brand": "Blackmores",
    "type": "thực phẩm chức năng",
    "category": "Others",
    "originalPrice": 320000,
    "discountPrice": 290000,
    "isDiscountActive": true,
    "promotion": "Giảm giá 9% tuần lễ Black Friday",
    "promotionStart": "2025-11-25T09:00:00",
    "promotionEnd": "2025-11-30T23:59:00",
    "stockQuantity": 200,
    "image":
        "https://www.hangngoainhap.com.vn/images/upload/Image/thuc-pham-chuc-nang/vitamin/vien-uong-bo-sung-vitamin-c-1000mg-kirkland-500-vien-cua-my-1.jpg",
    "description":
        "Viên uống Vitamin C 1000mg hỗ trợ tăng cường sức đề kháng và chống oxy hóa.",
    "specs": {
      "Quy cách": "Hộp 60 viên",
      "Đối tượng phù hợp": "Người trưởng thành",
      "Xuất xứ": "Úc",
      "Ngày sản xuất": "08/2025",
      "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
      "Mã vạch": "9310483450001",
    },
    "ingredients": [
      "Vitamin C – tăng cường miễn dịch",
      "Bioflavonoids – hỗ trợ hấp thu Vitamin C",
      "Calcium Ascorbate – dạng Vitamin C dễ hấp thu",
    ],
    "usage": '''
1. Uống 1 viên/ngày sau bữa ăn.
2. Không dùng cho trẻ em dưới 12 tuổi.
3. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp.
''',
  },
  //   {
  //     "id": "SP346",
  //     "name": "Thực phẩm chức năng Omega-3 Fish Oil",
  //     "brand": "Nature Made",
  //     "type": "thực phẩm chức năng",
  //     "category": "Others",
  //     "originalPrice": 450000,
  //     "discountPrice": 450000,
  //     "isDiscountActive": false,
  //     "promotion": null,
  //     "promotionStart": null,
  //     "promotionEnd": null,
  //     "stockQuantity": 180,
  //     "image": "https://example.com/image346.jpg",
  //     "description": "Omega-3 Fish Oil hỗ trợ tim mạch, não bộ và thị lực.",
  //     "specs": {
  //       "Quy cách": "Hộp 100 viên",
  //       "Đối tượng phù hợp": "Người trưởng thành",
  //       "Xuất xứ": "Mỹ",
  //       "Ngày sản xuất": "07/2025",
  //       "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
  //       "Mã vạch": "0794003460001",
  //     },
  //     "ingredients": [
  //       "EPA – hỗ trợ tim mạch",
  //       "DHA – tốt cho não bộ và thị lực",
  //       "Gelatin – vỏ viên nang",
  //     ],
  //     "usage": '''
  // 1. Uống 1–2 viên/ngày sau bữa ăn.
  // 2. Không dùng cho người dị ứng hải sản.
  // ''',
  //   },
  //   {
  //     "id": "SP347",
  //     "name": "Thực phẩm chức năng Collagen Peptide",
  //     "brand": "Shiseido",
  //     "type": "thực phẩm chức năng",
  //     "category": "Others",
  //     "originalPrice": 680000,
  //     "discountPrice": 640000,
  //     "isDiscountActive": true,
  //     "promotion": "Giảm giá 6% cho đơn hàng online",
  //     "promotionStart": "2025-11-25T09:00:00",
  //     "promotionEnd": "2025-11-30T23:59:00",
  //     "stockQuantity": 150,
  //     "image": "https://example.com/image347.jpg",
  //     "description":
  //         "Collagen Peptide hỗ trợ làm đẹp da, tăng độ đàn hồi và giảm nếp nhăn.",
  //     "specs": {
  //       "Quy cách": "Hộp 30 gói bột",
  //       "Đối tượng phù hợp": "Nữ giới trên 25 tuổi",
  //       "Xuất xứ": "Nhật Bản",
  //       "Ngày sản xuất": "09/2025",
  //       "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
  //       "Mã vạch": "4901873470001",
  //     },
  //     "ingredients": [
  //       "Collagen Peptide – tăng độ đàn hồi da",
  //       "Vitamin C – hỗ trợ tổng hợp collagen",
  //       "Hyaluronic Acid – giữ ẩm cho da",
  //     ],
  //     "usage": '''
  // 1. Pha 1 gói với nước ấm, uống mỗi ngày.
  // 2. Dùng liên tục ít nhất 3 tháng để thấy hiệu quả.
  // ''',
  //   },
  //   {
  //     "id": "SP348",
  //     "name": "Thực phẩm chức năng Probiotic",
  //     "brand": "Culturelle",
  //     "type": "thực phẩm chức năng",
  //     "category": "Others",
  //     "originalPrice": 520000,
  //     "discountPrice": 520000,
  //     "isDiscountActive": false,
  //     "promotion": null,
  //     "promotionStart": null,
  //     "promotionEnd": null,
  //     "stockQuantity": 220,
  //     "image": "https://example.com/image348.jpg",
  //     "description": "Probiotic hỗ trợ tiêu hóa, cân bằng hệ vi sinh đường ruột.",
  //     "specs": {
  //       "Quy cách": "Hộp 50 viên",
  //       "Đối tượng phù hợp": "Người lớn và trẻ em trên 6 tuổi",
  //       "Xuất xứ": "Mỹ",
  //       "Ngày sản xuất": "06/2025",
  //       "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
  //       "Mã vạch": "0491003480001",
  //     },
  //     "ingredients": [
  //       "Lactobacillus rhamnosus GG – lợi khuẩn chính",
  //       "Inulin – chất xơ hòa tan",
  //       "Magnesium Stearate – tá dược",
  //     ],
  //     "usage": '''
  // 1. Uống 1 viên/ngày, có thể uống trước hoặc sau bữa ăn.
  // 2. Dùng thường xuyên để duy trì hệ tiêu hóa khỏe mạnh.
  // ''',
  //   },
  //   {
  //     "id": "SP349",
  //     "name": "Thực phẩm chức năng Vitamin D3 + K2",
  //     "brand": "Now Foods",
  //     "type": "thực phẩm chức năng",
  //     "category": "Others",
  //     "originalPrice": 390000,
  //     "discountPrice": 370000,
  //     "isDiscountActive": true,
  //     "promotion": "Giảm giá 5% cho tuần lễ Black Friday",
  //     "promotionStart": "2025-11-25T09:00:00",
  //     "promotionEnd": "2025-11-30T23:59:00",
  //     "stockQuantity": 160,
  //     "image": "https://example.com/image349.jpg",
  //     "description": "Vitamin D3 + K2 hỗ trợ xương chắc khỏe và tim mạch.",
  //     "specs": {
  //       "Quy cách": "Hộp 60 viên",
  //       "Đối tượng phù hợp": "Người trưởng thành",
  //       "Xuất xứ": "Mỹ",
  //       "Ngày sản xuất": "08/2025",
  //       "Hạn sử dụng": "24 tháng kể từ ngày sản xuất",
  //       "Mã vạch": "7337393490001",
  //     },
  //     "ingredients": [
  //       "Vitamin D3 – hỗ trợ hấp thu canxi",
  //       "Vitamin K2 – điều hòa canxi vào xương",
  //       "Olive Oil – dung môi",
  //     ],
  //     "usage": '''
  // 1. Uống 1 viên/ngày sau bữa ăn.
  // 2. Không dùng cho trẻ em dưới 12 tuổi.
  // ''',
  //   },
  //   {
  //     "id": "SP350",
  //     "name": "Thực phẩm chức năng Glucosamine Sulfate",
  //     "brand": "Kirkland Signature",
  //     "type": "thực phẩm chức năng",
  //     "category": "Others",
  //     "originalPrice": 560000,
  //     "discountPrice": 530000,
  //     "isDiscountActive": true,
  //     "promotion": "Giảm giá 5% cho tuần lễ Black Friday",
  //     "promotionStart": "2025-11-25T09:00:00",
  //     "promotionEnd": "2025-11-30T23:59:00",
  //     "stockQuantity": 140,
  //     "image": "https://example.com/image350.jpg",
  //     "description":
  //         "Glucosamine Sulfate hỗ trợ khớp, giảm đau nhức và tăng cường vận động.",
  //     "specs": {
  //       "Quy cách": "Hộp 200 viên",
  //       "Đối tượng phù hợp": "Người trưởng thành",
  //       "Xuất xứ": "Mỹ",
  //       "Ngày sản xuất": "07/2025",
  //       "Hạn sử dụng": "36 tháng kể từ ngày sản xuất",
  //       "Mã vạch": "0966193500001",
  //     },
  //     "ingredients": [
  //       "Glucosamine Sulfate – hỗ trợ khớp, giảm đau nhức",
  //       "Chondroitin – tăng cường sụn khớp",
  //       "MSM (Methylsulfonylmethane) – giảm viêm, hỗ trợ vận động",
  //       "Gelatin – vỏ viên nang",
  //       "Magnesium Stearate – tá dược",
  //     ],
  //     "usage": '''
  // 1. Uống 1–2 viên/ngày sau bữa ăn.
  // 2. Dùng liên tục ít nhất 3 tháng để thấy hiệu quả rõ rệt.
  // 3. Không dùng cho phụ nữ có thai hoặc cho con bú nếu chưa tham khảo ý kiến bác sĩ.
  // 4. Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp.
  // ''',
  //   },
  //   {
  //     "id": "SP351",
  //     "name": "Kem tẩy lông Veet Silk & Fresh",
  //     "brand": "Veet",
  //     "type": "tẩy lông",
  //     "category": "Others",
  //     "originalPrice": 120000,
  //     "discountPrice": 110000,
  //     "isDiscountActive": true,
  //     "promotion": "Giảm giá 8% tuần lễ Black Friday",
  //     "promotionStart": "2025-11-25T09:00:00",
  //     "promotionEnd": "2025-11-30T23:59:00",
  //     "stockQuantity": 200,
  //     "image": "https://example.com/image351.jpg",
  //     "description":
  //         "Kem tẩy lông Veet Silk & Fresh giúp loại bỏ lông nhanh chóng, da mềm mịn.",
  //     "specs": {
  //       "Dung tích": "100ml",
  //       "Loại da phù hợp": "Da thường",
  //       "Xuất xứ": "Pháp",
  //       "Ngày sản xuất": "08/2025",
  //       "Hạn sử dụng": "36 tháng",
  //       "Mã vạch": "3030053510001",
  //     },
  //     "ingredients": [
  //       "Thioglycolic Acid – phá vỡ cấu trúc lông",
  //       "Aloe Vera – làm dịu da",
  //       "Vitamin E – chống oxy hóa",
  //     ],
  //     "usage":
  //         "Thoa kem lên vùng da cần tẩy, để 5–10 phút rồi lau sạch bằng khăn.",
  //   },
  //   {
  //     "id": "SP352",
  //     "name": "Kem tẩy lông Evoluderm",
  //     "brand": "Evoluderm",
  //     "type": "tẩy lông",
  //     "category": "Others",
  //     "originalPrice": 95000,
  //     "discountPrice": 95000,
  //     "isDiscountActive": false,
  //     "promotion": null,
  //     "promotionStart": null,
  //     "promotionEnd": null,
  //     "stockQuantity": 180,
  //     "image": "https://example.com/image352.jpg",
  //     "description": "Kem tẩy lông Evoluderm dịu nhẹ, phù hợp cho da nhạy cảm.",
  //     "specs": {
  //       "Dung tích": "75ml",
  //       "Loại da phù hợp": "Da nhạy cảm",
  //       "Xuất xứ": "Pháp",
  //       "Ngày sản xuất": "07/2025",
  //       "Hạn sử dụng": "36 tháng",
  //       "Mã vạch": "3760103520001",
  //     },
  //     "ingredients": [
  //       "Chamomile Extract – làm dịu da",
  //       "Thioglycolic Acid – loại bỏ lông",
  //       "Glycerin – dưỡng ẩm",
  //     ],
  //     "usage": "Thoa kem lên da, để 8 phút rồi rửa sạch bằng nước ấm.",
  //   },
  //   {
  //     "id": "SP353",
  //     "name": "Kem tẩy lông Cléo",
  //     "brand": "Cléo",
  //     "type": "tẩy lông",
  //     "category": "Others",
  //     "originalPrice": 75000,
  //     "discountPrice": 72000,
  //     "isDiscountActive": true,
  //     "promotion": "Giảm giá 4% cho đơn hàng online",
  //     "promotionStart": "2025-11-25T09:00:00",
  //     "promotionEnd": "2025-11-30T23:59:00",
  //     "stockQuantity": 250,
  //     "image": "https://example.com/image353.jpg",
  //     "description": "Kem tẩy lông Cléo chiết xuất từ bơ hạt mỡ, dịu nhẹ cho da.",
  //     "specs": {
  //       "Dung tích": "100ml",
  //       "Loại da phù hợp": "Da thường",
  //       "Xuất xứ": "Việt Nam",
  //       "Ngày sản xuất": "09/2025",
  //       "Hạn sử dụng": "36 tháng",
  //       "Mã vạch": "8934863530001",
  //     },
  //     "ingredients": [
  //       "Shea Butter – dưỡng ẩm",
  //       "Thioglycolic Acid – loại bỏ lông",
  //       "Vitamin E – chống oxy hóa",
  //     ],
  //     "usage": "Thoa kem lên da, để 5–7 phút rồi lau sạch bằng khăn.",
  //   },
  //   {
  //     "id": "SP354",
  //     "name": "Kem tẩy lông The Face Shop",
  //     "brand": "The Face Shop",
  //     "type": "tẩy lông",
  //     "category": "Others",
  //     "originalPrice": 135000,
  //     "discountPrice": 135000,
  //     "isDiscountActive": false,
  //     "promotion": null,
  //     "promotionStart": null,
  //     "promotionEnd": null,
  //     "stockQuantity": 160,
  //     "image": "https://example.com/image354.jpg",
  //     "description": "Kem tẩy lông The Face Shop dịu nhẹ, hương thơm dễ chịu.",
  //     "specs": {
  //       "Dung tích": "100ml",
  //       "Loại da phù hợp": "Mọi loại da",
  //       "Xuất xứ": "Hàn Quốc",
  //       "Ngày sản xuất": "08/2025",
  //       "Hạn sử dụng": "36 tháng",
  //       "Mã vạch": "8809613540001",
  //     },
  //     "ingredients": [
  //       "Green Tea Extract – chống oxy hóa",
  //       "Thioglycolic Acid – loại bỏ lông",
  //       "Aloe Vera – làm dịu da",
  //     ],
  //     "usage": "Thoa kem lên da, để 10 phút rồi rửa sạch bằng nước.",
  //   },
  //   {
  //     "id": "SP355",
  //     "name": "Kem tẩy lông Missha",
  //     "brand": "Missha",
  //     "type": "tẩy lông",
  //     "category": "Others",
  //     "originalPrice": 125000,
  //     "discountPrice": 118000,
  //     "isDiscountActive": true,
  //     "promotion": "Giảm giá 6% cho tuần lễ Black Friday",
  //     "promotionStart": "2025-11-25T09:00:00",
  //     "promotionEnd": "2025-11-30T23:59:00",
  //     "stockQuantity": 140,
  //     "image": "https://example.com/image355.jpg",
  //     "description":
  //         "Kem tẩy lông Missha giúp loại bỏ lông nhanh chóng, da mềm mịn.",
  //     "specs": {
  //       "Dung tích": "100ml",
  //       "Loại da phù hợp": "Da thường",
  //       "Xuất xứ": "Hàn Quốc",
  //       "Ngày sản xuất": "07/2025",
  //       "Hạn sử dụng": "36 tháng",
  //       "Mã vạch": "8806183550001",
  //     },
  //     "ingredients": [
  //       "Thioglycolic Acid – loại bỏ lông",
  //       "Vitamin E – chống oxy hóa",
  //       "Chamomile Extract – làm dịu da",
  //     ],
  //     "usage": "Thoa kem lên da, để 8 phút rồi lau sạch bằng khăn.",
  //   },
  //   {
  //     "id": "SP356",
  //     "name": "Kem tẩy lông Romano",
  //     "brand": "Romano",
  //     "type": "tẩy lông",
  //     "category": "Others",
  //     "originalPrice": 95000,
  //     "discountPrice": 95000,
  //     "isDiscountActive": false,
  //     "promotion": null,
  //     "promotionStart": null,
  //     "promotionEnd": null,
  //     "stockQuantity": 200,
  //     "image": "https://example.com/image356.jpg",
  //     "description":
  //         "Kem tẩy lông Romano dành cho nam giới, hương thơm nam tính.",
  //     "specs": {
  //       "Dung tích": "100ml",
  //       "Loại da phù hợp": "Nam giới",
  //       "Xuất xứ": "Việt Nam",
  //       "Ngày sản xuất": "09/2025",
  //       "Hạn sử dụng": "36 tháng",
  //       "Mã vạch": "8934863560001",
  //     },
  //     "ingredients": [
  //       "Thioglycolic Acid – loại bỏ lông",
  //       "Menthol – tạo cảm giác mát lạnh",
  //       "Vitamin E – chống oxy hóa",
  //     ],
  //     "usage": "Thoa kem lên da, để 7 phút rồi rửa sạch bằng nước.",
  //   },
  //   {
  //     "id": "SP357",
  //     "name": "Gel rửa tay kháng khuẩn Lifebuoy",
  //     "brand": "Lifebuoy",
  //     "type": "gel rửa tay",
  //     "category": "Others",
  //     "originalPrice": 45000,
  //     "discountPrice": 42000,
  //     "isDiscountActive": true,
  //     "promotion": "Giảm giá 7% tuần lễ Black Friday",
  //     "promotionStart": "2025-11-25T09:00:00",
  //     "promotionEnd": "2025-11-30T23:59:00",
  //     "stockQuantity": 500,
  //     "image": "https://example.com/image357.jpg",
  //     "description":
  //         "Gel rửa tay Lifebuoy kháng khuẩn, sạch tay nhanh chóng, hương thơm dễ chịu.",
  //     "specs": {
  //       "Dung tích": "50ml",
  //       "Kết cấu": "Gel trong suốt",
  //       "Đối tượng phù hợp": "Mọi đối tượng",
  //       "Xuất xứ": "Việt Nam",
  //       "Ngày sản xuất": "08/2025",
  //       "Hạn sử dụng": "24 tháng",
  //       "Mã vạch": "8934863570001",
  //     },
  //     "ingredients": [
  //       "Alcohol 70% – diệt khuẩn",
  //       "Glycerin – dưỡng ẩm",
  //       "Fragrance – hương thơm dễ chịu",
  //     ],
  //     "usage": "Lấy một lượng gel vừa đủ, xoa đều khắp tay đến khi khô.",
  //   },
  //   {
  //     "id": "SP358",
  //     "name": "Gel rửa tay khô Bath & Body Works",
  //     "brand": "Bath & Body Works",
  //     "type": "gel rửa tay",
  //     "category": "Others",
  //     "originalPrice": 99000,
  //     "discountPrice": 99000,
  //     "isDiscountActive": false,
  //     "promotion": null,
  //     "promotionStart": null,
  //     "promotionEnd": null,
  //     "stockQuantity": 300,
  //     "image": "https://example.com/image358.jpg",
  //     "description":
  //         "Gel rửa tay Bath & Body Works với nhiều mùi hương đa dạng, tiện lợi.",
  //     "specs": {
  //       "Dung tích": "29ml",
  //       "Kết cấu": "Gel trong suốt",
  //       "Đối tượng phù hợp": "Mọi đối tượng",
  //       "Xuất xứ": "Mỹ",
  //       "Ngày sản xuất": "07/2025",
  //       "Hạn sử dụng": "24 tháng",
  //       "Mã vạch": "6675483580001",
  //     },
  //     "ingredients": [
  //       "Alcohol 68% – diệt khuẩn",
  //       "Aloe Vera – làm dịu da",
  //       "Vitamin E – chống oxy hóa",
  //     ],
  //     "usage": "Xoa đều gel lên tay, không cần rửa lại với nước.",
  //   },
  //   {
  //     "id": "SP359",
  //     "name": "Gel rửa tay kháng khuẩn Purell Advanced",
  //     "brand": "Purell",
  //     "type": "gel rửa tay",
  //     "category": "Others",
  //     "originalPrice": 120000,
  //     "discountPrice": 115000,
  //     "isDiscountActive": true,
  //     "promotion": "Giảm giá 5% cho đơn hàng online",
  //     "promotionStart": "2025-11-25T09:00:00",
  //     "promotionEnd": "2025-11-30T23:59:00",
  //     "stockQuantity": 250,
  //     "image": "https://example.com/image359.jpg",
  //     "description":
  //         "Gel rửa tay Purell Advanced diệt khuẩn nhanh, an toàn cho da.",
  //     "specs": {
  //       "Dung tích": "60ml",
  //       "Kết cấu": "Gel trong suốt",
  //       "Đối tượng phù hợp": "Mọi đối tượng",
  //       "Xuất xứ": "Mỹ",
  //       "Ngày sản xuất": "09/2025",
  //       "Hạn sử dụng": "24 tháng",
  //       "Mã vạch": "0738523590001",
  //     },
  //     "ingredients": [
  //       "Alcohol 70% – diệt khuẩn",
  //       "Glycerin – dưỡng ẩm",
  //       "Aloe Vera – làm dịu da",
  //     ],
  //     "usage": "Lấy một lượng gel vừa đủ, xoa đều khắp tay đến khi khô.",
  //   },
  //   {
  //     "id": "SP360",
  //     "name": "Gel rửa tay kháng khuẩn On1",
  //     "brand": "On1",
  //     "type": "gel rửa tay",
  //     "category": "Others",
  //     "originalPrice": 35000,
  //     "discountPrice": 35000,
  //     "isDiscountActive": false,
  //     "promotion": null,
  //     "promotionStart": null,
  //     "promotionEnd": null,
  //     "stockQuantity": 600,
  //     "image": "https://example.com/image360.jpg",
  //     "description":
  //         "Gel rửa tay On1 kháng khuẩn, giá cả hợp lý, tiện lợi mang theo.",
  //     "specs": {
  //       "Dung tích": "100ml",
  //       "Kết cấu": "Gel trong suốt",
  //       "Đối tượng phù hợp": "Mọi đối tượng",
  //       "Xuất xứ": "Việt Nam",
  //       "Ngày sản xuất": "08/2025",
  //       "Hạn sử dụng": "24 tháng",
  //       "Mã vạch": "8934863600001",
  //     },
  //     "ingredients": [
  //       "Alcohol 65% – diệt khuẩn",
  //       "Glycerin – dưỡng ẩm",
  //       "Fragrance – hương thơm nhẹ",
  //     ],
  //     "usage": "Xoa đều gel lên tay, không cần rửa lại với nước.",
  //   },
  //   {
  //     "id": "SP361",
  //     "name": "Gel rửa tay kháng khuẩn The Body Shop",
  //     "brand": "The Body Shop",
  //     "type": "gel rửa tay",
  //     "category": "Others",
  //     "originalPrice": 135000,
  //     "discountPrice": 128000,
  //     "isDiscountActive": true,
  //     "promotion": "Giảm giá 5% cho tuần lễ Black Friday",
  //     "promotionStart": "2025-11-25T09:00:00",
  //     "promotionEnd": "2025-11-30T23:59:00",
  //     "stockQuantity": 180,
  //     "image": "https://example.com/image361.jpg",
  //     "description":
  //         "Gel rửa tay The Body Shop với chiết xuất thiên nhiên, an toàn cho da.",
  //     "specs": {
  //       "Dung tích": "60ml",
  //       "Kết cấu": "Gel trong suốt",
  //       "Đối tượng phù hợp": "Mọi đối tượng",
  //       "Xuất xứ": "Anh",
  //       "Ngày sản xuất": "07/2025",
  //       "Hạn sử dụng": "24 tháng",
  //       "Mã vạch": "5028193610001",
  //     },
  //     "ingredients": [
  //       "Alcohol 70% – diệt khuẩn",
  //       "Aloe Vera – làm dịu da",
  //       "Vitamin E – chống oxy hóa",
  //     ],
  //     "usage": "Lấy một lượng gel vừa đủ, xoa đều khắp tay đến khi khô.",
  //   },
  //   {
  //     "id": "SP362",
  //     "name": "Gel rửa tay kháng khuẩn Germ-X",
  //     "brand": "Germ-X",
  //     "type": "gel rửa tay",
  //     "category": "Others",
  //     "originalPrice": 95000,
  //     "discountPrice": 95000,
  //     "isDiscountActive": false,
  //     "promotion": null,
  //     "promotionStart": null,
  //     "promotionEnd": null,
  //     "stockQuantity": 220,
  //     "image": "https://example.com/image362.jpg",
  //     "description":
  //         "Gel rửa tay Germ-X kháng khuẩn, tiện lợi mang theo bên mình.",
  //     "specs": {
  //       "Dung tích": "60ml",
  //       "Kết cấu": "Gel trong suốt",
  //       "Đối tượng phù hợp": "Mọi đối tượng",
  //       "Xuất xứ": "Mỹ",
  //       "Ngày sản xuất": "09/2025",
  //       "Hạn sử dụng": "24 tháng",
  //       "Mã vạch": "0727853620001",
  //     },
  //     "ingredients": [
  //       "Alcohol 62% – diệt khuẩn",
  //       "Glycerin – dưỡng ẩm",
  //       "Fragrance – hương thơm nhẹ",
  //     ],
  //     "usage": "Xoa đều gel lên tay, không cần rửa lại với nước.",
  //   },
  //   {
  //     "id": "SP363",
  //     "name": "Son lì MAC Retro Matte Ruby Woo",
  //     "brand": "MAC",
  //     "type": "son",
  //     "category": "Makeup",
  //     "originalPrice": 650000,
  //     "discountPrice": 620000,
  //     "isDiscountActive": true,
  //     "promotion": "Giảm giá 5% Black Friday",
  //     "promotionStart": "2025-11-25T09:00:00",
  //     "promotionEnd": "2025-11-30T23:59:00",
  //     "stockQuantity": 200,
  //     "image": "https://example.com/image363.jpg",
  //     "description": "Son lì Ruby Woo nổi tiếng với màu đỏ cổ điển, lâu trôi.",
  //     "specs": {
  //       "Dung tích": "3g",
  //       "Kết cấu": "Son thỏi lì",
  //       "Xuất xứ": "Mỹ",
  //       "Ngày sản xuất": "08/2025",
  //       "Hạn sử dụng": "36 tháng",
  //       "Mã vạch": "7736023630001",
  //     },
  //     "ingredients": [
  //       "Pigments – tạo màu",
  //       "Wax – giữ kết cấu",
  //       "Vitamin E – dưỡng môi",
  //     ],
  //     "usage": "Thoa trực tiếp lên môi.",
  //   },
  //   {
  //     "id": "SP364",
  //     "name": "Son dưỡng Dior Addict Lip Glow",
  //     "brand": "Dior",
  //     "type": "son",
  //     "category": "Makeup",
  //     "originalPrice": 950000,
  //     "discountPrice": 950000,
  //     "isDiscountActive": false,
  //     "promotion": null,
  //     "promotionStart": null,
  //     "promotionEnd": null,
  //     "stockQuantity": 150,
  //     "image": "https://example.com/image364.jpg",
  //     "description":
  //         "Son dưỡng Dior Addict Lip Glow giúp môi mềm mịn, lên màu tự nhiên.",
  //     "specs": {
  //       "Dung tích": "3.5g",
  //       "Kết cấu": "Son dưỡng",
  //       "Xuất xứ": "Pháp",
  //       "Ngày sản xuất": "07/2025",
  //       "Hạn sử dụng": "36 tháng",
  //       "Mã vạch": "3348903640001",
  //     },
  //     "ingredients": [
  //       "Shea Butter – dưỡng ẩm",
  //       "Mango Butter – làm mềm môi",
  //       "Pigments – tạo màu nhẹ",
  //     ],
  //     "usage": "Thoa trực tiếp lên môi.",
  //   },
  //   {
  //     "id": "SP365",
  //     "name": "Son kem lì Maybelline SuperStay Matte Ink",
  //     "brand": "Maybelline",
  //     "type": "son",
  //     "category": "Makeup",
  //     "originalPrice": 220000,
  //     "discountPrice": 210000,
  //     "isDiscountActive": true,
  //     "promotion": "Giảm giá 5% cho đơn hàng online",
  //     "promotionStart": "2025-11-25T09:00:00",
  //     "promotionEnd": "2025-11-30T23:59:00",
  //     "stockQuantity": 300,
  //     "image": "https://example.com/image365.jpg",
  //     "description":
  //         "Son kem lì Maybelline bền màu đến 16 giờ, chất son mịn mượt.",
  //     "specs": {
  //       "Dung tích": "5ml",
  //       "Kết cấu": "Son kem lì",
  //       "Xuất xứ": "Mỹ",
  //       "Ngày sản xuất": "09/2025",
  //       "Hạn sử dụng": "36 tháng",
  //       "Mã vạch": "3600533650001",
  //     },
  //     "ingredients": [
  //       "Pigments – tạo màu",
  //       "Silica – kiểm soát dầu",
  //       "Dimethicone – làm mịn môi",
  //     ],
  //     "usage": "Thoa trực tiếp lên môi.",
  //   },
  //   {
  //     "id": "SP366",
  //     "name": "Son dưỡng Vaseline Lip Therapy",
  //     "brand": "Vaseline",
  //     "type": "son",
  //     "category": "Makeup",
  //     "originalPrice": 75000,
  //     "discountPrice": 75000,
  //     "isDiscountActive": false,
  //     "promotion": null,
  //     "promotionStart": null,
  //     "promotionEnd": null,
  //     "stockQuantity": 500,
  //     "image": "https://example.com/image366.jpg",
  //     "description":
  //         "Son dưỡng Vaseline Lip Therapy giúp môi mềm mại, chống nứt nẻ.",
  //     "specs": {
  //       "Dung tích": "7g",
  //       "Kết cấu": "Son dưỡng",
  //       "Xuất xứ": "Mỹ",
  //       "Ngày sản xuất": "08/2025",
  //       "Hạn sử dụng": "36 tháng",
  //       "Mã vạch": "0794003660001",
  //     },
  //     "ingredients": [
  //       "Petrolatum – khóa ẩm",
  //       "Vitamin E – chống oxy hóa",
  //       "Fragrance – hương nhẹ",
  //     ],
  //     "usage": "Thoa trực tiếp lên môi nhiều lần trong ngày.",
  //   },
  //   {
  //     "id": "SP367",
  //     "name": "Son kem lì 3CE Velvet Lip Tint",
  //     "brand": "3CE",
  //     "type": "son",
  //     "category": "Makeup",
  //     "originalPrice": 320000,
  //     "discountPrice": 300000,
  //     "isDiscountActive": true,
  //     "promotion": "Giảm giá 6% cho tuần lễ Black Friday",
  //     "promotionStart": "2025-11-25T09:00:00",
  //     "promotionEnd": "2025-11-30T23:59:00",
  //     "stockQuantity": 220,
  //     "image": "https://example.com/image367.jpg",
  //     "description":
  //         "Son kem lì 3CE Velvet Lip Tint cho màu sắc thời thượng, chất son mịn.",
  //     "specs": {
  //       "Dung tích": "4g",
  //       "Kết cấu": "Son kem lì",
  //       "Xuất xứ": "Hàn Quốc",
  //       "Ngày sản xuất": "09/2025",
  //       "Hạn sử dụng": "36 tháng",
  //       "Mã vạch": "8809613670001",
  //     },
  //     "ingredients": [
  //       "Pigments – tạo màu",
  //       "Dimethicone – làm mịn môi",
  //       "Vitamin E – dưỡng môi",
  //     ],
  //     "usage": "Thoa trực tiếp lên môi.",
  //   },
  //   {
  //     "id": "SP368",
  //     "name": "Son dưỡng Nivea Original Care",
  //     "brand": "Nivea",
  //     "type": "son",
  //     "category": "Makeup",
  //     "originalPrice": 65000,
  //     "discountPrice": 65000,
  //     "isDiscountActive": false,
  //     "promotion": null,
  //     "promotionStart": null,
  //     "promotionEnd": null,
  //     "stockQuantity": 400,
  //     "image": "https://example.com/image368.jpg",
  //     "description":
  //         "Son dưỡng Nivea Original Care giúp môi mềm mại, chống khô nứt.",
  //     "specs": {
  //       "Dung tích": "4.8g",
  //       "Kết cấu": "Son dưỡng",
  //       "Xuất xứ": "Đức",
  //       "Ngày sản xuất": "07/2025",
  //       "Hạn sử dụng": "36 tháng",
  //       "Mã vạch": "4005903680001",
  //     },
  //     "ingredients": [
  //       "Shea Butter – dưỡng ẩm",
  //       "Jojoba Oil – làm mềm môi",
  //       "Vitamin E – chống oxy hóa",
  //     ],
  //     "usage": "Thoa trực tiếp lên môi nhiều lần trong ngày.",
  //   },
  //   {
  //     "id": "SP387",
  //     "name": "Phấn phủ MAC Studio Fix Powder Plus Foundation",
  //     "brand": "MAC",
  //     "type": "phấn phủ",
  //     "category": "Makeup",
  //     "originalPrice": 950000,
  //     "discountPrice": 900000,
  //     "isDiscountActive": true,
  //     "promotion": "Giảm giá 5% Black Friday",
  //     "promotionStart": "2025-11-25T09:00:00",
  //     "promotionEnd": "2025-11-30T23:59:00",
  //     "stockQuantity": 120,
  //     "image": "https://example.com/image387.jpg",
  //     "description":
  //         "Phấn phủ MAC Studio Fix cho lớp nền mịn, che phủ tốt và lâu trôi.",
  //     "specs": {
  //       "Dung tích": "15g",
  //       "Kết cấu": "Phấn nén",
  //       "Xuất xứ": "Mỹ",
  //       "Ngày sản xuất": "07/2025",
  //       "Hạn sử dụng": "36 tháng",
  //       "Mã vạch": "7736023870001",
  //     },
  //     "ingredients": [
  //       "Talc – tạo độ mịn",
  //       "Silica – kiểm soát dầu",
  //       "Iron Oxides – tạo màu tự nhiên",
  //     ],
  //     "usage": "Dùng bông hoặc cọ phủ đều lên mặt sau lớp kem nền.",
  //   },
  //   {
  //     "id": "SP388",
  //     "name": "Phấn phủ Maybelline Fit Me Matte + Poreless",
  //     "brand": "Maybelline",
  //     "type": "phấn phủ",
  //     "category": "Makeup",
  //     "originalPrice": 250000,
  //     "discountPrice": 250000,
  //     "isDiscountActive": false,
  //     "promotion": null,
  //     "promotionStart": null,
  //     "promotionEnd": null,
  //     "stockQuantity": 300,
  //     "image": "https://example.com/image388.jpg",
  //     "description":
  //         "Phấn phủ Maybelline Fit Me kiểm soát dầu, cho lớp nền mịn tự nhiên.",
  //     "specs": {
  //       "Dung tích": "8.5g",
  //       "Kết cấu": "Phấn nén",
  //       "Xuất xứ": "Mỹ",
  //       "Ngày sản xuất": "08/2025",
  //       "Hạn sử dụng": "36 tháng",
  //       "Mã vạch": "3600533880001",
  //     },
  //     "ingredients": [
  //       "Talc – tạo độ mịn",
  //       "Silica – kiểm soát dầu",
  //       "Dimethicone – làm mịn da",
  //     ],
  //     "usage": "Dùng cọ hoặc bông phủ đều lên mặt.",
  //   },
  //   {
  //     "id": "SP389",
  //     "name": "Phấn phủ Innisfree No-Sebum Mineral Powder",
  //     "brand": "Innisfree",
  //     "type": "phấn phủ",
  //     "category": "Makeup",
  //     "originalPrice": 180000,
  //     "discountPrice": 170000,
  //     "isDiscountActive": true,
  //     "promotion": "Giảm giá 6% cho đơn hàng online",
  //     "promotionStart": "2025-11-25T09:00:00",
  //     "promotionEnd": "2025-11-30T23:59:00",
  //     "stockQuantity": 250,
  //     "image": "https://example.com/image389.jpg",
  //     "description":
  //         "Phấn phủ Innisfree No-Sebum kiểm soát dầu, cho da khô thoáng.",
  //     "specs": {
  //       "Dung tích": "5g",
  //       "Kết cấu": "Phấn bột",
  //       "Xuất xứ": "Hàn Quốc",
  //       "Ngày sản xuất": "09/2025",
  //       "Hạn sử dụng": "36 tháng",
  //       "Mã vạch": "8809613890001",
  //     },
  //     "ingredients": [
  //       "Silica – kiểm soát dầu",
  //       "Mineral Powder – tạo độ mịn",
  //       "Green Tea Extract – chống oxy hóa",
  //     ],
  //     "usage": "Dùng bông hoặc cọ phủ đều lên mặt.",
  //   },
  //   {
  //     "id": "SP390",
  //     "name": "Phấn phủ Chanel Poudre Universelle Libre",
  //     "brand": "Chanel",
  //     "type": "phấn phủ",
  //     "category": "Makeup",
  //     "originalPrice": 1650000,
  //     "discountPrice": 1650000,
  //     "isDiscountActive": false,
  //     "promotion": null,
  //     "promotionStart": null,
  //     "promotionEnd": null,
  //     "stockQuantity": 100,
  //     "image": "https://example.com/image390.jpg",
  //     "description":
  //         "Phấn phủ Chanel dạng bột mịn, cho lớp nền tự nhiên và sang trọng.",
  //     "specs": {
  //       "Dung tích": "30g",
  //       "Kết cấu": "Phấn bột",
  //       "Xuất xứ": "Pháp",
  //       "Ngày sản xuất": "07/2025",
  //       "Hạn sử dụng": "36 tháng",
  //       "Mã vạch": "3145893900001",
  //     },
  //     "ingredients": [
  //       "Talc – tạo độ mịn",
  //       "Silica – kiểm soát dầu",
  //       "Iron Oxides – tạo màu",
  //     ],
  //     "usage": "Dùng cọ phủ đều lên mặt sau lớp nền.",
  //   },
  //   {
  //     "id": "SP391",
  //     "name": "Phấn phủ L'Oréal True Match Super-Blendable Powder",
  //     "brand": "L'Oréal",
  //     "type": "phấn phủ",
  //     "category": "Makeup",
  //     "originalPrice": 320000,
  //     "discountPrice": 300000,
  //     "isDiscountActive": true,
  //     "promotion": "Giảm giá 6% cho tuần lễ Black Friday",
  //     "promotionStart": "2025-11-25T09:00:00",
  //     "promotionEnd": "2025-11-30T23:59:00",
  //     "stockQuantity": 200,
  //     "image": "https://example.com/image391.jpg",
  //     "description": "Phấn phủ L'Oréal True Match cho lớp nền mịn, dễ tán đều.",
  //     "specs": {
  //       "Dung tích": "9g",
  //       "Kết cấu": "Phấn nén",
  //       "Xuất xứ": "Pháp",
  //       "Ngày sản xuất": "08/2025",
  //       "Hạn sử dụng": "36 tháng",
  //       "Mã vạch": "3011373910001",
  //     },
  //     "ingredients": [
  //       "Talc – tạo độ mịn",
  //       "Dimethicone – làm mịn da",
  //       "Iron Oxides – tạo màu",
  //     ],
  //     "usage": "Dùng bông hoặc cọ phủ đều lên mặt.",
  //   },
  //   {
  //     "id": "SP392",
  //     "name": "Phấn phủ Maybelline White Superfresh",
  //     "brand": "Maybelline",
  //     "type": "phấn phủ",
  //     "category": "Makeup",
  //     "originalPrice": 220000,
  //     "discountPrice": 220000,
  //     "isDiscountActive": false,
  //     "promotion": null,
  //     "promotionStart": null,
  //     "promotionEnd": null,
  //     "stockQuantity": 280,
  //     "image": "https://example.com/image392.jpg",
  //     "description":
  //         "Phấn phủ Maybelline White Superfresh kiểm soát dầu, cho da sáng mịn.",
  //     "specs": {
  //       "Dung tích": "9g",
  //       "Kết cấu": "Phấn nén",
  //       "Xuất xứ": "Mỹ",
  //       "Ngày sản xuất": "09/2025",
  //       "Hạn sử dụng": "36 tháng",
  //       "Mã vạch": "3600533920001",
  //     },
  //     "ingredients": [
  //       "Talc – tạo độ mịn",
  //       "Silica – kiểm soát dầu",
  //       "Titanium Dioxide – chống nắng",
  //     ],
  //     "usage": "Dùng bông hoặc cọ phủ đều lên mặt.",
  //   },
  //   {
  //     "id": "SP393",
  //     "name": "Kem nền L'Oréal Infallible 24h Fresh Wear",
  //     "brand": "L'Oréal",
  //     "type": "kem nền",
  //     "category": "Makeup",
  //     "originalPrice": 320000,
  //     "discountPrice": 300000,
  //     "isDiscountActive": true,
  //     "promotion": "Giảm giá 6% Black Friday",
  //     "promotionStart": "2025-11-25T09:00:00",
  //     "promotionEnd": "2025-11-30T23:59:00",
  //     "stockQuantity": 200,
  //     "image": "https://example.com/image393.jpg",
  //     "description":
  //         "Kem nền L'Oréal Infallible cho độ che phủ cao, lâu trôi suốt 24 giờ.",
  //     "specs": {
  //       "Dung tích": "30ml",
  //       "Kết cấu": "Kem lỏng",
  //       "Xuất xứ": "Pháp",
  //       "Ngày sản xuất": "09/2025",
  //       "Hạn sử dụng": "36 tháng",
  //       "Mã vạch": "3011373930001",
  //     },
  //     "ingredients": [
  //       "Dimethicone – làm mịn da",
  //       "Iron Oxides – tạo màu",
  //       "Titanium Dioxide – chống nắng",
  //     ],
  //     "usage": "Dùng cọ hoặc mút tán đều kem nền trên mặt.",
  //   },
  //   {
  //     "id": "SP394",
  //     "name": "Kem nền Maybelline Fit Me Matte + Poreless",
  //     "brand": "Maybelline",
  //     "type": "kem nền",
  //     "category": "Makeup",
  //     "originalPrice": 250000,
  //     "discountPrice": 250000,
  //     "isDiscountActive": false,
  //     "promotion": null,
  //     "promotionStart": null,
  //     "promotionEnd": null,
  //     "stockQuantity": 300,
  //     "image": "https://example.com/image394.jpg",
  //     "description":
  //         "Kem nền Maybelline Fit Me kiểm soát dầu, cho lớp nền mịn tự nhiên.",
  //     "specs": {
  //       "Dung tích": "30ml",
  //       "Kết cấu": "Kem lỏng",
  //       "Xuất xứ": "Mỹ",
  //       "Ngày sản xuất": "08/2025",
  //       "Hạn sử dụng": "36 tháng",
  //       "Mã vạch": "3600533940001",
  //     },
  //     "ingredients": [
  //       "Dimethicone – làm mịn da",
  //       "Iron Oxides – tạo màu",
  //       "Talc – tạo độ mịn",
  //     ],
  //     "usage": "Dùng cọ hoặc mút tán đều kem nền trên mặt.",
  //   },
  //   {
  //     "id": "SP395",
  //     "name": "Kem nền MAC Studio Fix Fluid SPF15",
  //     "brand": "MAC",
  //     "type": "kem nền",
  //     "category": "Makeup",
  //     "originalPrice": 950000,
  //     "discountPrice": 900000,
  //     "isDiscountActive": true,
  //     "promotion": "Giảm giá 5% cho đơn hàng online",
  //     "promotionStart": "2025-11-25T09:00:00",
  //     "promotionEnd": "2025-11-30T23:59:00",
  //     "stockQuantity": 150,
  //     "image": "https://example.com/image395.jpg",
  //     "description":
  //         "Kem nền MAC Studio Fix Fluid che phủ tốt, có chống nắng SPF15.",
  //     "specs": {
  //       "Dung tích": "30ml",
  //       "Kết cấu": "Kem lỏng",
  //       "Xuất xứ": "Mỹ",
  //       "Ngày sản xuất": "07/2025",
  //       "Hạn sử dụng": "36 tháng",
  //       "Mã vạch": "7736023950001",
  //     },
  //     "ingredients": [
  //       "Dimethicone – làm mịn da",
  //       "Titanium Dioxide – chống nắng",
  //       "Iron Oxides – tạo màu",
  //     ],
  //     "usage": "Thoa đều kem nền lên mặt bằng cọ hoặc mút.",
  //   },
  //   {
  //     "id": "SP396",
  //     "name": "Kem nền Dior Forever Skin Glow",
  //     "brand": "Dior",
  //     "type": "kem nền",
  //     "category": "Makeup",
  //     "originalPrice": 1650000,
  //     "discountPrice": 1650000,
  //     "isDiscountActive": false,
  //     "promotion": null,
  //     "promotionStart": null,
  //     "promotionEnd": null,
  //     "stockQuantity": 100,
  //     "image": "https://example.com/image396.jpg",
  //     "description":
  //         "Kem nền Dior Forever Skin Glow cho lớp nền sáng mịn, lâu trôi.",
  //     "specs": {
  //       "Dung tích": "30ml",
  //       "Kết cấu": "Kem lỏng",
  //       "Xuất xứ": "Pháp",
  //       "Ngày sản xuất": "07/2025",
  //       "Hạn sử dụng": "36 tháng",
  //       "Mã vạch": "3348903960001",
  //     },
  //     "ingredients": [
  //       "Dimethicone – làm mịn da",
  //       "Iron Oxides – tạo màu",
  //       "Glycerin – dưỡng ẩm",
  //     ],
  //     "usage": "Thoa đều kem nền lên mặt bằng cọ hoặc mút.",
  //   },
  //   {
  //     "id": "SP397",
  //     "name": "Kem nền Innisfree My Foundation",
  //     "brand": "Innisfree",
  //     "type": "kem nền",
  //     "category": "Makeup",
  //     "originalPrice": 320000,
  //     "discountPrice": 300000,
  //     "isDiscountActive": true,
  //     "promotion": "Giảm giá 6% Black Friday",
  //     "promotionStart": "2025-11-25T09:00:00",
  //     "promotionEnd": "2025-11-30T23:59:00",
  //     "stockQuantity": 180,
  //     "image": "https://example.com/image397.jpg",
  //     "description":
  //         "Kem nền Innisfree My Foundation cho lớp nền tự nhiên, nhiều tông màu lựa chọn.",
  //     "specs": {
  //       "Dung tích": "30ml",
  //       "Kết cấu": "Kem lỏng",
  //       "Xuất xứ": "Hàn Quốc",
  //       "Ngày sản xuất": "09/2025",
  //       "Hạn sử dụng": "36 tháng",
  //       "Mã vạch": "8809613970001",
  //     },
  //     "ingredients": [
  //       "Dimethicone – làm mịn da",
  //       "Iron Oxides – tạo màu",
  //       "Green Tea Extract – chống oxy hóa",
  //     ],
  //     "usage": "Thoa đều kem nền lên mặt bằng cọ hoặc mút.",
  //   },
  //   {
  //     "id": "SP398",
  //     "name": "Kem nền Estee Lauder Double Wear Stay-in-Place",
  //     "brand": "Estee Lauder",
  //     "type": "kem nền",
  //     "category": "Makeup",
  //     "originalPrice": 1450000,
  //     "discountPrice": 1450000,
  //     "isDiscountActive": false,
  //     "promotion": null,
  //     "promotionStart": null,
  //     "promotionEnd": null,
  //     "stockQuantity": 120,
  //     "image": "https://example.com/image398.jpg",
  //     "description":
  //         "Kem nền Estee Lauder Double Wear cho độ che phủ cao, lâu trôi cả ngày.",
  //     "specs": {
  //       "Dung tích": "30ml",
  //       "Kết cấu": "Kem lỏng",
  //       "Xuất xứ": "Mỹ",
  //       "Ngày sản xuất": "08/2025",
  //       "Hạn sử dụng": "36 tháng",
  //       "Mã vạch": "0271313980001",
  //     },
  //     "ingredients": [
  //       "Dimethicone – làm mịn da",
  //       "Iron Oxides – tạo màu",
  //       "Titanium Dioxide – chống nắng",
  //     ],
  //     "usage": "Thoa đều kem nền lên mặt bằng cọ hoặc mút.",
  //   },
];

/// Hàm phân loại theo type
String getCategory(String type) {
  final typeLower = type.toLowerCase().trim();

  if ([
    'chống nắng',
    'kem chống nắng',
    'sữa rửa mặt',
    'serum',
    'toner',
    'kem dưỡng',
    'mặt nạ',
    'tẩy trang',
  ].contains(typeLower))
    return 'Skincare';

  if ([
    'son',
    'phấn phủ',
    'kem nền',
    'mascara',
    'kẻ mắt',
    'makeup remover',
  ].contains(typeLower))
    return 'Makeup';

  if (['dầu gội', 'dầu xả', 'xịt dưỡng tóc', 'kem ủ tóc'].contains(typeLower))
    return 'Haircare';

  if ([
    'sữa tắm',
    'dưỡng thể',
    'tẩy tế bào chết body',
    'kem chống nắng body',
  ].contains(typeLower))
    return 'Bodycare';

  if (['nước hoa', 'xịt thơm'].contains(typeLower)) return 'Fragrance';

  if ([
    'cọ trang điểm',
    'bông tẩy trang',
    'dụng cụ skincare',
  ].contains(typeLower))
    return 'Tools';

  // Nếu muốn chi tiết hơn, có thể thêm các nhóm khác:
  if ([
    'xịt khử mùi',
    'dầu massage',
    'miếng dán mụn',
    'bộ quà tặng',
    'tẩy lông',
    'gel rửa tay',
    'vệ sinh phụ nữ',
    'nước súc miệng',
    'khẩu trang',
    'thực phẩm chức năng',
  ].contains(typeLower))
    return 'Others';

  return 'Khác';
}

final List<Product> productData = productList
    .map((e) => Product.fromMap(e))
    .toList();

/// Danh sách sản phẩm đã thêm category
final List<Map<String, dynamic>> productListt = productList.map((product) {
  final type = product['type'] as String? ?? '';
  final category = getCategory(type);
  return {...product, 'category': category};
}).toList();

final List<Map<String, dynamic>> productCategories = [
  {'label': 'Skincare', 'image': 'assets/skincare.jpg'},
  {'label': 'Makeup', 'image': 'assets/makeup.jpg'},
  {'label': 'Haircare', 'image': 'assets/haircare.jpg'},
  {'label': 'Bodycare', 'image': 'assets/bodycare.jpg'},
  {'label': 'Fragrance', 'image': 'assets/fragrance.jpg'},
  {'label': 'Tools', 'image': 'assets/tools.jpg'},
  {'label': 'Others', 'image': 'assets/others.jpg'},
];
