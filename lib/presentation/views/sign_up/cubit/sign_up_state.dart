part of 'sign_up_cubit.dart';

@freezed
class SignUpState with _$SignUpState {
  const SignUpState._();

  const factory SignUpState.initial({
    @Default(null) String? nameError,
    @Default(null) String? emailError,
    @Default(null) String? passwordError,
    @Default(null) String? dobError,
    @Default(DataResource.initial())
    DataResource<UserCredential> signUpResource,
  }) = _Initial;
}
