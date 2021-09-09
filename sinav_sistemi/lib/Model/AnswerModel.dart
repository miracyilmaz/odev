import 'package:flutter/material.dart';

class ClassicAnswer {
  late String soruNo, a, b, c, d, e, cevap;
  TextEditingController soru = new TextEditingController();

  ClassicAnswer();
  @override
  ClassicAnswer.classicAnswer(this.soruNo, this.soru, this.a, this.b, this.c,
      this.d, this.e, this.cevap);
  Widget soruGetir(BuildContext context, String SoruNo,
      TextEditingController soru, a, b, c, d, e, cevap) {
    return Column(
      children: <Widget>[
        TextFormField(
          enabled: false,
          keyboardType: TextInputType.multiline,
          maxLines: null,
          controller: soru,
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
        //a
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            child: Text(
              a,
              style: TextStyle(color: Colors.black),
              maxLines: null,
            ),
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed))
                    return Colors.green;
                  return Colors.white;
                },
              ),
            ),
          ),
        ),
        //b
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            child: Text(
              b,
              style: TextStyle(color: Colors.black),
              maxLines: null,
            ),
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed))
                    return Colors.green;
                  return Colors.white;
                },
              ),
            ),
          ),
        ),
        //c
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            child: Text(
              c,
              style: TextStyle(color: Colors.black),
              maxLines: null,
            ),
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed))
                    return Colors.green;
                  return Colors.white;
                },
              ),
            ),
          ),
        ),
        //d
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            child: Text(
              d,
              style: TextStyle(color: Colors.black),
              maxLines: null,
            ),
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed))
                    return Colors.green;
                  return Colors.white;
                },
              ),
            ),
          ),
        ),
        //e
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            child: Text(
              e,
              style: TextStyle(color: Colors.black),
              maxLines: null,
            ),
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed))
                    return Colors.green;
                  return Colors.white;
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Answer {
  late String soru, bosluk1, bosluk2, bosluk3, cevap;
}
