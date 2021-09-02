import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sinav_sistemi/Model/QuestionModel.dart';
import 'package:sinav_sistemi/services/QuestionService.dart';

class Questions extends StatefulWidget {
  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  final TextEditingController soru = TextEditingController();
  final TextEditingController a = TextEditingController();
  final TextEditingController b = TextEditingController();
  final TextEditingController c = TextEditingController();
  final TextEditingController d = TextEditingController();
  final TextEditingController e = TextEditingController();
  final TextEditingController cevap = TextEditingController();
  final TextEditingController soru2 = TextEditingController();
  final TextEditingController a2 = TextEditingController();
  final TextEditingController b2 = TextEditingController();
  final TextEditingController c2 = TextEditingController();
  final TextEditingController d2 = TextEditingController();
  final TextEditingController e2 = TextEditingController();
  final TextEditingController soru3 = TextEditingController();
  final TextEditingController a3 = TextEditingController();
  final TextEditingController b3 = TextEditingController();
  final TextEditingController c3 = TextEditingController();
  final TextEditingController d3 = TextEditingController();
  final TextEditingController e3 = TextEditingController();
  final TextEditingController cevap2 = TextEditingController();
  final TextEditingController cevap3 = TextEditingController();
  final TextEditingController soru4 = TextEditingController();
  final TextEditingController soru5 = TextEditingController();
  final TextEditingController bosluk1 = TextEditingController();
  final TextEditingController bosluk2 = TextEditingController();
  final TextEditingController bosluk3 = TextEditingController();
  final TextEditingController a2bosluk1 = TextEditingController();
  final TextEditingController a2bosluk2 = TextEditingController();
  final TextEditingController a2bosluk3 = TextEditingController();
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
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0),
              color: Color.fromRGBO(0, 0, 0, 0.7),
              height: 400,
              width: 300,
              child: ListView(
                children: <Widget>[
                  ClassicQuestion.classicQuestion().soruHazirla(
                      context, "Soru 1", soru, a, b, c, d, e, cevap),
                  SizedBox(
                    height: 20.0,
                  ),
                  ClassicQuestion.classicQuestion().soruHazirla(
                      context, "Soru 2", soru2, a2, b2, c2, d2, e2, cevap2),
                  SizedBox(
                    height: 20.0,
                  ),
                  ClassicQuestion.classicQuestion().soruHazirla(
                      context, "Soru 3", soru3, a3, b3, c3, d3, e3, cevap3),
                  SizedBox(
                    height: 20.0,
                  ),
                  Question.question().boslukHazirla(
                      context, "Soru 4", soru4, bosluk1, bosluk2, bosluk3),
                  SizedBox(
                    height: 20.0,
                  ),
                  Question.question().boslukHazirla(context, "Soru 5", soru5,
                      a2bosluk1, a2bosluk2, a2bosluk3),
                  buton(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buton(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(
          'Sonraki Soruya Geç',
          style: TextStyle(fontSize: 25.0),
        ),
        color: Colors.blue,
        highlightColor: Colors.green,
        onPressed: () {
          ClassicQuestion Soru1 = new ClassicQuestion(
              soru.text, a.text, b.text, c.text, d.text, e.text, "a");
          ClassicQuestion Soru2 = new ClassicQuestion(
              soru2.text, a2.text, b2.text, c2.text, d2.text, e2.text, "b");
          ClassicQuestion Soru3 = new ClassicQuestion(
              soru3.text, a3.text, b3.text, c3.text, d3.text, e3.text, "c");
          Question Soru4 = new Question(
              soru4.text, bosluk1.text, bosluk2.text, bosluk3.text);
          Question Soru5 = new Question(
              soru5.text, a2bosluk1.text, a2bosluk2.text, a2bosluk3.text);
          QuestionService().createClassicQuestion("Mat", 1, Soru1.soru, Soru1.a,
              Soru1.b, Soru1.c, Soru1.d, Soru1.e, Soru2.cevap);
          QuestionService().createClassicQuestion("Mat", 2, Soru2.soru, Soru2.a,
              Soru2.b, Soru2.c, Soru2.d, Soru2.e, Soru2.cevap);
          QuestionService().createClassicQuestion("Mat", 3, Soru3.soru, Soru3.a,
              Soru3.b, Soru3.c, Soru3.d, Soru3.e, Soru3.cevap);
          QuestionService().createQuestion("Mat", 4, Soru4.soru, Soru4.bosluk1,
              Soru4.bosluk2, Soru4.bosluk3);
          QuestionService().createQuestion("Mat", 5, Soru5.soru, Soru5.bosluk1,
              Soru5.bosluk2, Soru5.bosluk3);
          print(a.text);
          print(a.toString());
        },
      ),
    );
  }
}
