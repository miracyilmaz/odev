import 'package:flutter/material.dart';

class StudentHomePage extends StatefulWidget {
  @override
  _StudentHomePageState createState() => _StudentHomePageState();
}

class _StudentHomePageState extends State<StudentHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white60,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Öğrenci Anasayfa'),
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
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/matematik.png'),
                    ),
                  ),
                  child: FlatButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: () {
                      /* Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SoruSayfasi(),
                        ),
                      );*/
                    },
                    child: Image.asset("assets/images/matematik.png"),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
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
                      title: Text("Not Görüntüleme"),
                      leading: Icon(Icons.receipt_long_outlined),
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 15.0),
                          child: ListTile(
                            leading: Icon(Icons.east_outlined),
                            title: Text("Matematik"),
                            onTap: () {},
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15.0),
                          child: ListTile(
                            leading: Icon(Icons.east_outlined),
                            title: Text("Fizik"),
                            onTap: () {},
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15.0),
                          child: ListTile(
                            leading: Icon(Icons.east_outlined),
                            title: Text("Kimya"),
                            onTap: () {},
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15.0),
                          child: ListTile(
                            leading: Icon(Icons.east_outlined),
                            title: Text("Biyoloji"),
                            onTap: () {},
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15.0),
                          child: ListTile(
                            leading: Icon(Icons.east_outlined),
                            title: Text("Türkçe"),
                            onTap: () {},
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15.0),
                          child: ListTile(
                            leading: Icon(Icons.east_outlined),
                            title: Text("Tarih"),
                            onTap: () {},
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
                    ListTile(
                      leading: Icon(Icons.wysiwyg_outlined),
                      title: Text("Devam Çizelgesi"),
                      onTap: () {},
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
