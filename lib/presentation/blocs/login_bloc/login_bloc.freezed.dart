// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AccountEntity loginEntity) loginUser,
    required TResult Function() goToCreateAccountEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AccountEntity loginEntity)? loginUser,
    TResult? Function()? goToCreateAccountEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AccountEntity loginEntity)? loginUser,
    TResult Function()? goToCreateAccountEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_GoToCreateAccountEvent value)
        goToCreateAccountEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_GoToCreateAccountEvent value)? goToCreateAccountEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_GoToCreateAccountEvent value)? goToCreateAccountEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started with DiagnosticableTreeMixin implements _Started {
  const _$_Started();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LoginEvent.started'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AccountEntity loginEntity) loginUser,
    required TResult Function() goToCreateAccountEvent,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AccountEntity loginEntity)? loginUser,
    TResult? Function()? goToCreateAccountEvent,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AccountEntity loginEntity)? loginUser,
    TResult Function()? goToCreateAccountEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_GoToCreateAccountEvent value)
        goToCreateAccountEvent,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_GoToCreateAccountEvent value)? goToCreateAccountEvent,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_GoToCreateAccountEvent value)? goToCreateAccountEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LoginEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_LoginUserCopyWith<$Res> {
  factory _$$_LoginUserCopyWith(
          _$_LoginUser value, $Res Function(_$_LoginUser) then) =
      __$$_LoginUserCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountEntity loginEntity});
}

/// @nodoc
class __$$_LoginUserCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_LoginUser>
    implements _$$_LoginUserCopyWith<$Res> {
  __$$_LoginUserCopyWithImpl(
      _$_LoginUser _value, $Res Function(_$_LoginUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginEntity = null,
  }) {
    return _then(_$_LoginUser(
      loginEntity: null == loginEntity
          ? _value.loginEntity
          : loginEntity // ignore: cast_nullable_to_non_nullable
              as AccountEntity,
    ));
  }
}

/// @nodoc

class _$_LoginUser with DiagnosticableTreeMixin implements _LoginUser {
  const _$_LoginUser({required this.loginEntity});

  @override
  final AccountEntity loginEntity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.loginUser(loginEntity: $loginEntity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.loginUser'))
      ..add(DiagnosticsProperty('loginEntity', loginEntity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginUser &&
            (identical(other.loginEntity, loginEntity) ||
                other.loginEntity == loginEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginUserCopyWith<_$_LoginUser> get copyWith =>
      __$$_LoginUserCopyWithImpl<_$_LoginUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AccountEntity loginEntity) loginUser,
    required TResult Function() goToCreateAccountEvent,
  }) {
    return loginUser(loginEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AccountEntity loginEntity)? loginUser,
    TResult? Function()? goToCreateAccountEvent,
  }) {
    return loginUser?.call(loginEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AccountEntity loginEntity)? loginUser,
    TResult Function()? goToCreateAccountEvent,
    required TResult orElse(),
  }) {
    if (loginUser != null) {
      return loginUser(loginEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_GoToCreateAccountEvent value)
        goToCreateAccountEvent,
  }) {
    return loginUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_GoToCreateAccountEvent value)? goToCreateAccountEvent,
  }) {
    return loginUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_GoToCreateAccountEvent value)? goToCreateAccountEvent,
    required TResult orElse(),
  }) {
    if (loginUser != null) {
      return loginUser(this);
    }
    return orElse();
  }
}

abstract class _LoginUser implements LoginEvent {
  const factory _LoginUser({required final AccountEntity loginEntity}) =
      _$_LoginUser;

