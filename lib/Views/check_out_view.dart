import 'package:ar_app/Models/price_item.dart';
import 'package:checkout_screen_ui/checkout_page/checkout_page.dart';
import 'package:checkout_screen_ui/checkout_ui.dart';
import 'package:flutter/material.dart';
class CheckOutView extends StatefulWidget {
   const CheckOutView({super.key,});


  @override
  State<CheckOutView> createState() => _CheckOutViewState();
}

class _CheckOutViewState extends State<CheckOutView> {
   final List<PriceItem> _priceItems = [
    PriceItem(name: 'chair2', quantity: 1, itemCostCents: 100000),
    PriceItem(name: 'light 3', quantity: 1, itemCostCents: 80000),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CheckoutPage(data: CheckoutData(priceItems: _priceItems, payToName: "A Eye", onCardPay: (paymentInfo, checkoutResults){}),),);

  }
}