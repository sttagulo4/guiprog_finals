import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class CartItemCard extends StatelessWidget {
  final Function() onRemove;
  final Function(int) onQuantityChanged;

  const CartItemCard({
    super.key,
    required this.onRemove,
    required this.onQuantityChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                'assets/images/product.jpg',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Organic Cotton T-Shirt',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text('Size: M'),
                  const Text('\$29.99'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () {},
                          ),
                          const Text('1'),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete, color: AppColors.primary),
                        onPressed: onRemove,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}