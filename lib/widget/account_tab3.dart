
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AccountTab3 extends StatelessWidget {
  const AccountTab3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Column(
            children: [
              Icon(Icons.shop, size: 60),
              SizedBox(height: 10),
              Text(
                'Aucun article publier ',
                style: TextStyle(fontSize: 20),
              )
            ],
          ))
        ],
      ),
    );
  }
}