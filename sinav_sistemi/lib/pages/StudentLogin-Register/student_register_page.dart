import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:sinav_sistemi/services/auth_student.dart';

import 'student_login.dart';

class student_register_page extends StatefulWidget {
  @override
  _student_register_pageState createState() => _student_register_pageState();
}

class _student_register_pageState extends State<student_register_page> {
  String _dropDownValue = "";
  String _hata = "hata";
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _imageController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordAgainController =
      TextEditingController();
  final _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white60,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Kaydol'),
      ),
      body: SafeArea(
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
                child: ListView(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 20.0),
                          child: CircleAvatar(
                            radius: 60,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage('assets/images/40.png'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.query_builder,
                          color: Colors.white,
                        ),
                      ),
                      hint: _dropDownValue == ""
                          ? Text(
                              'Sınıf Bilgisi',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            )
                          : Text(
                              _dropDownValue,
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 20.0),
                            ),
                      isExpanded: true,
                      iconSize: 30.0,
                      style: TextStyle(color: Colors.blue, fontSize: 20.0),
                      items: ['1.Sinif', '2.Sinif', '3.Sinif', '4.Sinif'].map(
                        (val) {
                          return DropdownMenuItem<String>(
                            value: val,
                            child: Text(val),
                          );
                        },
                      ).toList(),
                      onChanged: (val) {
                        setState(
                          () {
                            _dropDownValue = val.toString();
                          },
                        );
                      },
                    ),
                    TextFormField(
                      controller: _numberController,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.pin,
                          color: Colors.white,
                        ),
                        labelText: "Ögrenci No",
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
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: _nameController,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.account_circle,
                          color: Colors.white,
                        ),
                        labelText: "Adı",
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
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: _phoneController,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      cursorColor: Colors.white,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Colors.white,
                        ),
                        labelText: "Telefon Numarası",
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
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: _imageController,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      cursorColor: Colors.white,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.image,
                          color: Colors.white,
                        ),
                        labelText: "fotograf url",
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
                    SizedBox(
                      height: 10.0,
                    ),
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
                        labelText: "E-mail",
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
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      cursorColor: Colors.white,
                      controller: _passwordAgainController,
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.vpn_key,
                          color: Colors.white,
                        ),
                        labelText: "parola tekrar",
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
                    SizedBox(
                      width: size.width * 0.3,
                      height: 20.0,
                    ),
                    _registerButton(),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(
                            Icons.arrow_back_ios_outlined,
                            color: Colors.blue.withOpacity(.75),
                            size: 26,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.3,
                        ),
                        Text(
                          "Kayıt ol",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue.withOpacity(.75),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                )),
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
                .createStudent(
                    _dropDownValue,
                    _numberController.text,
                    _nameController.text,
                    _phoneController.text,
                    _imageController.text,
                    _emailController.text,
                    _passwordController.text)
                .then(
              (value) {
                return Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StudentLogin(),
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
