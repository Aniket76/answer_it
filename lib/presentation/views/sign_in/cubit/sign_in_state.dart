part of 'sign_in_cubit.dart';

@freezed
class SignInState with _$SignInState {
  const SignInState._();

  const factory SignInState.initial({
    @Default(DataResource.initial())
    DataResource<UserCredential> signInResource,
  }) = _Initial;
}
