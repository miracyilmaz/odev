import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:sinav_sistemi/pages/application_home_page.dart';
import 'package:sinav_sistemi/services/AdminServices.dart';

class AddTeacher extends StatefulWidget {
  @override
  _AddTeacherState createState() => _AddTeacherState();
}

class _AddTeacherState extends State<AddTeacher> {
  String _hata = "hata";
  final TextEditingController _NameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _sicilNoController = TextEditingController();
  final TextEditingController _phoneNoController = TextEditingController();
  final TextEditingController _bransController = TextEditingController();
  final _authService = TeacherAuthService();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Kaydol'),
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
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0),
            color: Color.fromRGBO(0, 0, 0, 0.7),
            height: 400,
            width: 300,
            child: SingleChildScrollView(
              child: Form(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextFormField(
                        controller: _emailController,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        cursorColor: Colors.white,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.mail,
                            color: Colors.white,
                          ),
                          hintText: 'E-Mail',
                          prefixText: ' ',
                          hintStyle: TextStyle(color: Colors.white),
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
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
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
                          hintText: 'Parola',
                          prefixText: ' ',
                          hintStyle: TextStyle(color: Colors.white),
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
                      SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        cursorColor: Colors.white,
                        controller: _NameController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.assignment_ind_rounded,
                            color: Colors.white,
                          ),
                          hintText: 'İsim',
                          prefixText: ' ',
                          hintStyle: TextStyle(color: Colors.white),
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
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        cursorColor: Colors.white,
                        controller: _bransController,
                        obscureText: false,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.assistant_photo,
                            color: Colors.white,
                          ),
                          hintText: 'Branş',
                          hintStyle: TextStyle(color: Colors.white),
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
                      SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.white,
                        controller: _phoneNoController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.local_phone,
                            color: Colors.white,
                          ),
                          hintText: 'Telefon Numarası',
                          prefixText: ' ',
                          hintStyle: TextStyle(color: Colors.white),
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
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.white,
                        controller: _sicilNoController,
                        obscureText: false,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.pin,
                            color: Colors.white,
                          ),
                          hintText: 'SicilNo',
                          prefixText: ' ',
                          hintStyle: TextStyle(color: Colors.white),
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
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      _registerButton(),
                      Padding(
                        padding: EdgeInsets.only(
                            top: size.height * .06, left: size.width * .02),
                        child: Align(
                          alignment: Alignment.topLeft,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _registerButton() => FlatButton(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
              //color: colorPrimaryShade,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Center(
                child: Text(
              "Kaydet",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            )),
          ),
        ),
        onPressed: () {
          try {
            _authService
                .createTeacher(
                    _NameController.text,
                    _emailController.text,
                    _passwordController.text,
                    _bransController.text,
                    _phoneNoController.text,
                    _sicilNoController.text)
                .then(
              (value) {
                return Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ApplicationHomePage(),
                  ),
                );
              },
            ).catchError(
              (onError) {
                if (onError.toString() ==
                    "[firebase_auth/unknown] Given String is empty or null") {
                  _hata = "Tüm Alanları Doldurduğunuzdan Emin Olun";
                } else if (onError.toString() ==
                    "[firebase_auth/email-already-in-use] The email address is already in use by another account.") {
                  _hata =
                      "Bu Mail Adresi Başka Bir Hesap Tarafından Kullanılmaktadır.";
                } else if (onError.toString() ==
                    "[firebase_auth/wrong-password] The password is invalid or the user does not have a password.") {
                  _hata = "Yanlış veya Geçersiz Şifre";
                } else if (onError.toString() ==
                    "[firebase_auth/user-not-found] There is no user record corresponding to this identifier. The user may have been deleted.") {
                  _hata = "Girilen Mail Adresi Yanış! ";
                } else if (onError.toString() ==
                    "[firebase_auth/invalid-email] The email address is badly formatted.") {
                  _hata = "Mail Adresi Uygun Formatta Değil !";
                } else if (onError.toString() ==
                    "[firebase_auth/too-many-requests] We have blocked all requests from this device due to unusual activity. Try again later.") {
                  _hata =
                      "Kısa Zamanda çok Fazla giriş isteginde bulundunuz. Daha Sonra Tekrar Deneyin";
                } else {
                  _hata = "Beklenmedik Bir Hata Olustu";
                }
                Alert(
                  type: AlertType.warning,
                  context: context,
                  title: _hata,
                  buttons: [
                    DialogButton(
                      child: Text(
                        "KAPAT",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ).show();
              },
            );
          } catch (e) {
            Alert(
              type: AlertType.warning,
              context: context,
              title: "Beklenmeyen Bir Hata Olustu",
              buttons: [
                DialogButton(
                  child: Text(
                    "KAPAT",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ).show();
          }
        },
      );
}
