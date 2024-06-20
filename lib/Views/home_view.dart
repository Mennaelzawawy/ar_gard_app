import 'package:ar_app/Models/item_model.dart';
import 'package:ar_app/main.dart';
import 'package:ar_app/widgets/cateogry_listview.dart';
import 'package:flutter/material.dart';
import '../generated/l10n.dart';
import '../sliver_quilted_gridview_of_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              S.of(context).Categories_name,
              style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: isLight(context)? const Color(0xffd95525):const Color(0xffd95525))
            ),
          ),
        ),
        const SliverToBoxAdapter(
            child: SizedBox(
          height: 40,
        )),
        const SliverToBoxAdapter(child: CategoryListView()),
        const SliverToBoxAdapter(
            child: SizedBox(
          height: 10,
        )),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              S.of(context).Popular_items_name,
              style: TextStyle(
                color: isLight(context)? const Color(0xffd95525):const Color(0xffd95525),
                fontWeight: FontWeight.bold,
                fontSize: 35,
              )
            ),
          ),
        ),
         SliverQuiltedGrid()
      ],
    ));
  }
}
