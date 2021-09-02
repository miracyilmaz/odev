import 'package:flutter/material.dart';

class ClassicQuestion {
  late String soru, a, b, c, d, e, cevap;
  ClassicQuestion(
      this.soru, this.a, this.b, this.c, this.d, this.e, this.cevap);

  @override
  ClassicQuestion.classicQuestion();
  Widget soruHazirla(
      BuildContext context,
      String SoruNo,
      soruController,
      aController,
      bController,
      cController,
      dController,
      eController,
      cevapController) {
    return Column(
      children: <Widget>[
        TextFormField(
          keyboardType: TextInputType.multiline,
          maxLines: null,
          controller: soruController,
          style: TextStyle(
            color: Colors.white,
          ),
          cursorColor: Colors.white,
          decoration: InputDecoration(
            labelText: SoruNo,
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
        TextFormField(
          controller: aController,
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
        TextFormField(
          controller: bController,
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
        TextFormField(
          controller: cController,
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
        TextFormField(
          controller: dController,
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
        TextFormField(
          controller: eController,
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
      ],
    );
  }
}

class Question {
  late String soru, bosluk1, bosluk2, bosluk3;
  Question.question();
  @override
  Question(this.soru, this.bosluk1, this.bosluk2, this.bosluk3);
  Widget boslukHazirla(BuildContext context, soruNo, boslukController, bosluk1,
      bosluk2, bosluk3) {
    return Column(
      children: <Widget>[
        TextFormField(
          keyboardType: TextInputType.multiline,
          maxLines: null,
          controller: boslukController,
          style: TextStyle(
            color: Colors.white,
          ),
          cursorColor: Colors.white,
          decoration: InputDecoration(
            labelText: soruNo,
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
        Column(
          children: <Widget>[
            TextFormField(
              controller: bosluk1,
              style: TextStyle(
                color: Colors.white,
              ),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                labelText: '1.Secenek',
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
              width: 5.0,
            ),
            TextFormField(
              controller: bosluk2,
              style: TextStyle(
                color: Colors.white,
              ),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                labelText: '2.Secenek',
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
              width: 5.0,
            ),
            TextFormField(
              controller: bosluk3,
              style: TextStyle(
                color: Colors.white,
              ),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                labelText: '3.Secenek',
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
          ],
        )
      ],
    );
  }
}
