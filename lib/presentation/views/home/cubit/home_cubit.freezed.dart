// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  bool get isUserLoggedIn => throw _privateConstructorUsedError;
  int get currentBottomNavigationIndex => throw _privateConstructorUsedError;
  String get screenName => throw _privateConstructorUsedError;
  DataResource<UserEntity> get userResponse =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isUserLoggedIn,
            int currentBottomNavigationIndex,
            String screenName,
            DataResource<UserEntity> userResponse)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isUserLoggedIn, int currentBottomNavigationIndex,
            String screenName, DataResource<UserEntity> userResponse)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isUserLoggedIn, int currentBottomNavigationIndex,
            String screenName, DataResource<UserEntity> userResponse)?
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
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool isUserLoggedIn,
      int currentBottomNavigationIndex,
      String screenName,
      DataResource<UserEntity> userResponse});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUserLoggedIn = null,
    Object? currentBottomNavigationIndex = null,
    Object? screenName = null,
    Object? userResponse = null,
  }) {
    return _then(_value.copyWith(
      isUserLoggedIn: null == isUserLoggedIn
          ? _value.isUserLoggedIn
          : isUserLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      currentBottomNavigationIndex: null == currentBottomNavigationIndex
          ? _value.currentBottomNavigationIndex
          : currentBottomNavigationIndex // ignore: cast_nullable_to_non_nullable
              as int,
      screenName: null == screenName
          ? _value.screenName
          : screenName // ignore: cast_nullable_to_non_nullable
              as String,
      userResponse: null == userResponse
          ? _value.userResponse
          : userResponse // ignore: cast_nullable_to_non_nullable
              as DataResource<UserEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isUserLoggedIn,
      int currentBottomNavigationIndex,
      String screenName,
      DataResource<UserEntity> userResponse});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUserLoggedIn = null,
    Object? currentBottomNavigationIndex = null,
    Object? screenName = null,
    Object? userResponse = null,
  }) {
    return _then(_$_Initial(
      isUserLoggedIn: null == isUserLoggedIn
          ? _value.isUserLoggedIn
          : isUserLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      currentBottomNavigationIndex: null == currentBottomNavigationIndex
          ? _value.currentBottomNavigationIndex
          : currentBottomNavigationIndex // ignore: cast_nullable_to_non_nullable
              as int,
      screenName: null == screenName
          ? _value.screenName
          : screenName // ignore: cast_nullable_to_non_nullable
              as String,
      userResponse: null == userResponse
          ? _value.userResponse
          : userResponse // ignore: cast_nullable_to_non_nullable
              as DataResource<UserEntity>,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(
      {this.isUserLoggedIn = true,
      this.currentBottomNavigationIndex = 0,
      this.screenName = 'Chat Screen',
      this.userResponse = const DataResource.initial()})
      : super._();

  @override
  @JsonKey()
  final bool isUserLoggedIn;
  @override
  @JsonKey()
  final int currentBottomNavigationIndex;
  @override
  @JsonKey()
  final String screenName;
  @override
  @JsonKey()
  final DataResource<UserEntity> userResponse;

  @override
  String toString() {
    return 'HomeState.initial(isUserLoggedIn: $isUserLoggedIn, currentBottomNavigationIndex: $currentBottomNavigationIndex, screenName: $screenName, userResponse: $userResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.isUserLoggedIn, isUserLoggedIn) ||
                other.isUserLoggedIn == isUserLoggedIn) &&
            (identical(other.currentBottomNavigationIndex,
                    currentBottomNavigationIndex) ||
                other.currentBottomNavigationIndex ==
                    currentBottomNavigationIndex) &&
            (identical(other.screenName, screenName) ||
                other.screenName == screenName) &&
            (identical(other.userResponse, userResponse) ||
                other.userResponse == userResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isUserLoggedIn,
      currentBottomNavigationIndex, screenName, userResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isUserLoggedIn,
            int currentBottomNavigationIndex,
            String screenName,
            DataResource<UserEntity> userResponse)
        initial,
  }) {
    return initial(
        isUserLoggedIn, currentBottomNavigationIndex, screenName, userResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isUserLoggedIn, int currentBottomNavigationIndex,
            String screenName, DataResource<UserEntity> userResponse)?
        initial,
  }) {
    return initial?.call(
        isUserLoggedIn, currentBottomNavigationIndex, screenName, userResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isUserLoggedIn, int currentBottomNavigationIndex,
            String screenName, DataResource<UserEntity> userResponse)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isUserLoggedIn, currentBottomNavigationIndex, screenName,
          userResponse);
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

abstract class _Initial extends HomeState {
  const factory _Initial(
      {final bool isUserLoggedIn,
      final int currentBottomNavigationIndex,
      final String screenName,
      final DataResource<UserEntity> userResponse}) = _$_Initial;
  const _Initial._() : super._();

  @override
  bool get isUserLoggedIn;
  @override
  int get currentBottomNavigationIndex;
  @override
  String get screenName;
  @override
  DataResource<UserEntity> get userResponse;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
