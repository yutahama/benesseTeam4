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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
          Text("結果発表",style: TextStyle(fontSize: 24)),
            Icon(Icons.tips_and_updates_outlined,size: 30,color: Colors.white,)
          ]
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '問1　',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
                Icon(Icons.close,color: Colors.red,size: 50)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '問2　',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
                Icon(Icons.circle_outlined,
                    color: Colors.red,size: 50)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '問3　',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
                Icon(Icons.circle_outlined,
                color: Colors.red,size: 50)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '問4　',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
                Icon(Icons.close,
                color: Colors.red,
                  size: 50
                )
              ],
            ),
          ]
          ),
          Text('正解率　2/4　(50%)',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),),
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