  AccountEntity get loginEntity;
  @JsonKey(ignore: true)
  _$$_LoginUserCopyWith<_$_LoginUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GoToCreateAccountEventCopyWith<$Res> {
  factory _$$_GoToCreateAccountEventCopyWith(_$_GoToCreateAccountEvent value,
          $Res Function(_$_GoToCreateAccountEvent) then) =
      __$$_GoToCreateAccountEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GoToCreateAccountEventCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_GoToCreateAccountEvent>
    implements _$$_GoToCreateAccountEventCopyWith<$Res> {
  __$$_GoToCreateAccountEventCopyWithImpl(_$_GoToCreateAccountEvent _value,
      $Res Function(_$_GoToCreateAccountEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GoToCreateAccountEvent
    with DiagnosticableTreeMixin
    implements _GoToCreateAccountEvent {
  const _$_GoToCreateAccountEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.goToCreateAccountEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'LoginEvent.goToCreateAccountEvent'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GoToCreateAccountEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AccountEntity loginEntity) loginUser,
    required TResult Function() goToCreateAccountEvent,
  }) {
    return goToCreateAccountEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AccountEntity loginEntity)? loginUser,
    TResult? Function()? goToCreateAccountEvent,
  }) {
    return goToCreateAccountEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AccountEntity loginEntity)? loginUser,
    TResult Function()? goToCreateAccountEvent,
    required TResult orElse(),
  }) {
    if (goToCreateAccountEvent != null) {
      return goToCreateAccountEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_GoToCreateAccountEvent value)
        goToCreateAccountEvent,
  }) {
    return goToCreateAccountEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_GoToCreateAccountEvent value)? goToCreateAccountEvent,
  }) {
    return goToCreateAccountEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_GoToCreateAccountEvent value)? goToCreateAccountEvent,
    required TResult orElse(),
  }) {
    if (goToCreateAccountEvent != null) {
      return goToCreateAccountEvent(this);
    }
    return orElse();
  }
}

abstract class _GoToCreateAccountEvent implements LoginEvent {
  const factory _GoToCreateAccountEvent() = _$_GoToCreateAccountEvent;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isLoading) loadingState,
    required TResult Function(AccountEntity loginEntity) loginSuccess,
    required TResult Function() goToCreateAccountScreenState,
    required TResult Function() goToHomeScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLoading)? loadingState,
    TResult? Function(AccountEntity loginEntity)? loginSuccess,
    TResult? Function()? goToCreateAccountScreenState,
    TResult? Function()? goToHomeScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLoading)? loadingState,
    TResult Function(AccountEntity loginEntity)? loginSuccess,
    TResult Function()? goToCreateAccountScreenState,
    TResult Function()? goToHomeScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_GoToCreateAccountScreenState value)
        goToCreateAccountScreenState,
    required TResult Function(_GoToHomeScreen value) goToHomeScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_GoToCreateAccountScreenState value)?
        goToCreateAccountScreenState,
    TResult? Function(_GoToHomeScreen value)? goToHomeScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_GoToCreateAccountScreenState value)?
        goToCreateAccountScreenState,
    TResult Function(_GoToHomeScreen value)? goToHomeScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LoginState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isLoading) loadingState,
    required TResult Function(AccountEntity loginEntity) loginSuccess,
    required TResult Function() goToCreateAccountScreenState,
    required TResult Function() goToHomeScreen,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLoading)? loadingState,
    TResult? Function(AccountEntity loginEntity)? loginSuccess,
    TResult? Function()? goToCreateAccountScreenState,
    TResult? Function()? goToHomeScreen,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLoading)? loadingState,
    TResult Function(AccountEntity loginEntity)? loginSuccess,
    TResult Function()? goToCreateAccountScreenState,
    TResult Function()? goToHomeScreen,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_GoToCreateAccountScreenState value)
        goToCreateAccountScreenState,
    required TResult Function(_GoToHomeScreen value) goToHomeScreen,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_GoToCreateAccountScreenState value)?
        goToCreateAccountScreenState,
    TResult? Function(_GoToHomeScreen value)? goToHomeScreen,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_GoToCreateAccountScreenState value)?
        goToCreateAccountScreenState,
    TResult Function(_GoToHomeScreen value)? goToHomeScreen,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoadingState>
    implements _$$_LoadingStateCopyWith<$Res> {
  __$$_LoadingStateCopyWithImpl(
      _$_LoadingState _value, $Res Function(_$_LoadingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$_LoadingState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoadingState with DiagnosticableTreeMixin implements _LoadingState {
  const _$_LoadingState({required this.isLoading});

  @override
  final bool isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.loadingState(isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState.loadingState'))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingStateCopyWith<_$_LoadingState> get copyWith =>
      __$$_LoadingStateCopyWithImpl<_$_LoadingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isLoading) loadingState,
    required TResult Function(AccountEntity loginEntity) loginSuccess,
    required TResult Function() goToCreateAccountScreenState,
    required TResult Function() goToHomeScreen,
  }) {
    return loadingState(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLoading)? loadingState,
    TResult? Function(AccountEntity loginEntity)? loginSuccess,
    TResult? Function()? goToCreateAccountScreenState,
    TResult? Function()? goToHomeScreen,
  }) {
    return loadingState?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLoading)? loadingState,
    TResult Function(AccountEntity loginEntity)? loginSuccess,
    TResult Function()? goToCreateAccountScreenState,
    TResult Function()? goToHomeScreen,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_GoToCreateAccountScreenState value)
        goToCreateAccountScreenState,
    required TResult Function(_GoToHomeScreen value) goToHomeScreen,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_GoToCreateAccountScreenState value)?
        goToCreateAccountScreenState,
    TResult? Function(_GoToHomeScreen value)? goToHomeScreen,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_GoToCreateAccountScreenState value)?
        goToCreateAccountScreenState,
    TResult Function(_GoToHomeScreen value)? goToHomeScreen,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements LoginState {
  const factory _LoadingState({required final bool isLoading}) =
      _$_LoadingState;

  bool get isLoading;
  @JsonKey(ignore: true)
  _$$_LoadingStateCopyWith<_$_LoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoginSuccessCopyWith<$Res> {
  factory _$$_LoginSuccessCopyWith(
          _$_LoginSuccess value, $Res Function(_$_LoginSuccess) then) =
      __$$_LoginSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountEntity loginEntity});
}

