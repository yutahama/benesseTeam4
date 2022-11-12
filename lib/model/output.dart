import 'package:benesseteam4/model/result.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Output extends StatelessWidget {
  const Output({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("output"),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Result()));
              },
              child: Text("send"))),
    );
  }
}
