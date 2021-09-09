import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sinav_sistemi/Model/AnswerModel.dart';
import 'package:sinav_sistemi/services/AnswerService.dart';

class ExamPage extends StatefulWidget {
  String dersAdi, mailAdresi, girmisMi;
  ExamPage(this.mailAdresi, this.dersAdi, this.girmisMi);

  @override
  _ExamPageState createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  TextEditingController soru = new TextEditingController();
  TextEditingController textController = new TextEditingController();
  TextEditingController textController2 = new TextEditingController();
  TextEditingController textController3 = new TextEditingController();
  TextEditingController textController4 = new TextEditingController();
  TextEditingController textController5 = new TextEditingController();
  final TextEditingController bosluk1 = TextEditingController();
  final TextEditingController bosluk2 = TextEditingController();
  AnswerService ornek = new AnswerService();
  late List answers;
  yazdir(String soruNo, lesson) async {
    ornek.soruNo = soruNo;
    ornek.lesson = lesson;
    answers = await ornek.veriAl();

    return answers;
  }

  soruEkle(String soruNo) {
    yazdir(soruNo, widget.dersAdi);
    return ClassicAnswer().soruGetir(
      context,
      answers[0],
      textController,
      answers[1],
      answers[2],
      answers[3],
      answers[4],
      answers[5],
      answers[6],
    );
  }

  Widget kontrolEt(BuildContext context) {
    if (widget.girmisMi == "false") {
      return Expanded(
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: <Widget>[
            soruEkle("1"),
            SizedBox(
              height: 20.0,
            ),
            soruEkle("2"),
            SizedBox(
              height: 20.0,
            ),
            soruEkle("3"),
            SizedBox(
              height: 20.0,
            ),
            ClassicAnswer().soruGetir(context, "Soru 4", textController2, "a",
                "b", "c", "d", "e", "cevap"),
            SizedBox(
              height: 20.0,
            ),
            ClassicAnswer().soruGetir(context, "Soru 5", textController2, "a",
                "b", "c", "d", "e", "cevap"),
            //buton(context),
          ],
        ),
      );
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white60,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(' Sınav Sayfası'),
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
              child: Center(
                child: Text(
                  "Bu Sınava Zaten Girdiniz",
                  style: TextStyle(color: Colors.red, fontSize: 22.0),
                ),
                /*child: Container(
                  child: ListView(children: <Widget>[
                    SizedBox(
                      height: 30.0,
                    ),
                    //kontrolEt(context),
                    TextFormField(
                      enabled: false,
                      maxLines: null,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        labelText: "Soru 1",
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
                      enabled: false,
                      maxLines: null,
                      controller: soru,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        labelText: "           1+1 işleminin sonucu kaçtır ?",
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

                    RaisedButton(
                      child: Text("4"),
                      onPressed: () {},
                    ),
                    RaisedButton(
                      child: Text("3"),
                      onPressed: () {},
                    ),
                    RaisedButton(
                      color: Colors.green,
                      child: Text("2"),
                      onPressed: () {},
                    ),
                    RaisedButton(
                      child: Text("5"),
                      onPressed: () {},
                    ),
                    RaisedButton(
                      child: Text("6"),
                      onPressed: () {},
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      enabled: false,
                      maxLines: null,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        labelText: "Soru 2",
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
                      enabled: false,
                      maxLines: null,
                      controller: soru,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        labelText: "           (7-4) işleminin sonucu kaçtır ?",
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

                    RaisedButton(
                      child: Text("1"),
                      onPressed: () {},
                    ),
                    RaisedButton(
                      child: Text("3"),
                      onPressed: () {},
                    ),

                    RaisedButton(
                      child: Text("5"),
                      onPressed: () {},
                    ),
                    RaisedButton(
                      child: Text("9"),
                      onPressed: () {},
                    ),
                    RaisedButton(
                      child: Text("11"),
                      onPressed: () {},
                    ),
                    TextFormField(
                      enabled: false,
                      maxLines: null,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        labelText: "Soru 3",
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
                      enabled: false,
                      maxLines: null,
                      controller: soru,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        labelText: "           (3*3) işleminin sonucu kaçtır ?",
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

                    RaisedButton(
                      child: Text("-2"),
                      onPressed: () {},
                    ),
                    RaisedButton(
                      child: Text("5"),
                      onPressed: () {},
                    ),

                    RaisedButton(
                      child: Text("9"),
                      onPressed: () {},
                    ),
                    RaisedButton(
                      child: Text("7"),
                      onPressed: () {},
                    ),
                    RaisedButton(
                      child: Text("0"),
                      onPressed: () {},
                    ),
                    TextFormField(
                      enabled: false,
                      maxLines: null,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        labelText: "Soru 4",
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
                    Text(
                      "\n\t İki Sayıyı da bölenilen en büyük sayıya verilen \t özel  isim",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextFormField(
                      maxLines: null,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        labelText: "cevap",
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
                      enabled: false,
                      maxLines: null,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        labelText: "Soru 5",
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
                    Text(
                      "\n kordinat sisteminde yatay eksene verilen isim",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextFormField(
                      maxLines: null,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        labelText: "cevap",
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
                    SizedBox(height: 20.0),
                    RaisedButton(
                      child: Text("Gönder "),
                      onPressed: () {
                        Alert(
                          type: AlertType.error,
                          context: context,
                          title: "Sınavdan geçer not alamadınız puanınız 40",
                          buttons: [
                            DialogButton(
                              child: Text(
                                "KAPAT",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              ),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        ).show();
                      },
                    ),
                  ]),
                ),*/
              ),
            ),
          ),
        ),
      ),
    );
  }
}
