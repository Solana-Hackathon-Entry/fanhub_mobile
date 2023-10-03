part of 'create_account_bloc.dart';

@freezed
class CreateAccountEvent with _$CreateAccountEvent {
  const factory CreateAccountEvent.started() = _Started;

  const factory CreateAccountEvent.createAccount({
    required AccountEntity accountEntity,
  }) = _CreateAccount;
}
