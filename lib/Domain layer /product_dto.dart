import 'category_dto.dart';

class Product {
  final int id;
  final String title;
  final String description;
  final String price;
  final String imageUrl;
  final List<Category> categories;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.categories,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      price: json['price']?.toString() ?? '',
      imageUrl: json['images']?.isNotEmpty == true ? json['images'][0] : '',
      categories: (json['categories'] as List<dynamic>? ?? [])
          .map((item) => Category.fromJson(item))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
      'categories': categories.map((category) => category.toJson()).toList(),
    };
  }
}
