

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagramclone/widget/bubble_stories.dart';
import 'package:instagramclone/widget/user_posts.dart';

class UserHome extends StatelessWidget {
  final List abonne = ['kevin', 'nimi', 'ngwe', 'sisi', 'vivi' , 'keke'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('instagram'),
            Row(
              children: [
                Icon(Icons.add_box_outlined),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.favorite_outlined),
                ),
                Icon(Icons.share),
              ],
            )
          ],
        ),
      ),
      body:  Column(
       
        children: [
         Container(
          height: 130,
           child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: abonne.length,
            itemBuilder:  (context, index) {
            return BubbleStories(name: abonne[index]);
             
           } )
         ),
      
         Expanded(
           child: ListView.builder(
              
              itemCount: abonne.length,
              itemBuilder:  (context, index) {
              return UserPosts(namepost: abonne[index]);
               
             } ),
         )
      
       
         // partie post
      
        
        ],
      ),
      
    );
    
  }
}