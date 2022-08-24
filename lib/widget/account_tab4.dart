import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AccountTab4 extends StatelessWidget {
  const AccountTab4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Column(
            children: [
              Icon(Icons.person, size: 60),
              SizedBox(height: 10),
              Text(
                'Aucune Photos et vidéos de vous ',
                style: TextStyle(fontSize: 20),
              ),
            

              
            ],
          ))
        ],
      ),
    );
  }
}