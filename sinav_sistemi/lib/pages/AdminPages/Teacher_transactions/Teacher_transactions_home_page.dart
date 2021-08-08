import 'package:flutter/material.dart';
import 'package:sinav_sistemi/pages/AdminPages/Teacher_transactions/add_teacher.dart';

class TeacherTransactionHomePage extends StatefulWidget {
  @override
  _TeacherTransactionHomePageState createState() =>
      _TeacherTransactionHomePageState();
}

class _TeacherTransactionHomePageState
    extends State<TeacherTransactionHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white60,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Öğretmen İşlemleri'),
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
                  height: 30.0,
                ),
                Center(
                  child: Container(
                    child: Image.asset("assets/images/teacher.png"),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                ButtonBar(
                  children: <Widget>[
                    RaisedButton(
                      child: Text(
                        'Ekle',
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                      highlightColor: Colors.blue,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddTeacher()));
                      },
                    ),
                    Center(
                      child: RaisedButton(
                        child: Text(
                          'Güncelle',
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        ),
                        highlightColor: Colors.blue,
                        onPressed: () {
                          /* Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TeacherRegisterPage()));*/
                        },
                      ),
                    ),
                    Center(
                      child: RaisedButton(
                        child: Text(
                          'Sil',
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        ),
                        highlightColor: Colors.blue,
                        onPressed: () {
                          /*  Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TeacherRegisterPage()));*/
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
