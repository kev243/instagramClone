

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BubbleStories extends StatelessWidget {
   final String name;
  const BubbleStories({Key? key,
  required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {

     return Padding(

       padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration:BoxDecoration(
                    color: Colors.grey[400],
                    shape: BoxShape.circle
                  )
                ),
                SizedBox(height: 10),
                 Text(name)
                
              ],

             
              
            ),
      
     );
    
  }
}