import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final List<String> lessons = [
    "Tarih",
    "Turkce",
    "Matematik",
    "Biyoloji",
    "Kimya",
    "Fizik"
  ];
  //giris yap
  Future<User?> signIn(String email, String password) async {
    var user = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    return user.user;
  }

  //çıkış yap fonksiyonu
  signOut() async {
    return await _auth.signOut();
  }

  //kayıt ol fonksiyonu
  Future<User?> createStudent(String stClass, String studentNumber, String name,
      String phone, String url, String email, String password) async {
    var user = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);

    await _firestore.collection("Student").doc(email).set({
      "email": email,
      "password": password,
    }).then((value) {
      for (int i = 0; i < 5; i++) {
        createStudentLesson(stClass, studentNumber, name, phone, url, email,
            password, lessons[i], user);
      }
    });

    return user.user;
  }

  Future<User?> createStudentLesson(
      String stClass,
      String studentNumber,
      String name,
      String phone,
      String url,
      String email,
      String password,
      lessonName,
      var user) async {
    await _firestore.collection("Student").doc(email).set({
      "email": email,
      "password": password,
    }).then((value) {
      _firestore
          .collection("Student")
          .doc(email)
          .collection("Student_Info")
          .doc(email)
          .set({
        "name": name,
        "Image": "url",
        "mail": email,
        "phone": "Tel_No",
        "class": "Sinif",
        "studentNo": "ogrNo"
      });

      _firestore
          .collection("Student")
          .doc(email)
          .collection("Lessons")
          .doc(lessonName)
          .collection("Note")
          .doc(email)
          .set({
        "girdiMi": "false",
        "not": 0,
      });
      for (int i = 1; i < 15; i++) {
        _firestore
            .collection("Student")
            .doc(email)
            .collection("Lessons")
            .doc(lessonName)
            .collection("absence_Information")
            .doc("Week_$i")
            .set({
          "Teorik_Ders1": false,
          "Teorik_Ders2": false,
          "Uygulamalı_Ders1": false,
          "Uygulamalı_Ders2": false,
          "Uygulamalı_Ders3": false
        });
      }
    });
    return user.user;
  }
}
