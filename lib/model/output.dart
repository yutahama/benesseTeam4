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
        title: Text("出題された問題"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: Color(0xff4fc3f7),
            child: Icon(Icons.question_answer, size: 50),
          ),
          Text(
            '解答を選択してください',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24),
          ),
          Container(
            width: 160,
            color: Colors.white,
            child: DropdownButton(
              hint: Text('問1の解答'),
              items: [
                DropdownMenuItem(
                  child: Text('1'),
                  value: '1',
                ),
                DropdownMenuItem(
                  child: Text('2'),
                  value: '2',
                ),
                DropdownMenuItem(
                  child: Text('3'),
                  value: '3',
                ),
                DropdownMenuItem(
                  child: Text('4'),
                  value: '4',
                ),
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
          Container(
            width: 160,
            color: Colors.white,
            child: DropdownButton(
              hint: Text('問2の解答'),
              items: [
                DropdownMenuItem(
                  child: Text('1'),
                  value: '1',
                ),
                DropdownMenuItem(
                  child: Text('2'),
                  value: '2',
                ),
                DropdownMenuItem(
                  child: Text('3'),
                  value: '3',
                ),
                DropdownMenuItem(
                  child: Text('4'),
                  value: '4',
                ),
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
          Container(
            width: 160,
            color: Colors.white,
            child: DropdownButton(
              hint: Text('問3の解答'),
              items: [
                DropdownMenuItem(
                  child: Text('1'),
                  value: '1',
                ),
                DropdownMenuItem(
                  child: Text('2'),
                  value: '2',
                ),
                DropdownMenuItem(
                  child: Text('3'),
                  value: '3',
                ),
                DropdownMenuItem(
                  child: Text('4'),
                  value: '4',
                ),
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
          Container(
            width: 160,
            color: Colors.white,
            child: DropdownButton(
              hint: Text('問4の解答'),
              items: [
                DropdownMenuItem(
                  child: Text('1'),
                  value: '1',
                ),
                DropdownMenuItem(
                  child: Text('2'),
                  value: '2',
                ),
                DropdownMenuItem(
                  child: Text('3'),
                  value: '3',
                ),
                DropdownMenuItem(
                  child: Text('4'),
                  value: '4',
                ),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Result()));
                  },
                  child: Text("結果を見る"))),
        ],
      ),
    );
  }
}
