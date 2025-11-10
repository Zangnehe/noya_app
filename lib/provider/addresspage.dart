import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../provider/cart_provider.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  final _controller = TextEditingController();
  late AnimationController _animController;
  late Animation<double> _fade;
  late GoogleMapController mapController;
  bool showShippingInfo = false;

  final List<Map<String, dynamic>> branches = [
    {
      'label': 'Chi nhánh Quận 1',
      'lat': 10.7769,
      'lng': 106.7009,
      'openTime': '08:30',
      'closeTime': '22:00',
    },
    {
      'label': 'Chi nhánh Bình Thạnh',
      'lat': 10.8142,
      'lng': 106.7110,
      'openTime': '08:30',
      'closeTime': '22:00',
    },
    {
      'label': 'Chi nhánh Gò Vấp',
      'lat': 10.8380,
      'lng': 106.6645,
      'openTime': '08:30',
      'closeTime': '22:00',
    },
  ];

  @override
  void initState() {
    super.initState();
    _animController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _fade = CurvedAnimation(parent: _animController, curve: Curves.easeIn);
    _animController.forward();
    loadBranchFromPrefs();
  }

  Future<void> loadBranchFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    final label = prefs.getString('selectedBranch');
    if (label != null) {
      Provider.of<CartProvider>(context, listen: false).setBranch(label);
    }
  }

  bool isBranchOpen(String openTime, String closeTime) {
    final now = TimeOfDay.now();
    final open = TimeOfDay(
      hour: int.parse(openTime.split(':')[0]),
      minute: int.parse(openTime.split(':')[1]),
    );
    final close = TimeOfDay(
      hour: int.parse(closeTime.split(':')[0]),
      minute: int.parse(closeTime.split(':')[1]),
    );

    final nowMinutes = now.hour * 60 + now.minute;
    final openMinutes = open.hour * 60 + open.minute;
    final closeMinutes = close.hour * 60 + close.minute;

    return nowMinutes >= openMinutes && nowMinutes <= closeMinutes;
  }

  Future<void> calculateShipping(String address) async {
    final cart = Provider.of<CartProvider>(context, listen: false);
    cart.setAddress(address);

    try {
      await cart.calculateShippingFromAddress(address);
    } catch (e) {
      print('Lỗi khi tính phí giao hàng: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Không thể tính phí giao hàng từ địa chỉ này'),
        ),
      );
      return;
    }

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('selectedBranch', cart.selectedBranch ?? '');

    setState(() => showShippingInfo = true);

    final selected = branches.firstWhere(
      (b) => b['label'] == cart.selectedBranch,
      orElse: () => branches[0],
    );

    mapController.animateCamera(
      CameraUpdate.newLatLng(LatLng(selected['lat'], selected['lng'])),
    );
  }

  Set<Marker> getBranchMarkers() {
    return branches.map((branch) {
      return Marker(
        markerId: MarkerId(branch['label']),
        position: LatLng(branch['lat'], branch['lng']),
        infoWindow: InfoWindow(title: branch['label']),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRose),
      );
    }).toSet();
  }

  @override
  void dispose() {
    _controller.dispose();
    _animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    final initialPosition = CameraPosition(
      target: LatLng(branches[0]['lat'], branches[0]['lng']),
      zoom: 12,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Địa chỉ giao hàng'),
        backgroundColor: const Color(0xFFBFAF9B),
      ),
      body: FadeTransition(
        opacity: _fade,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Vui lòng nhập địa chỉ nhận hàng của bạn:',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _controller,
                  decoration: InputDecoration(
                    labelText: 'Địa chỉ',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    prefixIcon: const Icon(Icons.location_on),
                  ),
                  validator: (value) => value == null || value.trim().isEmpty
                      ? 'Vui lòng nhập địa chỉ'
                      : null,
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 200,
                  child: GoogleMap(
                    initialCameraPosition: initialPosition,
                    markers: getBranchMarkers(),
                    onMapCreated: (controller) => mapController = controller,
                    zoomControlsEnabled: false,
                    myLocationEnabled: false,
                  ),
                ),
                const SizedBox(height: 12),
                if (showShippingInfo)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Chi nhánh: ${cart.selectedBranch}'),
                      Text('Phí vận chuyển: ${cart.shippingFee.toInt()}₫'),
                      Text(
                        'Thời gian giao hàng: ${cart.deliveryTime ?? '---'}',
                      ),
                      Text(
                        isBranchOpen(
                              branches.firstWhere(
                                (b) => b['label'] == cart.selectedBranch,
                              )['openTime'],
                              branches.firstWhere(
                                (b) => b['label'] == cart.selectedBranch,
                              )['closeTime'],
                            )
                            ? '🟢 Chi nhánh đang mở cửa'
                            : '🔴 Chi nhánh đã đóng cửa',
                        style: TextStyle(
                          color:
                              isBranchOpen(
                                branches.firstWhere(
                                  (b) => b['label'] == cart.selectedBranch,
                                )['openTime'],
                                branches.firstWhere(
                                  (b) => b['label'] == cart.selectedBranch,
                                )['closeTime'],
                              )
                              ? Colors.green
                              : Colors.red,
                        ),
                      ),
                    ],
                  ),
                const Spacer(),
                ElevatedButton.icon(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      await calculateShipping(_controller.text.trim());
                      Navigator.pushNamed(context, '/payment');
                    }
                  },
                  icon: const Icon(Icons.arrow_forward),
                  label: const Text('Tiếp tục'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFBFAF9B),
                    padding: const EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 24,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    textStyle: const TextStyle(fontSize: 16),
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
