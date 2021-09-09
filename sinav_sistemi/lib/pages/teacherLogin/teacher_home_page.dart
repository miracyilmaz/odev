import 'package:flutter/material.dart';
import 'package:sinav_sistemi/pages/teacherLogin/sinavHazirla/type_of_exam.dart';

class TeacherHomePage extends StatefulWidget {
  @override
  _TeacherHomePageState createState() => _TeacherHomePageState();
}

class _TeacherHomePageState extends State<TeacherHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white60,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Öğretmen Anasayfa'),
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
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/backgraundImage2.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/Atatürk.jpg'),
                    fit: BoxFit.cover),
              ),
              margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0),
              /*margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0),
            color: Color.fromRGBO(255, 255, 255, 0.5),
            height: 400,
            width: 300,*/
            ),
          ),
        ),
      ),
      drawer: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Drawer(
          child: Column(
            children: <Widget>[
              Container(
                child: Image.asset("assets/images/sinav_sistem.png"),
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.account_circle_outlined),
                      title: Text("Profilim"),
                      onTap: () {
                        /*Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ogrenciProfil(),
                          ),
                        );*/
                      },
                    ),
                    Divider(
                      height: 4.0,
                      color: Colors.blueGrey,
                    ),
                    ExpansionTile(
                      title: Text("Sınav Hazırla"),
                      leading: Icon(Icons.receipt_long_outlined),
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 15.0),
                          child: ListTile(
                            leading: Icon(Icons.east_outlined),
                            title: Text("matematik"),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TypeOfExam("matematik"),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15.0),
                          child: ListTile(
                            leading: Icon(Icons.east_outlined),
                            title: Text("turkce"),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TypeOfExam("turkce"),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15.0),
                          child: ListTile(
                            leading: Icon(Icons.east_outlined),
                            title: Text("tarih"),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TypeOfExam("tarih"),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15.0),
                          child: ListTile(
                            leading: Icon(Icons.east_outlined),
                            title: Text("kimya"),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TypeOfExam("kimya"),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15.0),
                          child: ListTile(
                            leading: Icon(Icons.east_outlined),
                            title: Text("biyoloji"),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TypeOfExam("biyoloji"),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 4.0,
                      color: Colors.blueGrey,
                    ),
                    ListTile(
                      leading: Icon(Icons.date_range_outlined),
                      title: Text("Haftalık Ders Programı"),
                      onTap: () {
                        /* Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => dersProgrami(),
                          ),
                        );*/
                      },
                    ),
                    Divider(
                      height: 1.0,
                      color: Colors.blueGrey,
                    ),
                    Divider(
                      height: 1.0,
                      color: Colors.blueGrey,
                    ),
                    ListTile(
                      leading: Icon(Icons.wysiwyg_outlined),
                      title: Text("Sınav Programı"),
                      onTap: () {},
                    ),
                    Divider(
                      height: 1.0,
                      color: Colors.blueGrey,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
