import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AccountTab1 extends StatelessWidget {
  const AccountTab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Column(
            children: [
              Icon(Icons.photo_camera, size: 60),
              SizedBox(height: 10),
              Text(
                'Aucune publication',
                style: TextStyle(fontSize: 20),
              )
            ],
          ))
        ],
      ),
    );
  }
}
