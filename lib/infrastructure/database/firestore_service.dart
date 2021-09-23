import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  static CollectionReference<Map<String, dynamic>> users =
      FirebaseFirestore.instance.collection('users');

  static CollectionReference<Map<String, dynamic>> userMovieList(String userId) =>
      FirestoreService.users.doc(userId).collection('movieList');

  static DateTime dateTimeFromTimestamp(Timestamp val) =>
      DateTime.fromMillisecondsSinceEpoch(val.millisecondsSinceEpoch);

  static Timestamp dateTimeToTimestamp(DateTime time) =>
      Timestamp.fromMillisecondsSinceEpoch(time.millisecondsSinceEpoch);
}
