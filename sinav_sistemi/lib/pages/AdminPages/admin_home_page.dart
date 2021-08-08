import 'package:flutter/material.dart';
import 'package:sinav_sistemi/pages/AdminPages/Student_transactions/Student_transactions_home_page.dart';
import 'package:sinav_sistemi/pages/AdminPages/Teacher_transactions/Teacher_transactions_home_page.dart';

class AdminHomePage extends StatefulWidget {
  @override
  _AdminHomePageState createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white60,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Admin Anasayfa'),
      ),
      body: SafeArea(
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
                      title: Text("Kullanıcı İşlemleri"),
                      leading: Icon(Icons.receipt_long_outlined),
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 15.0),
                          child: ListTile(
                            leading: Icon(Icons.east_outlined),
                            title: Text("Öğretmen İşlemleri"),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      TeacherTransactionHomePage(),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15.0),
                          child: ListTile(
                            leading: Icon(Icons.east_outlined),
                            title: Text("Öğrenci İŞlemleri"),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      StudentTransactionHomePage(),
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
