part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState.initial(
      {@Default(true) bool isUserLoggedIn,
      @Default(0) int currentBottomNavigationIndex,
      @Default('Chat Screen') String screenName,
      @Default(DataResource.initial())
      DataResource<UserEntity> userResponse}) = _Initial;
}
