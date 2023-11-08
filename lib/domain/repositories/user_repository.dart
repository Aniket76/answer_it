import 'package:answer_it/data/models/user_model.dart';
import 'package:answer_it/domain/entities/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class UserRepository {
  Future<UserCredential> signInWithEmailPassword(
      String emailAddress, String password);

  Future<UserCredential> signUpWithEmailPassword(
      String emailAddress, String password);

  Future<void> signOut();

  Future<void> updateUser(UserModel input);

  Future<UserEntity> getUser();
}
