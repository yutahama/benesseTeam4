import 'package:benesseteam4/model/input.dart';
//import 'package:benesseteam4/test/myTimer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class testPage extends StatelessWidget {
  const testPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyTimer(limitTime: 50), //ここを参考に使ってください！
      body:
          Center(child: ElevatedButton(onPressed: () {}, child: Text("test"))),
    );
  }
}