/// @nodoc
class __$$_LoginSuccessCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginSuccess>
    implements _$$_LoginSuccessCopyWith<$Res> {
  __$$_LoginSuccessCopyWithImpl(
      _$_LoginSuccess _value, $Res Function(_$_LoginSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginEntity = null,
  }) {
    return _then(_$_LoginSuccess(
      loginEntity: null == loginEntity
          ? _value.loginEntity
          : loginEntity // ignore: cast_nullable_to_non_nullable
              as AccountEntity,
    ));
  }
}

/// @nodoc

class _$_LoginSuccess with DiagnosticableTreeMixin implements _LoginSuccess {
  const _$_LoginSuccess({required this.loginEntity});

  @override
  final AccountEntity loginEntity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.loginSuccess(loginEntity: $loginEntity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState.loginSuccess'))
      ..add(DiagnosticsProperty('loginEntity', loginEntity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginSuccess &&
            (identical(other.loginEntity, loginEntity) ||
                other.loginEntity == loginEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginSuccessCopyWith<_$_LoginSuccess> get copyWith =>
      __$$_LoginSuccessCopyWithImpl<_$_LoginSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isLoading) loadingState,
    required TResult Function(AccountEntity loginEntity) loginSuccess,
    required TResult Function() goToCreateAccountScreenState,
    required TResult Function() goToHomeScreen,
  }) {
    return loginSuccess(loginEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLoading)? loadingState,
    TResult? Function(AccountEntity loginEntity)? loginSuccess,
    TResult? Function()? goToCreateAccountScreenState,
    TResult? Function()? goToHomeScreen,
  }) {
    return loginSuccess?.call(loginEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLoading)? loadingState,
    TResult Function(AccountEntity loginEntity)? loginSuccess,
    TResult Function()? goToCreateAccountScreenState,
    TResult Function()? goToHomeScreen,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(loginEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_GoToCreateAccountScreenState value)
        goToCreateAccountScreenState,
    required TResult Function(_GoToHomeScreen value) goToHomeScreen,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_GoToCreateAccountScreenState value)?
        goToCreateAccountScreenState,
    TResult? Function(_GoToHomeScreen value)? goToHomeScreen,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_GoToCreateAccountScreenState value)?
        goToCreateAccountScreenState,
    TResult Function(_GoToHomeScreen value)? goToHomeScreen,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoginSuccess implements LoginState {
  const factory _LoginSuccess({required final AccountEntity loginEntity}) =
      _$_LoginSuccess;

  AccountEntity get loginEntity;
  @JsonKey(ignore: true)
  _$$_LoginSuccessCopyWith<_$_LoginSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GoToCreateAccountScreenStateCopyWith<$Res> {
  factory _$$_GoToCreateAccountScreenStateCopyWith(
          _$_GoToCreateAccountScreenState value,
          $Res Function(_$_GoToCreateAccountScreenState) then) =
      __$$_GoToCreateAccountScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GoToCreateAccountScreenStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_GoToCreateAccountScreenState>
    implements _$$_GoToCreateAccountScreenStateCopyWith<$Res> {
  __$$_GoToCreateAccountScreenStateCopyWithImpl(
      _$_GoToCreateAccountScreenState _value,
      $Res Function(_$_GoToCreateAccountScreenState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GoToCreateAccountScreenState
    with DiagnosticableTreeMixin
    implements _GoToCreateAccountScreenState {
  const _$_GoToCreateAccountScreenState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.goToCreateAccountScreenState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'LoginState.goToCreateAccountScreenState'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GoToCreateAccountScreenState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isLoading) loadingState,
    required TResult Function(AccountEntity loginEntity) loginSuccess,
    required TResult Function() goToCreateAccountScreenState,
    required TResult Function() goToHomeScreen,
  }) {
    return goToCreateAccountScreenState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLoading)? loadingState,
    TResult? Function(AccountEntity loginEntity)? loginSuccess,
    TResult? Function()? goToCreateAccountScreenState,
    TResult? Function()? goToHomeScreen,
  }) {
    return goToCreateAccountScreenState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLoading)? loadingState,
    TResult Function(AccountEntity loginEntity)? loginSuccess,
    TResult Function()? goToCreateAccountScreenState,
    TResult Function()? goToHomeScreen,
    required TResult orElse(),
  }) {
    if (goToCreateAccountScreenState != null) {
      return goToCreateAccountScreenState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_GoToCreateAccountScreenState value)
        goToCreateAccountScreenState,
    required TResult Function(_GoToHomeScreen value) goToHomeScreen,
  }) {
    return goToCreateAccountScreenState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_GoToCreateAccountScreenState value)?
        goToCreateAccountScreenState,
    TResult? Function(_GoToHomeScreen value)? goToHomeScreen,
  }) {
    return goToCreateAccountScreenState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_GoToCreateAccountScreenState value)?
        goToCreateAccountScreenState,
    TResult Function(_GoToHomeScreen value)? goToHomeScreen,
    required TResult orElse(),
  }) {
    if (goToCreateAccountScreenState != null) {
      return goToCreateAccountScreenState(this);
    }
    return orElse();
  }
}

