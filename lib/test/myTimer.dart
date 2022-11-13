import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
