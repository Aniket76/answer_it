import 'package:answer_it/data/data_source/user/user_cloud_datasource.dart';
import 'package:answer_it/data/firebase/services/user_service.dart';
import 'package:answer_it/data/models/user_model.dart';
import 'package:answer_it/domain/entities/user_entity.dart';
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
  Future<bool> signInWithEmailPassword(String emailAddress, String password) {
    return _userService.signInWithEmailPassword(emailAddress, password);
  }

  @override
  Future<bool> signOut() {
    return _userService.signOut();
  }

  @override
  Future<bool> signUpWithEmailPassword(String emailAddress, String password) {
    return _userService.signUpWithEmailPassword(emailAddress, password);
  }

  @override
  Future<bool> updateUser(UserModel input) {
    return _userService.updateUser(input);
  }
}
