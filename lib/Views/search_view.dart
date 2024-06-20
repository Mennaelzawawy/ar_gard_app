import 'package:ar_app/Models/item_model.dart';
import 'package:ar_app/services/search_products_service.dart';
import 'package:ar_app/sliver_quilted_gridview_of_home.dart';
import 'package:flutter/material.dart';
import '../generated/l10n.dart';
import '../widgets/search_textfield.dart';

class SearchView extends StatefulWidget {
  SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  List<ItemModel> filteredProducts =[];
  final searchProductsService = SearchProductsService();
  Future<void> _filterProducts(String input) async {
    filteredProducts = await searchProductsService.filterProducts(input: input);
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              height: 52,
              child: SearchTextFieldWidget(
                onChanged: _filterProducts,
                hint: S.of(context).search, icon: Icons.search,),
            ),
          ),
           Expanded(
            child: CustomScrollView(
              slivers: [
                SliverQuiltedGridWidget(items: filteredProducts),
              ],
            ),
          ),
        ]
    ));
  }
}