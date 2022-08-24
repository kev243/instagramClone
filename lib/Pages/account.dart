import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagramclone/widget/account_tab1.dart';
import 'package:instagramclone/widget/account_tab2.dart';
import 'package:instagramclone/widget/account_tab3.dart';
import 'package:instagramclone/widget/account_tab4.dart';
import 'package:instagramclone/widget/bubble_stories.dart';

class AccountHome extends StatelessWidget {
  final List succes = ['la vie ', 'jeu', 'soirée', 'amis', 'love', 'client'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Kevin Nimi',
                    style: TextStyle(fontSize: 19,
                    fontWeight: FontWeight.bold)),
                    Row(children: [
                      Icon(Icons.add_box_outlined),
                      SizedBox(width: 10),
                      Icon(Icons.menu),                  ],)
                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey[200], shape: BoxShape.circle),
                    ),
                 Expanded(
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                        Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '23',
                            style:
                                TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Posts',
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '2300',
                            style:
                                TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                          ),
                          Text('Followers'),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '540',
                            style:
                                TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                          ),
                          Text('Following'),
                        ],
                      ),
                    ],
                   ),
                 )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kevin Nimi',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text('je crée des applications avec flutter'),
                    ),
                    Text(
                      'github.com/kev243',
                      style: TextStyle(color: Colors.blue),
                    ),
                   
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Container(
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Text('Modifier le profil'),
                              ),
                              decoration:
                                  BoxDecoration(color: Colors.grey[300]))),
                    ),
                    SizedBox(width: 15),


                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                          padding: EdgeInsets.all(7),
                          color: Colors.grey[300],
                          child: Icon(Icons.person)),
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:20.0, top: 14),
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   
                      Text('Story à la une',
                      style: TextStyle(fontWeight: FontWeight.bold ),),
                      SizedBox(height: 2 ),
                      Text('Conservez vos stories préférés sur votre profil')
                ],),
              ),
      
              Padding(
                padding: const EdgeInsets.only(top:10.0),
                child: Container(
                  height: 130,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: succes.length,
                    itemBuilder: (context, index) {
                    return BubbleStories(name: succes[index]);
                  }),
                ),
              ),

              TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.grid_4x4),
                ),
                Tab(
                  icon: Icon(Icons.video_call),
                ),
                Tab(
                  icon: Icon(Icons.shop),
                ),
                Tab(
                  icon: Icon(Icons.person),
                ),
              ]),

              Expanded(
                child: TabBarView(children: [
                  AccountTab1(),
                  AccountTab2(),
                  AccountTab3(),
                  AccountTab4(),
                ]),
              )
      
              
            ],
          ),
        ),
      ),
    );
  }
}
