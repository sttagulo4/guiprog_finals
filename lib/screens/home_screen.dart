import 'package:flutter/material.dart';
import '../models/product.dart';
import '../utils/mock_data.dart';
import '../widgets/product_card.dart';
import '../widgets/category_chip.dart';
import '../widgets/custom_app_bar.dart';
import 'product_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = 'All';
  List<Product> filteredProducts = mockProducts;

  void filterProducts(String category) {
    setState(() {
      selectedCategory = category;
      filteredProducts = category == 'All'
          ? mockProducts
          : mockProducts.where((p) => p.category == category).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Apparels'),
      body: Column(
        children: [
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 16),
                ...categories.map((category) => Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: CategoryChip(
                        label: category,
                        isSelected: selectedCategory == category,
                        onSelected: () => filterProducts(category),
                      ),
                    )),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: filteredProducts.length,
                itemBuilder: (context, index) => ProductCard(
                  product: filteredProducts[index],
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductScreen(
                        product: filteredProducts[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}