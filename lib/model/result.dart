import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'break.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("結果発表"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            '正解or不正解',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
          ),
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '問1の解答　',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Icon(Icons.close)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '問2の解答　',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Icon(Icons.circle_outlined,
                    color: Colors.red)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '問3の解答　',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Icon(Icons.circle_outlined,
                color: Colors.red)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '問4の解答　',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Icon(Icons.close,
                color: Colors.black,)
              ],
            ),
          ]),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Break()));
                  },
                  child: Text("休憩画面へ"))),
        ],
      ),
    );
  }
}

//色コードは color: Color(0xff4fc3f7),
