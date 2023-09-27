import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreDatabaseReferance {
  static String? getUserId() => FirebaseAuth.instance.currentUser?.uid;
  static FirebaseFirestore database() => FirebaseFirestore.instance;
  static CollectionReference usersColRef() => database().collection('users');
  static DocumentReference currentUserRef() =>
      usersColRef().doc('$getUserId()');
}
