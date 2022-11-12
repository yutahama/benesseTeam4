import 'package:benesseteam4/model/input.dart';
import 'package:flutter/material.dart';

class title extends StatelessWidget {
  const title({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("title"),
      ),
      body: Column(
        children: <Widget>[
          const AnswerTimeForm(),
          ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const Input()
                      )
                  );
                },
                child: const Text("send")
            )
        ],
      )
    );

  }
}

class AnswerTimeForm extends StatelessWidget {
  const AnswerTimeForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a total minutes for answers and explanations',
              ),
                keyboardType: TextInputType.number
            ),
          ),
        ]
    );
  }

}