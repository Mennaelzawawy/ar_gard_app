class CategoryModel {
  final String image;
  final String name;
  final int id;
  CategoryModel({required this.image, required this.name, required this.id});
  factory CategoryModel.fromJson(jsonData) {
    return CategoryModel(
        id: jsonData['id'],
        name: jsonData['categoryName'],
        image: jsonData['categoryLogo']);
  }
}
