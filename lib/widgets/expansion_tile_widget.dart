import 'package:ar_app/main.dart';
import 'package:flutter/material.dart';

class ExpansionTileWidget extends StatelessWidget {
  const ExpansionTileWidget({super.key, required this.item, required this.name});
  final String item;
  final String name;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title:Text(name),
      iconColor: const Color(0xffFFB000),
      textColor: const Color(0xffFFB000),
      children: [
        ListTile(
          title: Text(item.toString() ,style:  TextStyle(color: isLight(context)? const Color.fromARGB(255, 115, 115, 115):Colors.white,fontSize: 14),),
        )
      ],
    );
  }
}
