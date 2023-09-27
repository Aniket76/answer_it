// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/data_source/user/user_cache_datasource.dart' as _i5;
import '../data/data_source/user/user_cache_datasource_impl.dart' as _i6;
import '../data/data_source/user/user_cloud_datasource.dart' as _i9;
import '../data/data_source/user/user_cloud_datasource_impl.dart' as _i10;
import '../data/data_source/user/user_datasource_factory.dart' as _i11;
import '../data/firebase/services/user_service.dart' as _i7;
import '../data/firebase/services/user_service_impl.dart' as _i8;
import '../data/repositories/user_repository_impl.dart' as _i13;
import '../domain/repositories/user_repository.dart' as _i12;
import '../domain/use_cases/user_use_cases/get_user_usecase.dart' as _i14;
import '../domain/use_cases/user_use_cases/sign_in_usecase.dart' as _i15;
import '../domain/use_cases/user_use_cases/sign_out_usecase.dart' as _i16;
import '../domain/use_cases/user_use_cases/sign_up_usecase.dart' as _i17;
import '../domain/use_cases/user_use_cases/update_user_usecase.dart' as _i18;
import '../presentation/views/login/cubit/login_cubit.dart' as _i3;
import '../presentation/views/sign_up/cubit/sign_up_cubit.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.LoginCubit>(() => _i3.LoginCubit());
    gh.factory<_i4.SignUpCubit>(() => _i4.SignUpCubit());
    gh.factory<_i5.UserCacheDataSource>(() => _i6.UserCacheDataSourceImpl());
    gh.factory<_i7.UserService>(() => _i8.UserServiceImpl());
    gh.factory<_i9.UserCloudDataSource>(
        () => _i10.UserCloudDataSourceImpl(gh<_i7.UserService>()));
    gh.factory<_i11.UserDataSourceFactory>(() => _i11.UserDataSourceFactory(
          gh<_i5.UserCacheDataSource>(),
          gh<_i9.UserCloudDataSource>(),
        ));
    gh.factory<_i12.UserRepository>(
        () => _i13.UserRepositoryImpl(gh<_i11.UserDataSourceFactory>()));
    gh.factory<_i14.GetUserUseCase>(
        () => _i14.GetUserUseCase(gh<_i12.UserRepository>()));
    gh.factory<_i15.SignInUseCase>(
        () => _i15.SignInUseCase(gh<_i12.UserRepository>()));
    gh.factory<_i16.SignOutUseCase>(
        () => _i16.SignOutUseCase(gh<_i12.UserRepository>()));
    gh.factory<_i17.SignUpUseCase>(
        () => _i17.SignUpUseCase(gh<_i12.UserRepository>()));
    gh.factory<_i18.UpdateUserUseCase>(
        () => _i18.UpdateUserUseCase(gh<_i12.UserRepository>()));
    return this;
  }
}
