import 'package:get_it/get_it.dart';
import 'package:nft_marketplace/data/models/login_model/login_model.dart';
import 'package:nft_marketplace/data/remote/constants/api_constants.dart';

import '../../models/account_model/account_model.dart';
import '../../network/dio_client.dart';

abstract interface class ILoginDataRepository {
  Future<LoginModel> loginUser();

  Future<AccountModel> createAccount(AccountModel model);
}

class LoginDataRepository implements ILoginDataRepository {
  final DioClient _dioClient;

  LoginDataRepository() : _dioClient = GetIt.instance<DioClient>();

  @override
  Future<LoginModel> loginUser() async {
    // TODO: implement getUserList

    final response =
        await _dioClient.get(APIConstants.baseUrl + "api/v1/auth/login");
    return LoginModel.fromJson(response.data["data"][0]);
  }

  @override
  Future<AccountModel> createAccount(AccountModel model) async {
    // TODO: implement createAccount
    final response =
        await _dioClient.get(APIConstants.baseUrl + "users");
    return AccountModel.fromJson(response.data["data"][0]);
  }
}
