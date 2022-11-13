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
                child: const Text("Start!")
            )
        ],
      )
    );

  }
}

class AnswerTimeForm extends StatefulWidget{
  const AnswerTimeForm({super.key});

  @override
  State<AnswerTimeForm> createState() => _AnswerTimeForm();
}

class _AnswerTimeForm extends State<AnswerTimeForm> {

  final myController = TextEditingController();

  late int _minutes = 20;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  void _answerTimeSubmitted(String value) {
    setState(() {
      _minutes = int.parse(myController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Column(
              children: <Widget>[
                Text(
                  "Study for $_minutes minutes",
                  style: const TextStyle(
                    fontSize: 30
                  )
                ),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter minutes for your study',
                  ),
                  inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                  ],
                  keyboardType: TextInputType.number,
                  controller: myController,
                  onSubmitted: _answerTimeSubmitted
                ),
              ],
            ),
          ),
          //ElevatedButton(
          //    onPressed: () {
          //      _minutes = int.parse(myController.text);
          //    },
          //    child: const Text("Ok")
          //)
        ]
    );
  }

}