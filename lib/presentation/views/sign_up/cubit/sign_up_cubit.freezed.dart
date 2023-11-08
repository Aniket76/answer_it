// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpState {
  String? get nameError => throw _privateConstructorUsedError;
  String? get emailError => throw _privateConstructorUsedError;
  String? get passwordError => throw _privateConstructorUsedError;
  String? get dobError => throw _privateConstructorUsedError;
  DataResource<UserCredential> get signUpResource =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? nameError,
            String? emailError,
            String? passwordError,
            String? dobError,
            DataResource<UserCredential> signUpResource)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? nameError,
            String? emailError,
            String? passwordError,
            String? dobError,
            DataResource<UserCredential> signUpResource)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? nameError,
            String? emailError,
            String? passwordError,
            String? dobError,
            DataResource<UserCredential> signUpResource)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call(
      {String? nameError,
      String? emailError,
      String? passwordError,
      String? dobError,
      DataResource<UserCredential> signUpResource});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameError = freezed,
    Object? emailError = freezed,
    Object? passwordError = freezed,
    Object? dobError = freezed,
    Object? signUpResource = null,
  }) {
    return _then(_value.copyWith(
      nameError: freezed == nameError
          ? _value.nameError
          : nameError // ignore: cast_nullable_to_non_nullable
              as String?,
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordError: freezed == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as String?,
      dobError: freezed == dobError
          ? _value.dobError
          : dobError // ignore: cast_nullable_to_non_nullable
              as String?,
      signUpResource: null == signUpResource
          ? _value.signUpResource
          : signUpResource // ignore: cast_nullable_to_non_nullable
              as DataResource<UserCredential>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? nameError,
      String? emailError,
      String? passwordError,
      String? dobError,
      DataResource<UserCredential> signUpResource});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameError = freezed,
    Object? emailError = freezed,
    Object? passwordError = freezed,
    Object? dobError = freezed,
    Object? signUpResource = null,
  }) {
    return _then(_$_Initial(
      nameError: freezed == nameError
          ? _value.nameError
          : nameError // ignore: cast_nullable_to_non_nullable
              as String?,
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordError: freezed == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as String?,
      dobError: freezed == dobError
          ? _value.dobError
          : dobError // ignore: cast_nullable_to_non_nullable
              as String?,
      signUpResource: null == signUpResource
          ? _value.signUpResource
          : signUpResource // ignore: cast_nullable_to_non_nullable
              as DataResource<UserCredential>,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(
      {this.nameError = null,
      this.emailError = null,
      this.passwordError = null,
      this.dobError = null,
      this.signUpResource = const DataResource.initial()})
      : super._();

  @override
  @JsonKey()
  final String? nameError;
  @override
  @JsonKey()
  final String? emailError;
  @override
  @JsonKey()
  final String? passwordError;
  @override
  @JsonKey()
  final String? dobError;
  @override
  @JsonKey()
  final DataResource<UserCredential> signUpResource;

  @override
  String toString() {
    return 'SignUpState.initial(nameError: $nameError, emailError: $emailError, passwordError: $passwordError, dobError: $dobError, signUpResource: $signUpResource)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.nameError, nameError) ||
                other.nameError == nameError) &&
            (identical(other.emailError, emailError) ||
                other.emailError == emailError) &&
            (identical(other.passwordError, passwordError) ||
                other.passwordError == passwordError) &&
            (identical(other.dobError, dobError) ||
                other.dobError == dobError) &&
            (identical(other.signUpResource, signUpResource) ||
                other.signUpResource == signUpResource));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameError, emailError,
      passwordError, dobError, signUpResource);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? nameError,
            String? emailError,
            String? passwordError,
            String? dobError,
            DataResource<UserCredential> signUpResource)
        initial,
  }) {
    return initial(
        nameError, emailError, passwordError, dobError, signUpResource);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? nameError,
            String? emailError,
            String? passwordError,
            String? dobError,
            DataResource<UserCredential> signUpResource)?
        initial,
  }) {
    return initial?.call(
        nameError, emailError, passwordError, dobError, signUpResource);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? nameError,
            String? emailError,
            String? passwordError,
            String? dobError,
            DataResource<UserCredential> signUpResource)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          nameError, emailError, passwordError, dobError, signUpResource);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends SignUpState {
  const factory _Initial(
      {final String? nameError,
      final String? emailError,
      final String? passwordError,
      final String? dobError,
      final DataResource<UserCredential> signUpResource}) = _$_Initial;
  const _Initial._() : super._();

  @override
  String? get nameError;
  @override
  String? get emailError;
  @override
  String? get passwordError;
  @override
  String? get dobError;
  @override
  DataResource<UserCredential> get signUpResource;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
