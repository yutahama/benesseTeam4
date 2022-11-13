import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'output.dart';

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
      title: Text("第$count問　　残り時間：　" + secondToTime(_counter)),
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

int count = 1;

class Input extends StatelessWidget {
  const Input({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyTimer(limitTime: 50),
      body: Center(
        child: Column(
          children: [
            DropdownButtonMenu(),
            TextField(
              decoration: InputDecoration(
                hintText: '問題文を入力してください:',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: '選択肢1:',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: '選択肢2:',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: '選択肢3:',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: '選択肢4:',
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Input()));
                  count++;
                },
                child: Text("次の問題へ")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Output()));
                },
                child: Text("解答画面へ"))
          ],
        ),
      ),
    );
  }
}

//以下
class DropdownButtonMenu extends StatefulWidget {
  const DropdownButtonMenu({Key? key}) : super(key: key);

  @override
  State<DropdownButtonMenu> createState() => _DropdownButtonMenuState();
}

class _DropdownButtonMenuState extends State<DropdownButtonMenu> {
  String isSelectedValue = 'あ';

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: const [
        DropdownMenuItem(
          value: 'あ',
          child: Text('正しいものはどれか'),
        ),
        DropdownMenuItem(
          value: 'い',
          child: Text('誤りはどれか'),
        ),
        DropdownMenuItem(
          value: 'う',
          child: Text('適切な意味・単語はどれか'),
        ),
        DropdownMenuItem(
          value: 'え',
          child: Text('近い意味をもつものはどれか'),
        ),
        DropdownMenuItem(
          value: 'お',
          child: Text('反対の意味を持つものはどれか'),
        ),
      ],
      value: isSelectedValue,
      onChanged: (String? value) {
        setState(() {
          isSelectedValue = value!;
        });
      },
    );
  }
}

class _DropdownButtonMenuState2 extends State<DropdownButtonMenu> {
  String isSelectedValue = 'あ';

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: const [
        DropdownMenuItem(
          value: 'あ',
          child: Text('正しいものはどれか'),
        ),
        DropdownMenuItem(
          value: 'い',
          child: Text('誤りはどれか'),
        ),
        DropdownMenuItem(
          value: 'う',
          child: Text('適切な意味・単語はどれか'),
        ),
        DropdownMenuItem(
          value: 'え',
          child: Text('近い意味をもつものはどれか'),
        ),
        DropdownMenuItem(
          value: 'お',
          child: Text('反対の意味を持つものはどれか'),
        ),
      ],
      value: isSelectedValue,
      onChanged: (String? value) {
        setState(() {
          isSelectedValue = value!;
        });
      },
    );
  }
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
