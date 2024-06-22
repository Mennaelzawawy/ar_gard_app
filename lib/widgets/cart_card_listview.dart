
import 'package:ar_app/Models/item_model.dart';
import 'package:ar_app/widgets/cart_card.dart';
import 'package:flutter/material.dart';

class CartCardListView extends StatelessWidget {
  const CartCardListView({super.key, required this.cartItem});
  final List<ItemModel> cartItem;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: cartItem.length,
      itemBuilder: (context,index){
      return CartCardWidget(cartItem: cartItem[index]);
    });
}}