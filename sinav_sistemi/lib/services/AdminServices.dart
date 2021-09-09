import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AdminService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  late String lessonName;

  Future<User?> createTeacher(String name, String email, String password,
      String branch, String phone, String recordNo) async {
    var user = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);

    createTeacherLesson(name, email, password, branch, user, phone, recordNo);

    return user.user;
  }

  Future<User?> createTeacherLesson(String name, String email, String password,
      String branch, var user, String phone, String recordNo) async {
    await _firestore.collection("Teacher").doc(email).set({
      "email": email,
      "password": password,
    }).then((value) {
      _firestore
          .collection("Teacher")
          .doc(email)
          .collection("Teacher_Info")
          .doc(email)
          .set({
        "name": name,
        "mail": email,
        "branch": branch,
        "phone": phone,
        "sicilNo": recordNo,
        "Image": "url",
      });

      _firestore
          .collection("Teacher")
          .doc(email)
          .collection("Classes")
          .doc(email)
          .collection("first_class")
          .doc(email)
          .set({
        "vize": false,
        "final": false,
        "but": false,
      });
      _firestore
          .collection("Teacher")
          .doc(email)
          .collection("Classes")
          .doc(email)
          .collection("second_class")
          .doc(email)
          .set({
        "vize": false,
        "final": false,
        "but": false,
      });
      _firestore
          .collection("Teacher")
          .doc(email)
          .collection("Classes")
          .doc(email)
          .collection("third_class")
          .doc(email)
          .set({
        "vize": false,
        "final": false,
        "but": false,
      });
      _firestore
          .collection("Teacher")
          .doc(email)
          .collection("Classes")
          .doc(email)
          .collection("fourth_class")
          .doc(email)
          .set({
        "vize": false,
        "final": false,
        "but": false,
      });
    });
    return user.user;
  }
}
