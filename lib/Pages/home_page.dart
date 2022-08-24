import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagramclone/Pages/account.dart';
import 'package:instagramclone/Pages/home.dart';
import 'package:instagramclone/Pages/reels.dart';
import 'package:instagramclone/Pages/search.dart';
import 'package:instagramclone/Pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    UserHome(),
    SearchHome(),
    ReelsHome(),
    ShopHome(),
    AccountHome(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomNavBar,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search_outlined,
                  color: Colors.black,
                ),
                label: 'search'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.video_call,
                color: Colors.black,
              ),
              label: 'reels',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shop,
                  color: Colors.black,
                ),
                label: 'shop'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: 'account',
            ),
          ],
        ));
  }
}
