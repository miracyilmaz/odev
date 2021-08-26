import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sinav_sistemi/pages/AdminPages/admin_login.dart';
import 'package:sinav_sistemi/pages/StudentLogin-Register/student_login.dart';
import 'package:sinav_sistemi/pages/teacherLogin/teacher_login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: ApplicationHomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class ApplicationHomePage extends StatelessWidget {
  //const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white60,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(' Sınav Sistemi'),
        ),
        body: SafeArea(
          child: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/backgraundImage.jpg'),
                      fit: BoxFit.cover)),
              child: Center(
                child: Container(
                  color: Color.fromRGBO(255, 255, 255, 0.5),
                  height: 400,
                  width: 300,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Flexible(
                        child: Container(
                          margin: EdgeInsets.only(top: 40.0),
                          child: CircleAvatar(
                            radius: 60,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage('assets/images/40.png'),
                          ),
                        ),
                      ),
                      Container(
                        width: 200.0,
                        height: 50.0,
                        margin: EdgeInsets.only(top: 20.0),
                        child: ElevatedButton(
                          child: Text(
                            'Öğrenci Girişi',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          style: ButtonStyle(
                            //highlightColor: Colors.black,
                            backgroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed))
                                  return Theme.of(context)
                                      .colorScheme
                                      .primary
                                      .withOpacity(0.5);
                                return Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withOpacity(
                                        0.0); // Use the component's default.
                              },
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StudentLogin(),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        width: 200.0,
                        height: 50.0,
                        margin: EdgeInsets.only(top: 10.0),
                        child: ElevatedButton(
                          child: Text(
                            'Öğretmen Girişi',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed))
                                  return Theme.of(context)
                                      .colorScheme
                                      .primary
                                      .withOpacity(0.5);
                                return Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withOpacity(
                                        0.0); // Use the component's default.
                              },
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TeacherLogin(),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        width: 200.0,
                        height: 50.0,
                        margin: EdgeInsets.only(top: 10.0),
                        child: ElevatedButton(
                          child: Text(
                            'Yetkili Girişi',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed))
                                  return Theme.of(context)
                                      .colorScheme
                                      .primary
                                      .withOpacity(0.5);
                                return Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withOpacity(
                                        0.0); // Use the component's default.
                              },
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AdminLogin(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
