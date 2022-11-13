import 'package:benesseteam4/model/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class title extends StatelessWidget {
  const title({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Quiz with Friends"),
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
                child: const Text("スタート!")
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
                  " $_minutes 分　集中して勉強しよう",
                  style: const TextStyle(
                    fontSize: 30
                  )
                ),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '勉強する時間を入力してね！',
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