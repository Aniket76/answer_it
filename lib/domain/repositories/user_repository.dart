import 'package:answer_it/data/models/user_model.dart';
import 'package:answer_it/domain/entities/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class UserRepository {
  Future<UserCredential> signInWithEmailPassword(
      String emailAddress, String password);

  Future<bool> signUpWithEmailPassword(String emailAddress, String password);

  Future<bool> signOut();

  Future<bool> updateUser(UserModel input);

  Future<UserEntity> getUser();
}
