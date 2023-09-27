import 'package:answer_it/domain/entities/user_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel extends UserEntity {
  UserModel({final String? name, final String? email, final String? dob})
      : super(name: name ?? '', email: email ?? '', dob: dob ?? '');

  factory UserModel.fromSnapshot(DocumentSnapshot documentSnapshot) {
    return UserModel(
        name: documentSnapshot.get('name'),
        email: documentSnapshot.get('email'),
        dob: documentSnapshot.get('dob'));
  }

  Map<String, dynamic> toDocument() {
    return {'name': name, 'email': email, 'dob': dob};
  }
}
