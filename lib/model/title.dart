import 'package:benesseteam4/model/input.dart';
import 'package:flutter/material.dart';

class title extends StatelessWidget {
  const title({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Input()));
              },
              child: Text("send"))),
    );
  }
}
