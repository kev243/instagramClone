

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widget/shop_grid.dart';

class ShopHome extends StatelessWidget {
  const ShopHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text('Shop'),
          Row(children: [
            Icon(Icons.calendar_today),
            SizedBox(width: 10),
            Icon(Icons.menu)
          ],)
        ],),
      ) ,


       body: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
           children: [
             Container(
           decoration: BoxDecoration(
               color: Colors.grey[300],
               //border: Border.all(color: Colors.white),
               borderRadius: BorderRadius.circular(12)),
           child: Expanded(
             child: TextField(
               decoration: InputDecoration(
                   border: InputBorder.none,
                   prefixIcon: Icon(
                     Icons.search,
                     size: 40,
                     color: Colors.grey[500],
                   ),
                   hintText: 'Recherhce..',
                   hintStyle: TextStyle(color: Colors.grey[500])),
             ),
           ),
         ),
         //SizedBox(height: 5),
      Expanded(child: ShopGrid()),
           ],
         ),
       )
    
    );
    
  }
}