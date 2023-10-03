// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateAccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AccountEntity accountEntity) createAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AccountEntity accountEntity)? createAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AccountEntity accountEntity)? createAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateAccount value) createAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAccount value)? createAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAccount value)? createAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAccountEventCopyWith<$Res> {
  factory $CreateAccountEventCopyWith(
          CreateAccountEvent value, $Res Function(CreateAccountEvent) then) =
      _$CreateAccountEventCopyWithImpl<$Res, CreateAccountEvent>;
}

/// @nodoc
class _$CreateAccountEventCopyWithImpl<$Res, $Val extends CreateAccountEvent>
    implements $CreateAccountEventCopyWith<$Res> {
  _$CreateAccountEventCopyWithImpl(this._value, this._then);

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
    extends _$CreateAccountEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started with DiagnosticableTreeMixin implements _Started {
  const _$_Started();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateAccountEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CreateAccountEvent.started'));
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
    required TResult Function(AccountEntity accountEntity) createAccount,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AccountEntity accountEntity)? createAccount,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AccountEntity accountEntity)? createAccount,
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
    required TResult Function(_CreateAccount value) createAccount,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAccount value)? createAccount,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAccount value)? createAccount,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CreateAccountEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_CreateAccountCopyWith<$Res> {
  factory _$$_CreateAccountCopyWith(
          _$_CreateAccount value, $Res Function(_$_CreateAccount) then) =
      __$$_CreateAccountCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountEntity accountEntity});
}

/// @nodoc
class __$$_CreateAccountCopyWithImpl<$Res>
    extends _$CreateAccountEventCopyWithImpl<$Res, _$_CreateAccount>
    implements _$$_CreateAccountCopyWith<$Res> {
  __$$_CreateAccountCopyWithImpl(
      _$_CreateAccount _value, $Res Function(_$_CreateAccount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountEntity = null,
  }) {
    return _then(_$_CreateAccount(
      accountEntity: null == accountEntity
          ? _value.accountEntity
          : accountEntity // ignore: cast_nullable_to_non_nullable
              as AccountEntity,
    ));
  }
}

/// @nodoc

class _$_CreateAccount with DiagnosticableTreeMixin implements _CreateAccount {
  const _$_CreateAccount({required this.accountEntity});

  @override
  final AccountEntity accountEntity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateAccountEvent.createAccount(accountEntity: $accountEntity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateAccountEvent.createAccount'))
      ..add(DiagnosticsProperty('accountEntity', accountEntity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateAccount &&
            (identical(other.accountEntity, accountEntity) ||
                other.accountEntity == accountEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateAccountCopyWith<_$_CreateAccount> get copyWith =>
      __$$_CreateAccountCopyWithImpl<_$_CreateAccount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AccountEntity accountEntity) createAccount,
  }) {
    return createAccount(accountEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AccountEntity accountEntity)? createAccount,
  }) {
    return createAccount?.call(accountEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AccountEntity accountEntity)? createAccount,
    required TResult orElse(),
  }) {
    if (createAccount != null) {
      return createAccount(accountEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateAccount value) createAccount,
  }) {
    return createAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAccount value)? createAccount,
  }) {
    return createAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAccount value)? createAccount,
    required TResult orElse(),
  }) {
    if (createAccount != null) {
      return createAccount(this);
    }
    return orElse();
  }
}

abstract class _CreateAccount implements CreateAccountEvent {
  const factory _CreateAccount({required final AccountEntity accountEntity}) =
      _$_CreateAccount;

  AccountEntity get accountEntity;
  @JsonKey(ignore: true)
  _$$_CreateAccountCopyWith<_$_CreateAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateAccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isLoading) loadingState,
    required TResult Function() createAccountSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLoading)? loadingState,
    TResult? Function()? createAccountSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLoading)? loadingState,
    TResult Function()? createAccountSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_CreateAccountSuccess value) createAccountSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_CreateAccountSuccess value)? createAccountSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_CreateAccountSuccess value)? createAccountSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAccountStateCopyWith<$Res> {
  factory $CreateAccountStateCopyWith(
          CreateAccountState value, $Res Function(CreateAccountState) then) =
      _$CreateAccountStateCopyWithImpl<$Res, CreateAccountState>;
}

/// @nodoc
class _$CreateAccountStateCopyWithImpl<$Res, $Val extends CreateAccountState>
    implements $CreateAccountStateCopyWith<$Res> {
  _$CreateAccountStateCopyWithImpl(this._value, this._then);

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
    extends _$CreateAccountStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateAccountState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CreateAccountState.initial'));
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
    required TResult Function() createAccountSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLoading)? loadingState,
    TResult? Function()? createAccountSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLoading)? loadingState,
    TResult Function()? createAccountSuccess,
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
    required TResult Function(_CreateAccountSuccess value) createAccountSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_CreateAccountSuccess value)? createAccountSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_CreateAccountSuccess value)? createAccountSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreateAccountState {
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
    extends _$CreateAccountStateCopyWithImpl<$Res, _$_LoadingState>
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
    return 'CreateAccountState.loadingState(isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateAccountState.loadingState'))
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
    required TResult Function() createAccountSuccess,
  }) {
    return loadingState(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLoading)? loadingState,
    TResult? Function()? createAccountSuccess,
  }) {
    return loadingState?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLoading)? loadingState,
    TResult Function()? createAccountSuccess,
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
    required TResult Function(_CreateAccountSuccess value) createAccountSuccess,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_CreateAccountSuccess value)? createAccountSuccess,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_CreateAccountSuccess value)? createAccountSuccess,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements CreateAccountState {
  const factory _LoadingState({required final bool isLoading}) =
      _$_LoadingState;

  bool get isLoading;
  @JsonKey(ignore: true)
  _$$_LoadingStateCopyWith<_$_LoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateAccountSuccessCopyWith<$Res> {
  factory _$$_CreateAccountSuccessCopyWith(_$_CreateAccountSuccess value,
          $Res Function(_$_CreateAccountSuccess) then) =
      __$$_CreateAccountSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CreateAccountSuccessCopyWithImpl<$Res>
    extends _$CreateAccountStateCopyWithImpl<$Res, _$_CreateAccountSuccess>
    implements _$$_CreateAccountSuccessCopyWith<$Res> {
  __$$_CreateAccountSuccessCopyWithImpl(_$_CreateAccountSuccess _value,
      $Res Function(_$_CreateAccountSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CreateAccountSuccess
    with DiagnosticableTreeMixin
    implements _CreateAccountSuccess {
  const _$_CreateAccountSuccess();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateAccountState.createAccountSuccess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'CreateAccountState.createAccountSuccess'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CreateAccountSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isLoading) loadingState,
    required TResult Function() createAccountSuccess,
  }) {
    return createAccountSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLoading)? loadingState,
    TResult? Function()? createAccountSuccess,
  }) {
    return createAccountSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLoading)? loadingState,
    TResult Function()? createAccountSuccess,
    required TResult orElse(),
  }) {
    if (createAccountSuccess != null) {
      return createAccountSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_CreateAccountSuccess value) createAccountSuccess,
  }) {
    return createAccountSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_CreateAccountSuccess value)? createAccountSuccess,
  }) {
    return createAccountSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_CreateAccountSuccess value)? createAccountSuccess,
    required TResult orElse(),
  }) {
    if (createAccountSuccess != null) {
      return createAccountSuccess(this);
    }
    return orElse();
  }
}

abstract class _CreateAccountSuccess implements CreateAccountState {
  const factory _CreateAccountSuccess() = _$_CreateAccountSuccess;
}
