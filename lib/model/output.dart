import 'package:benesseteam4/model/result.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import '';


  int _counter = 300;

  void initState() {
    // 1. Timer.periodic : 新しい繰り返しタイマーを作成します
    // 1秒ごとに _counterを1ずつ足していく
    Timer.periodic(
      // 第一引数：繰り返す間隔の時間を設定
      const Duration(seconds: 1),
      // 第二引数：その間隔ごとに動作させたい処理を書く
          (Timer timer) {
        _counter--;
        print('$_counter');
      },
    );
  }


class Output extends StatefulWidget {
  const Output({Key? key}) : super(key: key);
//継承するwidgetを指定
  @override
  State<Output> createState() => _OutputState();
}


class MyTimer extends StatefulWidget implements PreferredSizeWidget {
  int limitTime;

  MyTimer({required this.limitTime, Key? key})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0
  @override
  State<MyTimer> createState() => _MyTimer();
}

class _MyTimer extends State<MyTimer> {
  // カウンター
  int _counter = 0; //default

  @override
  void initState() {
    super.initState();
    _counter = widget.limitTime;
    // 1. Timer.periodic : 新しい繰り返しタイマーを作成します
    // 1秒ごとに _counterを1ずつ足していく
    Timer.periodic(
      // 第一引数：繰り返す間隔の時間を設定
      const Duration(seconds: 1),
      // 第二引数：その間隔ごとに動作させたい処理を書く
          (Timer timer) {
        _counter = _counter - 1;
        if (_counter < 0) {
          _counter = 0;
        }
        setState(() {});
      },
    );
  }

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      title: Text("残り時間：　" + secondToTime(_counter)),
      centerTitle: true,
    );
  }

  String secondToTime(int i) {
    int minutes = i ~/ 60;
    int seconds = i % 60;
    String minutesStr = "";
    String secondsStr = "";
    if (minutes < 10)
      minutesStr = "0$minutes";
    else
      minutesStr = "$minutes";
    if (seconds < 10)
      secondsStr = "0$seconds";
    else
      secondsStr = "$seconds";

    return "$minutesStr:$secondsStr";
  }
}



class _OutputState extends State<Output> {
  @override
  Widget build(BuildContext context) {
    String? isSelectedItem;
    return Scaffold(
      appBar: MyTimer(limitTime: 300),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Container(
          //   height: 100,
          //   width: double.infinity,
          //   color: Color(0xff4fc3f7),
          //   child: Icon(Icons.question_answer, size: 50),
          // ),
          Container(
            color: Colors.lightBlueAccent.shade200,
          width: double.infinity,
          height: 200,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('(1) I ___ Tokyo yesterday',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
              Text('(2) Japaneseの意味は？',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
              Text('(3) prejudiceの意味は？',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
              Text('(4) 高校生を英語にすると？',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),)
            ],
          ),
          ),
          Text(
            '解答を選択してください',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24,),
          ),
          Column(
            children: [
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
            ],
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


