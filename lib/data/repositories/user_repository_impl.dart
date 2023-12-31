import 'package:answer_it/data/data_source/user/user_cache_datasource.dart';
import 'package:answer_it/data/data_source/user/user_cloud_datasource.dart';
import 'package:answer_it/data/data_source/user/user_datasource_factory.dart';
import 'package:answer_it/data/models/user_model.dart';
import 'package:answer_it/domain/entities/user_entity.dart';
import 'package:answer_it/domain/repositories/user_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl extends UserRepository {
  final UserDataSourceFactory _dataSourceFactory;
  late UserCacheDataSource cacheDS;
  late UserCloudDataSource cloudDS;

  UserRepositoryImpl(this._dataSourceFactory) {
    cloudDS = _dataSourceFactory.getCloudDataSource();
    cacheDS = _dataSourceFactory.getCacheDataSource();
  }

  @override
  Future<UserEntity> getUser() {
    return cloudDS.getUser();
  }

  @override
  Future<UserCredential> signInWithEmailPassword(
      String emailAddress, String password) {
    return cloudDS.signInWithEmailPassword(emailAddress, password);
  }

  @override
  Future<void> signOut() {
    return cloudDS.signOut();
  }

  @override
  Future<UserCredential> signUpWithEmailPassword(
      String emailAddress, String password) {
    return cloudDS.signUpWithEmailPassword(emailAddress, password);
  }

  @override
  Future<void> updateUser(UserModel input) {
    return cloudDS.updateUser(input);
  }
}
