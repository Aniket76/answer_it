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

import '../data/data_source/user/user_cache_datasource.dart' as _i4;
import '../data/data_source/user/user_cache_datasource_impl.dart' as _i5;
import '../data/data_source/user/user_cloud_datasource.dart' as _i8;
import '../data/data_source/user/user_cloud_datasource_impl.dart' as _i9;
import '../data/data_source/user/user_datasource_factory.dart' as _i10;
import '../data/firebase/services/user_service.dart' as _i6;
import '../data/firebase/services/user_service_impl.dart' as _i7;
import '../data/repositories/user_repository_impl.dart' as _i12;
import '../domain/repositories/user_repository.dart' as _i11;
import '../domain/use_cases/user_use_cases/get_user_usecase.dart' as _i13;
import '../domain/use_cases/user_use_cases/sign_in_usecase.dart' as _i14;
import '../domain/use_cases/user_use_cases/sign_out_usecase.dart' as _i15;
import '../domain/use_cases/user_use_cases/sign_up_usecase.dart' as _i16;
import '../domain/use_cases/user_use_cases/update_user_usecase.dart' as _i17;
import '../presentation/views/login/cubit/login_cubit.dart' as _i3;
import '../presentation/views/sign_up/cubit/sign_up_cubit.dart' as _i18;

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
    gh.factory<_i4.UserCacheDataSource>(() => _i5.UserCacheDataSourceImpl());
    gh.factory<_i6.UserService>(() => _i7.UserServiceImpl());
    gh.factory<_i8.UserCloudDataSource>(
        () => _i9.UserCloudDataSourceImpl(gh<_i6.UserService>()));
    gh.factory<_i10.UserDataSourceFactory>(() => _i10.UserDataSourceFactory(
          gh<_i4.UserCacheDataSource>(),
          gh<_i8.UserCloudDataSource>(),
        ));
    gh.factory<_i11.UserRepository>(
        () => _i12.UserRepositoryImpl(gh<_i10.UserDataSourceFactory>()));
    gh.factory<_i13.GetUserUseCase>(
        () => _i13.GetUserUseCase(gh<_i11.UserRepository>()));
    gh.factory<_i14.SignInUseCase>(
        () => _i14.SignInUseCase(gh<_i11.UserRepository>()));
    gh.factory<_i15.SignOutUseCase>(
        () => _i15.SignOutUseCase(gh<_i11.UserRepository>()));
    gh.factory<_i16.SignUpUseCase>(
        () => _i16.SignUpUseCase(gh<_i11.UserRepository>()));
    gh.factory<_i17.UpdateUserUseCase>(
        () => _i17.UpdateUserUseCase(gh<_i11.UserRepository>()));
    gh.factory<_i18.SignUpCubit>(() => _i18.SignUpCubit(
          gh<_i16.SignUpUseCase>(),
          gh<_i17.UpdateUserUseCase>(),
        ));
    return this;
  }
}
