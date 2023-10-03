import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nft_marketplace/data/models/login_model/login_model.dart';
import 'package:nft_marketplace/data/remote/constants/api_constants.dart';

import '../../../models/account_model/account_model.dart';
import '../../../network/dio_client.dart';


abstract interface class IAccountDataSource {
  Future<AccountModel> loginUser(AccountModel model);
  Future<AccountModel> createAccount(AccountModel model);
}

class AccountDataSource implements IAccountDataSource {
  final DioClient _dioClient;

  AccountDataSource() : _dioClient = GetIt.instance<DioClient>();

  @override
  Future<AccountModel> loginUser(AccountModel loginModel) async {
    // TODO: implement loginUser
    final response = await Dio().post(
      'https://fanhub-api.onrender.com/api/v1/auth/login',
      data: loginModel.toJson(),
    );
    return AccountModel.fromJson(response.data);
  }

  @override
  Future<AccountModel> createAccount(AccountModel model) async {
    // TODO: implement createAccount
    final response = await Dio().post(
      'https://fan-hub-api.onrender.com/api/v1/users',
      data: model.toJson(),
 /*     options: Options(
        headers: {
          "Authorization" : "Bearer ${APIConstants.bearerToken}",
        }
      )*/
    );
    return AccountModel.fromJson(response.data);
  }
}
