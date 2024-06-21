import 'package:ar_app/Models/price_item.dart';
import 'package:checkout_screen_ui/checkout_page/checkout_page.dart';
import 'package:flutter/material.dart';
class CheckOutView extends StatefulWidget {
   const CheckOutView({super.key,});


  @override
  State<CheckOutView> createState() => _CheckOutViewState();
}

class _CheckOutViewState extends State<CheckOutView> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CheckoutPage(data: CheckoutData(priceItems:[], payToName: "A Eye", onCardPay: (paymentInfo, checkoutResults){}),),);

  }
}