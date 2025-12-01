import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/cart_provider.dart';
import '../models/user_address.dart';

class AddressListPage extends StatelessWidget {
  const AddressListPage({super.key});

  static const Color themeColor = Color(0xFFBFAF9B);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('📍 Địa chỉ giao hàng của tôi'),
        backgroundColor: themeColor,
        elevation: 4,
      ),
      body: cart.addresses.isEmpty
          ? const Center(
              child: Text(
                'Bạn chưa có địa chỉ nào.\nHãy thêm địa chỉ mới!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: cart.addresses.length,
              itemBuilder: (context, index) {
                final addr = cart.addresses[index];
                final isSelected = cart.selectedAddress?.id == addr.id;

                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  decoration: BoxDecoration(
                    color: isSelected ? themeColor.withOpacity(0.1) : null,
                    borderRadius: BorderRadius.circular(12),
                    border: isSelected
                        ? Border.all(color: themeColor, width: 2)
                        : null,
                  ),
                  child: Card(
                    elevation: 5,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      leading: Icon(
                        isSelected ? Icons.check_circle : Icons.location_on,
                        color: isSelected ? themeColor : Colors.brown,
                        size: 30,
                      ),
                      title: Text(
                        '${addr.receiverName} - ${addr.phone}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          addr.fullAddress,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      trailing: PopupMenuButton<String>(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        onSelected: (value) {
                          if (value == 'edit') {
                            Navigator.pushNamed(
                              context,
                              '/address-edit',
                              arguments: addr,
                            );
                          } else if (value == 'delete') {
                            cart.deleteAddress(addr.id);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: const Text('🗑️ Đã xóa địa chỉ'),
                                backgroundColor: Colors.red.shade400,
                                behavior: SnackBarBehavior.floating,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                duration: const Duration(seconds: 2),
                              ),
                            );
                          }
                        },
                        itemBuilder: (context) => [
                          const PopupMenuItem(
                            value: 'edit',
                            child: Text('✏️ Sửa'),
                          ),
                          const PopupMenuItem(
                            value: 'delete',
                            child: Text('🗑️ Xóa'),
                          ),
                        ],
                      ),
                      onTap: () {
                        cart.selectAddress(addr.id);
                        Navigator.pushReplacementNamed(context, '/payment');
                      },
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: themeColor,
        icon: const Icon(Icons.add_location_alt),
        label: const Text('Thêm địa chỉ'),
        onPressed: () {
          Navigator.pushNamed(context, '/address-add');
        },
      ),
    );
  }
}
