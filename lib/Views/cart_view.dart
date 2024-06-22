// import 'package:ar_app/Models/item_model.dart';
// import 'package:ar_app/generated/l10n.dart';
import 'package:ar_app/Models/category_model.dart';
import 'package:ar_app/Models/item_model.dart';
import 'package:ar_app/Views/check_out_view.dart';
import 'package:ar_app/widgets/cart_card_listview.dart';
import 'package:ar_app/widgets/elevated_button_widget.dart';
import 'package:ar_app/widgets/item_widget.dart';
import 'package:checkout_screen_ui/checkout_ui.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return 
        Column(
          children: [Expanded(
            child: CartCardListView(cartItem:[
           ItemModel(
            quantity: 1, 
            name: 'chair2', 
            image: 'assets/images/2.jpg', 
            seller: 'Amazon', 
            description: 'null',
            price: 1000.00, 
            id: 1, 
            category: CategoryModel(image: 'assets/images/Chairs.jpg', name: 'chairs', id: 2)),
              ItemModel(
            quantity: 1, 
            name: 'light 3', 
            image: 'assets/images/9.jpg', 
            seller: 'Wayfair', 
            description: 'null',
            price: 800.00, 
            id: 1, 
            category: CategoryModel(image: 'assets/images/Lights.jpg', name: 'Lighting', id: 2)),
                ] ),
          ),
             Padding(
               padding: const EdgeInsets.only(bottom: 20),
               child: SizedBox(width: 250,height: 50,child: ElevatedButtonWidget(whatToDo:"complete purchase", onTapAction: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  CheckOutView()));
               })),
             )]
        );
  }
}