import 'package:ar_app/Models/category_model.dart';
import 'package:ar_app/Models/item_model.dart';
import 'package:ar_app/main.dart';
import 'package:ar_app/services/categories_products_services.dart';
import 'package:ar_app/sliver_quilted_gridview_of_home.dart';
import 'package:flutter/material.dart';


class CategoryView extends StatelessWidget {
  CategoryView({super.key, required this.categoryItem});
   CategoryModel categoryItem;
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            categoryItem.name, // Use the category name for the app bar title
            style: TextStyle(
              color: isLight(context) ? Colors.black : const Color(0xffFFB000),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: FutureBuilder<List<ItemModel>>(
        future: CategoriesServices().getCategoriesProducts(category_id: categoryItem.id),
        builder: (context, snapshot) {
            if(snapshot.hasData){
              return CustomScrollView(
              slivers: [
                SliverQuiltedGridWidget(items: snapshot.data!),
              ],
            );
            }else{
              return Center(child: const CircularProgressIndicator());
            }
          
        }
      ),
    );
  }
}
