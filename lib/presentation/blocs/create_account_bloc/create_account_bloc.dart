import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:nft_marketplace/domain/entities/login_entity.dart';

import '../../../domain/use_cases/account/account_use_case.dart';

part 'create_account_event.dart';

part 'create_account_state.dart';

part 'create_account_bloc.freezed.dart';

class CreateAccountBloc extends Bloc<CreateAccountEvent, CreateAccountState> {
  final AccountUseCase _accountUseCase;

  CreateAccountBloc()
      : _accountUseCase = GetIt.instance<AccountUseCase>(),
        super(const CreateAccountState.initial()) {
    on<_CreateAccount>(_createAccount);
  }

  FutureOr<void> _createAccount(
      _CreateAccount event, Emitter<CreateAccountState> emit) async {
    emit(const CreateAccountState.loadingState(isLoading: true));
    Either<String, AccountEntity> result = await _accountUseCase.createAccount(
      event.accountEntity,
    );
    emit(const CreateAccountState.loadingState(isLoading: false));
    result.fold((l) {
      // fail
      if (kDebugMode) {
        print("FAILED: $l");
      }
    }, (r) {
      // success
      if (kDebugMode) {
        print('Success: $r');
      }
      emit(const CreateAccountState.createAccountSuccess());
    });
  }
}
