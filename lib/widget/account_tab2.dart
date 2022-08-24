import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AccountTab2 extends StatelessWidget {
  const AccountTab2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Column(
            children: [
              Icon(Icons.video_call, size: 60),
              SizedBox(height: 10),
              Text(
                'Aucun réels',
                style: TextStyle(fontSize: 20),
              )
            ],
          ))
        ],
      ),
    );
  }
}
