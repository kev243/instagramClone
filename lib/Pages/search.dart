import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widget/explore_grid.dart';

class SearchHome extends StatelessWidget {
  const SearchHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
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
      ),
     
      body: Padding(
        padding: const EdgeInsets.only(top:8.0),
        child: ExploreGrid(),
      ),
    );
  }
}
