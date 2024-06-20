import 'package:ar_app/Models/category_model.dart';
import 'package:ar_app/services/get_categories.dart';
import 'package:ar_app/widgets/cateogry_item_widget.dart';
import 'package:flutter/material.dart';


class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: FutureBuilder<List<CategoryModel>>(
          future: AllCategoriesService().getAllCategories(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<CategoryModel> category = snapshot.data!;
              return ListView.builder(
                padding: EdgeInsets.zero,
                physics: const BouncingScrollPhysics(),
                itemCount: category.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CategoryItemWidget(categoryItem: category[index]);
                },
              );
            }
            else{
          return const Center(child: CircularProgressIndicator());
        }
          }),
    );
  }
}
