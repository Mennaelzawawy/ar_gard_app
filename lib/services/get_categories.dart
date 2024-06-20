
import 'package:ar_app/Models/category_model.dart';
import 'package:ar_app/helper/api.dart';


class AllCategoriesService {
  Future<List<CategoryModel>> getAllCategories() async{
    List<dynamic> data = await Api().get(url:'https://a-eye-fj81.onrender.com/categories/');
      List<CategoryModel> categoryList =[];
      for (int i=0;i<data.length;i++){
      categoryList.add(
        CategoryModel.fromJson(data[i]),
      );
    }
    return categoryList;
    }
    
  
}