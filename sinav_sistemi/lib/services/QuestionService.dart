import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sinav_sistemi/Model/QuestionModel.dart';

class QuestionService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Question?> createClassicQuestion(
      String lessonName, int soruNo, soru, a, b, c, d, e, cevap) async {
    await _firestore
        .collection("Sorular")
        .doc(lessonName)
        .collection(soruNo.toString())
        .doc(soruNo.toString())
        .set({
      "Soru_No": soruNo,
      "soru": soru,
      "a": a,
      "b": b,
      "c": c,
      "d": d,
      "e": e,
      "cevap": cevap,
    }).then((value) {
      print("eklendi");
    });
  }

  Future<Question?> createQuestion(
      String lessonName, int soruNo, soru, bosluk1, bosluk2, bosluk3) async {
    await _firestore
        .collection("Sorular")
        .doc(lessonName)
        .collection(soruNo.toString())
        .doc(soruNo.toString())
        .set({
      "Soru_No": soruNo,
      "soru": soru,
      "1.seçenek": bosluk1,
      "2.secenek": bosluk2,
      "3.secenek": bosluk3,
    }).then((value) {
      print("eklendi");
    });
  }
}
