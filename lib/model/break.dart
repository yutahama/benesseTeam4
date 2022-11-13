import 'package:benesseteam4/model/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

//import 'package:benesseteam4/test/myTimer.dart';

class Break extends StatelessWidget {
  const Break({super.key});

  @override
  Widget build(BuildContext context) {



    //戦うアイコン
    final icon1 = const Icon(
      Icons.sports_kabaddi,
      size:30,
    );

    //休憩アイコン
    final icon2 = const Icon(
        Icons.sentiment_satisfied_sharp,
        size: 30,
    );

    return Scaffold(
      appBar: MyTimer(limitTime: 600),


        /*
        centerTitle: true,
        title: Text("4:39",
        style: TextStyle(
          fontWeight: FontWeight.w300,
          color: Colors.white,
          letterSpacing: 8.0,
          fontFamily: 'Lato',
          fontSize: 30,
          backgroundColor: Color(0xff45c6bc0),
         ),
        ),
      ),

      */

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Aさん成績表示
            Container(
              //color: Color(0xff4fc3f7),
              width: 250,
              height: 50,
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.all(0),
              child: Text("Aさん:1勝",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  letterSpacing: 20.0,
                  fontFamily: 'Loto',
                  fontSize: 25,
                ),
              ),
            ),

            //Bさん成績表示
            Container(
              //color: Color(0xff4fc3f7),
              width: 250,
              height: 50,
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.all(0),
              child: Text("Bさん:1勝",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  letterSpacing: 20.0,
                  fontFamily: 'Loto',
                  fontSize: 25,
                ),
              ),
            ),

            //残り〇回戦
            Container(
              width: 220,
              height: 70,
              decoration: BoxDecoration(
                  border: Border.all(width: 1)
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      //color: Color(0xff4fc3f7),
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      child: Text("残り1回戦",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          letterSpacing: 10.0,
                          fontFamily: 'Loto',
                          fontSize: 15,
                        ),
                      ),
                    ),
                    icon1,
                  ],
                ),
              ),
            ),


            //休憩タイム
            Center(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      child: Text("休憩タイム",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          letterSpacing: 15.0,
                          fontFamily: 'Loto',
                          fontSize: 30,
                        ),
                      ),
                    ),
                    icon2,
                  ],
                ),
              ),
            ),


            //次へボタン
            Container(
                //width: 140,
                //height: 50,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                child:SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Input()));
                    },
                    child: Text("次へ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 18.0,
                        fontFamily: 'ProN',
                        fontSize: 18,
                      ),
                    ),
                ),
             ),
            ),

            //やめるボタン
            Container(

              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child:SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Input()));
                },
                child: Text("やめる",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 10.0,
                    fontFamily: 'ProN',
                    fontSize: 18,
                  ),
                ),
              ),
              ),
            ),
          ],
        ),
      ),

    );
  }

}
