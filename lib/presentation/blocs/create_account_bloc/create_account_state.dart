part of 'create_account_bloc.dart';

@freezed
class CreateAccountState with _$CreateAccountState {
  const factory CreateAccountState.initial() = _Initial;
  const factory CreateAccountState.loadingState({required bool isLoading}) =
  _LoadingState;
  const factory CreateAccountState.createAccountSuccess() = _CreateAccountSuccess;
}
