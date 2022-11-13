import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'output.dart';

int count = 1;

class Input extends StatelessWidget {
  const Input({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第$count問'),
      ),
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
          value: 'い'
          child: Text('誤っているものはどれか'),
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