abstract class _GoToCreateAccountScreenState implements LoginState {
  const factory _GoToCreateAccountScreenState() =
      _$_GoToCreateAccountScreenState;
}

/// @nodoc
abstract class _$$_GoToHomeScreenCopyWith<$Res> {
  factory _$$_GoToHomeScreenCopyWith(
          _$_GoToHomeScreen value, $Res Function(_$_GoToHomeScreen) then) =
      __$$_GoToHomeScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GoToHomeScreenCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_GoToHomeScreen>
    implements _$$_GoToHomeScreenCopyWith<$Res> {
  __$$_GoToHomeScreenCopyWithImpl(
      _$_GoToHomeScreen _value, $Res Function(_$_GoToHomeScreen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GoToHomeScreen
    with DiagnosticableTreeMixin
    implements _GoToHomeScreen {
  const _$_GoToHomeScreen();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.goToHomeScreen()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LoginState.goToHomeScreen'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GoToHomeScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isLoading) loadingState,
    required TResult Function(AccountEntity loginEntity) loginSuccess,
    required TResult Function() goToCreateAccountScreenState,
    required TResult Function() goToHomeScreen,
  }) {
    return goToHomeScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLoading)? loadingState,
    TResult? Function(AccountEntity loginEntity)? loginSuccess,
    TResult? Function()? goToCreateAccountScreenState,
    TResult? Function()? goToHomeScreen,
  }) {
    return goToHomeScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLoading)? loadingState,
    TResult Function(AccountEntity loginEntity)? loginSuccess,
    TResult Function()? goToCreateAccountScreenState,
    TResult Function()? goToHomeScreen,
    required TResult orElse(),
  }) {
    if (goToHomeScreen != null) {
      return goToHomeScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_GoToCreateAccountScreenState value)
        goToCreateAccountScreenState,
    required TResult Function(_GoToHomeScreen value) goToHomeScreen,
  }) {
    return goToHomeScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_GoToCreateAccountScreenState value)?
        goToCreateAccountScreenState,
    TResult? Function(_GoToHomeScreen value)? goToHomeScreen,
  }) {
    return goToHomeScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_GoToCreateAccountScreenState value)?
        goToCreateAccountScreenState,
    TResult Function(_GoToHomeScreen value)? goToHomeScreen,
    required TResult orElse(),
  }) {
    if (goToHomeScreen != null) {
      return goToHomeScreen(this);
    }
    return orElse();
  }
}

abstract class _GoToHomeScreen implements LoginState {
  const factory _GoToHomeScreen() = _$_GoToHomeScreen;
}
