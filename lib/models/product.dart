class Product {
  final String id;
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final String description;
  final List<String> sizes;
  final List<String> colors;
  final double rating;
  final int reviewCount;

  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.description,
    this.sizes = const [],
    this.colors = const [],
    this.rating = 0,
    this.reviewCount = 0,
  });
}