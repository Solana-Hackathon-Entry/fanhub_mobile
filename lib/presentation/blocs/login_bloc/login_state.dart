part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;

  const factory LoginState.loadingState({required bool isLoading}) =
      _LoadingState;

  const factory LoginState.loginSuccess({required AccountEntity loginEntity}) =
      _LoginSuccess;

  const factory LoginState.goToCreateAccountScreenState() =
      _GoToCreateAccountScreenState;

  const factory LoginState.goToHomeScreen() =
  _GoToHomeScreen;
}
