import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:nft_marketplace/domain/entities/login_entity.dart';
import 'package:nft_marketplace/domain/use_cases/account/account_use_case.dart';


part 'login_event.dart';

part 'login_state.dart';

part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AccountUseCase _accountUseCase;

  LoginBloc()
      : _accountUseCase = GetIt.instance<AccountUseCase>(),
        super(const LoginState.initial()) {
    on<_LoginUser>(_loginUser);
  }

  FutureOr<void> _loginUser(_LoginUser event, Emitter<LoginState> emit) async {
    emit(const LoginState.loadingState(isLoading: true));
    Either<String, AccountEntity> result = await _accountUseCase.loginUser(
      event.loginEntity,
    );
    emit(const LoginState.loadingState(isLoading: false));
    result.fold((l) {
      // fail
      if (kDebugMode) {
        print("FAILED: $l");
      }
    }, (r) {
      // success
      if (kDebugMode) {
        print("SUCCESS: $r");
      }
      emit(const LoginState.goToHomeScreen());
    });
  }
}
