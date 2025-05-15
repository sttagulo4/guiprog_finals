import '../models/product.dart';

final List<String> categories = [
  'All',
  'Clothing',
  'Accessories',
  'Bags',
];

final List<Product> mockProducts = [
  Product(
    id: '1',
    name: 'Organic Cotton T-Shirt',
    category: 'Clothing',
    imageUrl: 'assets/images/products/tshirt.jpg',
    price: 29.99,
    description: 'Made from 100% organic cotton, this t-shirt is comfortable and eco-friendly.',
    sizes: ['S', 'M', 'L', 'XL'],
    colors: ['White', 'Black', 'Green'],
    rating: 4.5,
    reviewCount: 24,
  ),
  Product(
    id: '2',
    name: 'Sunglasses',
    category: 'Accessories',
    imageUrl: 'assets/images/products/sunglasses.jpg',
    price: 45.99,
    description: 'Stylish sunglasses made from sustainable bamboo materials.',
    colors: ['Brown', 'Black'],
    rating: 4.8,
    reviewCount: 15,
  ),
  Product(
    id: '3',
    name: 'Denim Jeans',
    category: 'Clothing',
    imageUrl: 'assets/images/products/jeans.jpg',
    price: 59.99,
    description: 'Jeans made from recycled denim with a modern fit.',
    sizes: ['28', '30', '32', '34'],
    colors: ['Blue', 'Black'],
    rating: 4.2,
    reviewCount: 18,
  ),
  Product(
   id: '4',
    name: 'Leather Crossbody Bag',
    category: 'Bags',
    imageUrl: 'assets/images/products/bag.jpg',
    price: 2299.00,
    description: 'Genuine leather crossbody bag with multiple compartments.',
    colors: ['Brown', 'Black'],
    rating: 4.6,
    reviewCount: 98,
  ),
];