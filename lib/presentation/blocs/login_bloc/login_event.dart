part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.started() = _Started;
  const factory LoginEvent.loginUser({required AccountEntity loginEntity}) = _LoginUser;
  const factory LoginEvent.goToCreateAccountEvent() = _GoToCreateAccountEvent;
}
