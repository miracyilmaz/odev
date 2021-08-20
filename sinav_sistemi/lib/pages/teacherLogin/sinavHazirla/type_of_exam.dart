import 'package:flutter/material.dart';
import 'package:sinav_sistemi/pages/teacherLogin/sinavHazirla/Questions.dart';

class TypeOfExam extends StatefulWidget {
  @override
  _TypeOfExamState createState() => _TypeOfExamState();
}

class _TypeOfExamState extends State<TypeOfExam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white60,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Sınav Hazırla'),
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
            color: Color.fromRGBO(255, 255, 255, 0.5),
            height: 400,
            width: 300,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 100.0,
                ),
                Center(
                  child: Container(
                    child: RaisedButton(
                      child: Text(
                        'Vize Sınavı  Hazırla',
                        style: TextStyle(fontSize: 25.0),
                      ),
                      color: Colors.blue,
                      highlightColor: Colors.green,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Questions(),
                          ),
                        );
                      },
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
                        'Final Sınavı  Hazırla',
                        style: TextStyle(fontSize: 25.0),
                      ),
                      color: Colors.blue,
                      highlightColor: Colors.green,
                      onPressed: () {},
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
                        'Bütünleme Sınavı Hazırla',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      color: Colors.blue,
                      highlightColor: Colors.green,
                      onPressed: () {},
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
