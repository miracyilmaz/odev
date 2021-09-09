import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sinav_sistemi/pages/StudentLogin-Register/exam/examPage.dart';

class StudentHomePage extends StatefulWidget {
  String mail;
  String dersAdi = "";
  StudentHomePage(this.mail);
  @override
  _StudentHomePageState createState() => _StudentHomePageState();
}

class _StudentHomePageState extends State<StudentHomePage> {
  String girmisMi = "";
  sinavBaglan() async {
    await FirebaseFirestore.instance
        .collection("Sorular")
        .doc("turkce")
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      print(documentSnapshot.id);
      print(documentSnapshot.reference);
      print(documentSnapshot.exists);
      if (documentSnapshot.exists == true) {
        print('doc veri: ${documentSnapshot.data()}');
      } else {
        print('bu doc yok');
      }
    });
  }

  adresAl(String dersAdi) {
    CollectionReference lessonRef =
        FirebaseFirestore.instance.collection("Student");
    var textRef = lessonRef
        .doc(widget.mail)
        .collection("Lessons")
        .doc(dersAdi)
        .collection("Note")
        .doc(widget.mail);
    return textRef;
  }

  void veriAl(String dersAdi) async {
    var response = await adresAl(dersAdi).get();
    var data = response.data();
    String girdiMi = data['girdiMi'];
    girmisMi = girdiMi.toString();
  }

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
                  child: FlatButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: () async {
                      veriAl("matematik");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ExamPage(
                              widget.mail, "matematik", girmisMi.toString()),
                        ),
                      );
                    },
                    child: Image.asset("assets/images/matematik.png"),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: FlatButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: () async {
                      veriAl("matematik");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ExamPage(
                              widget.mail, "tarih", girmisMi.toString()),
                        ),
                      );
                    },
                    child: Image.asset("assets/images/tarih1.jpg"),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: FlatButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: () async {
                      veriAl("turkce");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ExamPage(
                              widget.mail, "turkce", girmisMi.toString()),
                        ),
                      );
                    },
                    child: Image.asset("assets/images/türkçe.jpg"),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: FlatButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: () async {
                      veriAl("kimya");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ExamPage(
                              widget.mail, "kimya", girmisMi.toString()),
                        ),
                      );
                    },
                    child: Image.asset("assets/images/kimya.jpg"),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: FlatButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: () async {
                      veriAl("biyoloji");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ExamPage(
                              widget.mail, "biyoloji", girmisMi.toString()),
                        ),
                      );
                    },
                    child: Image.asset("assets/images/biyoloji.jpg"),
                  ),
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
