import 'package:ar_app/Models/item_model.dart';
import 'package:ar_app/services/get_products.dart';


class SearchProductsService {
  final _allProductsService = AllProductsService();

  Future<List<ItemModel>> filterProducts({required String input}) async {
    final allProducts = await _allProductsService.getAllProducts();
    final filteredProducts = allProducts.where((product) {
      return product.name.toLowerCase().contains(input.toLowerCase());
    }).toList();

    return filteredProducts;
  }
}








// import 'package:test_app/helper/api.dart';
// import 'package:test_app/models/item_model.dart';

// class SearchProductsService{
//   Future<List<ItemModel>> filterProducts({required String input}) async{
//     List<ItemModel> data = await Api().get(url:'https://a-eye-fj81.onrender.com/products/');
//     List<ItemModel> filteredProducts =[];
//     for(int i=0;i<data.length;i++){
      
//     }
//     // filteredProducts= data.where((element) => element.name.toLowerCase().startsWith(input.toLowerCase())).toList();
//     // return filteredProducts;

// }
// }