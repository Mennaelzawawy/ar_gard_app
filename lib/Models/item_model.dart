import 'package:ar_app/Models/category_model.dart';

class ItemModel {
  final dynamic image;
  final String name;
  final dynamic seller;
  final dynamic price;
  final dynamic description;
  final int id;
  final int quantity;
  final CategoryModel category;
  ItemModel( {
    required this.quantity ,
    required this.name,
    required this.image,
    required this.seller,
    required this.description,
    required this.price,
    required this.id,
    required this.category,
  });
  factory ItemModel.fromJson(jsonData) {
    return ItemModel(
        id: jsonData['id'],
        name: jsonData['name'],
        image: jsonData['product_image'],
        quantity: jsonData['quantity'],
        seller: jsonData['seller'],
        description: jsonData['description'],
        price: jsonData['price'], category: CategoryModel.fromJson(jsonData['category']));
  }
}
