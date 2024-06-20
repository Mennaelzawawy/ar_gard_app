import 'package:ar_app/Models/item_model.dart';
import 'package:ar_app/Views/item_details_view.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
   ItemWidget({super.key, required this.item});
    ItemModel item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ItemDetailsView(item: item,)));
      }
      ,
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: Container(
                // height: 250,
                // width: double.infinity,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                      color: const Color(0xff000000).withOpacity(0.35),
                      offset:const Offset(2,2),
                      blurRadius: 3
                    )
                    ]),
                child: Column(
                  children: [
                    Expanded(
                      child: Image(
                        image: NetworkImage(item.image??'https://th.bing.com/th?id=OIP.O21FnzurtYJ_6DjQr1Q2QgHaJ5&w=216&h=289&c=8&rs=1&qlt=90&o=6&dpr=1.8&pid=3.1&rm=2'),
                        fit: BoxFit.fill,
                      ),
                    ),
                   const Divider(thickness: 1,height: 1,indent: 0,),
                    Text(item.name,maxLines:1,overflow: TextOverflow.ellipsis,style: const TextStyle(color: Colors.black),),
                    Text(item.price.toString(),style: const TextStyle(color: Colors.green),)
                  ],
                ),
              ),
            ),

    );
  }
}