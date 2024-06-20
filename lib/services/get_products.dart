import 'package:ar_app/Models/item_model.dart';
import 'package:ar_app/helper/api.dart';

class AllProductsService {
  Future<List<ItemModel>> getAllProducts() async{
    List<dynamic> data = await Api().get(url:'https://a-eye-fj81.onrender.com/products/');
    List<ItemModel> productList =[];
    for (int i=0;i<data.length;i++){
      productList.add(
        ItemModel.fromJson(data[i]),
      );
    }
    return productList;
  }
}