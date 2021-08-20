import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MultipleChoiceQuestion {
  late String soru;
  late String a;
  late String b;
  late String c;
  late String d;
  late String e;
  late String cevap;

  MultipleChoiceQuestion(
      this.soru, this.a, this.b, this.c, this.d, this.e, this.cevap);
}

class ClassicalQuestion {
  late String soru;
  late String cevap1;
  late String cevap2;
  late String cevap3;

  ClassicalQuestion(this.soru, this.cevap1, this.cevap2, this.cevap3);
}

class Questions extends StatefulWidget {
  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  final TextEditingController _soru = TextEditingController();
  final TextEditingController _a = TextEditingController();
  final TextEditingController _b = TextEditingController();
  final TextEditingController _c = TextEditingController();
  final TextEditingController _d = TextEditingController();
  final TextEditingController _e = TextEditingController();
  final TextEditingController _cevap = TextEditingController();
  final TextEditingController _bosluk1 = TextEditingController();
  final TextEditingController _bosluk2 = TextEditingController();
  final TextEditingController _bosluk3 = TextEditingController();
  //AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white60,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(' Öğretmen Girişi'),
      ),
      body: SafeArea(
        //child: form(),
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/backgraundImage.jpg'),
                fit: BoxFit.cover),
          ),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0),
            color: Color.fromRGBO(0, 0, 0, 0.7),
            height: 400,
            width: 300,
            child: ListView(
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  controller: _soru,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    labelText: 'Soru 1',
                    prefixText: ' ',
                    labelStyle: TextStyle(color: Colors.blue),
                    focusColor: Colors.white,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: _a,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    labelText: 'A',
                    prefixText: ' ',
                    labelStyle: TextStyle(color: Colors.blue),
                    focusColor: Colors.white,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                TextFormField(
                  controller: _b,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    labelText: 'B',
                    prefixText: ' ',
                    labelStyle: TextStyle(color: Colors.blue),
                    focusColor: Colors.white,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                TextFormField(
                  controller: _c,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    labelText: 'C',
                    prefixText: ' ',
                    labelStyle: TextStyle(color: Colors.blue),
                    focusColor: Colors.white,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                TextFormField(
                  controller: _d,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    labelText: 'D',
                    prefixText: ' ',
                    labelStyle: TextStyle(color: Colors.blue),
                    focusColor: Colors.white,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                TextFormField(
                  controller: _e,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    labelText: 'E',
                    prefixText: ' ',
                    labelStyle: TextStyle(color: Colors.blue),
                    focusColor: Colors.white,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    child: Text(
                      'Sonraki Soruya Geç',
                      style: TextStyle(fontSize: 25.0),
                    ),
                    color: Colors.blue,
                    highlightColor: Colors.green,
                    onPressed: () {
                      MultipleChoiceQuestion(
                        _soru.toString(),
                        _a.toString(),
                        _b.toString(),
                        _c.toString(),
                        _d.toString(),
                        _e.toString(),
                        _cevap.toString(),
                        //buraya devam et
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
