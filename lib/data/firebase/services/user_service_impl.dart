import 'package:answer_it/data/firebase/database_referances.dart';
import 'package:answer_it/data/firebase/services/user_service.dart';
import 'package:answer_it/data/models/user_model.dart';
import 'package:answer_it/domain/entities/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: UserService)
class UserServiceImpl extends UserService {
  @override
  Future<UserEntity> getUser() async {
    var documentSnapshot =
        await FirestoreDatabaseReferance.currentUserRef().get();
    var user = UserModel.fromSnapshot(documentSnapshot);
    return user;
  }

  @override
  Future<bool> signInWithEmailPassword(
      String emailAddress, String password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);
      return Future.value(true);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
      return Future.value(false);
    }
  }

  @override
  Future<bool> signOut() async {
    await FirebaseAuth.instance.signOut();
    return Future.value(true);
  }

  @override
  Future<bool> signUpWithEmailPassword(
      String emailAddress, String password) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return Future.value(true);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
      return Future.value(false);
    } catch (e) {
      print(e);
      return Future.value(false);
    }
  }

  @override
  Future<bool> updateUser(UserModel input) async {
    try {
      await FirestoreDatabaseReferance.usersColRef().add(input.toDocument());
      return Future.value(true);
    } catch (e) {
      print(e);
      return Future.value(false);
    }
  }
}
