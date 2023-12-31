import 'package:answer_it/data/data_source/user/user_cloud_datasource.dart';
import 'package:answer_it/data/firebase/services/user_service.dart';
import 'package:answer_it/data/models/user_model.dart';
import 'package:answer_it/domain/entities/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: UserCloudDataSource)
class UserCloudDataSourceImpl extends UserCloudDataSource {
  final UserService _userService;

  UserCloudDataSourceImpl(this._userService);

  @override
  Future<UserEntity> getUser() {
    return _userService.getUser();
  }

  @override
  Future<UserCredential> signInWithEmailPassword(
      String emailAddress, String password) {
    return _userService.signInWithEmailPassword(emailAddress, password);
  }

  @override
  Future<void> signOut() {
    return _userService.signOut();
  }

  @override
  Future<UserCredential> signUpWithEmailPassword(
      String emailAddress, String password) {
    return _userService.signUpWithEmailPassword(emailAddress, password);
  }

  @override
  Future<void> updateUser(UserModel input) {
    return _userService.updateUser(input);
  }
}
