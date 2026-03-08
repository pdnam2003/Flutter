import 'category.dart';

class Product {
  final int id;
  final String name;
  final Category category;
  final String image;
  final String description;


  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.image,
    required this.description,

  });


  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      category: Category.fromJson(json['category']),
      image: json['image'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'category': category.toJson(),
      'image': image,
      'description': description,
    };
  }
}
