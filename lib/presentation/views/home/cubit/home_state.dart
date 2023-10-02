part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState.initial({
    @Default(true) bool isUserLoggedIn,
  }) = _Initial;
}
