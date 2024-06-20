import 'package:ar_app/Models/item_model.dart';
import 'package:ar_app/services/get_products.dart';
import 'package:ar_app/sliver_quilted_gridview_of_home.dart';
import 'package:flutter/material.dart';


class AllProductsView extends StatelessWidget {
  const AllProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ItemModel>>(
          future: AllProductsService().getAllProducts(),
          builder: (context, snapshot) {
    if (snapshot.hasData){
      List<ItemModel> items = snapshot.data!;
    return  SliverQuiltedGridWidget(items: items)
    ;}
        else{
          return const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));
        }
          },
        );
  }
}

