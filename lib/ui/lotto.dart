import 'package:flutter/material.dart';
import 'dart:math';

class Lotto extends StatefulWidget {
  @override
  State<StatefulWidget>createState(){
    return new MakeLottoState();
  }
}

class MakeLottoState extends State<Lotto>{
  int _lottoCounter = 0;
  String _lottoMessage = "";
  void _lottoRand(){
    setState(() {
        var rng = new Random();
        int rand = rng.nextInt(5);
        switch (rand) {
          case 0:
            _lottoMessage = "แอบมองเธออยู่นะแจ๊ะ";
            break;
          case 1:
            _lottoMessage = "แต่เธอไม่รู้บ้างเลย";
            break;
          case 2:
            _lottoMessage = "หิวข้าว";
            break;
          case 3:
            _lottoMessage = "ผัดกระเพราะไข่ดาว";
            break;
          case 4:
            _lottoMessage = "เดี๋ยวนะ มึงลืมปลาหมึกกรอบๆ";
            break;
          default:
            _lottoMessage = "ลืมตาขึ้นมาขึ้นมาพร้อมคำว่าเหงา";
            break;
        }
        debugPrint("$rand");
        _lottoCounter = _lottoCounter + 100;      
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Lotto Draw"),
        backgroundColor: Colors.blueAccent.shade400,
      ),

      body: new Container(
        child: new Column(
          children: <Widget>[
          new Center(
            child: new Text(
                          "ให้คุ๊กกี้ทำนายกัน นะแจ๊ะ",
                          style: new TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 24.0,
                            color: Colors.blueAccent.shade400,
                          ),
                          textDirection: TextDirection.ltr,
                        ),
          ),

          new Expanded(
            child: new Center(
                              child: new Text(
                                            "\$$_lottoMessage",
                                            style: new TextStyle(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 34.0,
                                              color: Colors.blueAccent.shade400,
                                              fontFamily: 'SukhumvitSetBold',
                                            ),
                                            textDirection: TextDirection.ltr,
                                          ),
                            ),
          ),

          new Expanded(
                      child: new Center(
                        child: new FlatButton(
                          color: Colors.blueAccent.shade200,
                          textColor: Colors.white70,
                          onPressed: _lottoRand,
                          child: new Text("Lucky Draw",
                            style: new TextStyle(
                              fontSize: 19.0,
                              
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

