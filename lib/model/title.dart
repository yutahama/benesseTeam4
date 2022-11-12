import 'package:benesseteam4/model/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a total minutes for answers and explanations',
              ),
              inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
              ],
              keyboardType: TextInputType.number
            ),
          ),
        ]
    );
  }

}