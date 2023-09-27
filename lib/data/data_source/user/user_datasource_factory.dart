import 'package:answer_it/data/data_source/user/user_cache_datasource.dart';
import 'package:answer_it/data/data_source/user/user_cloud_datasource.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserDataSourceFactory {
  final UserCacheDataSource _cacheDataSource;
  final UserCloudDataSource _cloudDataSource;

  UserDataSourceFactory(this._cacheDataSource, this._cloudDataSource);

  UserCacheDataSource getCacheDataSource() {
    return _cacheDataSource;
  }

  UserCloudDataSource getCloudDataSource() {
    return _cloudDataSource;
  }
}
