// import 'package:ar_app/Models/item_model.dart';
// import 'package:ar_app/generated/l10n.dart';
import 'package:ar_app/widgets/cart_card_listview.dart';
import 'package:ar_app/widgets/elevated_button_widget.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return 
        Column(
          children: [Expanded(
            child: CartCardListView(cartItem:[
                ] ),
          ),
             Padding(
               padding: const EdgeInsets.only(bottom: 20),
               child: SizedBox(width: 250,height: 50,child: ElevatedButtonWidget(whatToDo:"complete purchase", onTapAction: (){})),
             )]
        );
  }
}