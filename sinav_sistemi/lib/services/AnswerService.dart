import 'package:cloud_firestore/cloud_firestore.dart';

class AnswerService {
  late String soruNo;
  late String soru, a, b, c, d, e, cevap, lesson;
  adresAl() {
    CollectionReference questionRef =
        FirebaseFirestore.instance.collection("Sorular");
    var textRef = questionRef.doc(lesson).collection(soruNo).doc(soruNo);
    return textRef;
  }

  Future<dynamic> veriAl() async {
    var response = await adresAl().get();
    var data = response.data();
    soruNo = data!['Soru_No'];
    soru = response.data()!["soru"];
    a = response.data()!["a"];
    b = response.data()!["b"];
    c = response.data()!["c"];
    d = response.data()!["d"];
    e = response.data()!["e"];
    cevap = response.data()!["cevap"];
    List<dynamic> answers = [soruNo, soru, a, b, c, d, e, cevap];
    return answers;
  }
}
