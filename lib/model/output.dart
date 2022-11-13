import 'package:benesseteam4/model/result.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Output extends StatefulWidget {
  const Output({Key? key}) : super(key: key);

  @override
  State<Output> createState() => _OutputState();
}

class _OutputState extends State<Output> {

  @override
  Widget build(BuildContext context) {
    String? isSelectedItem;
    return Scaffold(
      appBar: AppBar(
        title: Text("output"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: Color(0xff4fc3f7),
            child: Icon(Icons.question_answer, size: 50,),
          ),
          Container(
            width: 300,
            color: Colors.white,
            child: DropdownButton(
              hint: Text('選択してください'),
              items: [
                DropdownMenuItem(child: Text('あ'),value: 'あ',),
                DropdownMenuItem(child: Text('い'),value: 'い',),
              ],
              onChanged: (String? value) {
                setState(() {
                  isSelectedItem = value;
                });
              debugPrint(isSelectedItem);
              },
              value: isSelectedItem,
            ),
          ),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Result()));
                  },
                  child: Text("結果を見る"))),
        ],
      ),
    );
  }
}
