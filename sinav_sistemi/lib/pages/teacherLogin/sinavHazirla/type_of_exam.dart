import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:sinav_sistemi/pages/teacherLogin/sinavHazirla/Questions.dart';

class TypeOfExam extends StatefulWidget {
  String lessonName;
  TypeOfExam(this.lessonName);

  @override
  _TypeOfExamState createState() => _TypeOfExamState();
}

class _TypeOfExamState extends State<TypeOfExam> {
  TextEditingController _passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white60,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Sınav Parolası'),
      ),
      body: SafeArea(
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
                SizedBox(
                  height: 200.0,
                ),
                Center(
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    cursorColor: Colors.white,
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.vpn_key,
                        color: Colors.white,
                      ),
                      labelText: "Parola",
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
                ),
                SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: Container(
                    child: RaisedButton(
                      child: Text(
                        'Onayla',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      color: Colors.blue,
                      highlightColor: Colors.green,
                      onPressed: () {
                        if (_passwordController.text == "matematik62") {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Questions(widget.lessonName)));
                        } else if (_passwordController.text == "turkce62") {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Questions(widget.lessonName)));
                        } else if (_passwordController.text == "tarih62") {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Questions(widget.lessonName)));
                        } else if (_passwordController.text == "kimya62") {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Questions(widget.lessonName)));
                        } else if (_passwordController.text == "biyoloji62") {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Questions(widget.lessonName)));
                        } else {
                          Alert(
                            type: AlertType.warning,
                            context: context,
                            title: "Sifreyi Yanlis Girdiniz",
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
                        }
                      },
                    ),
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
