import 'package:nft_marketplace/data/models/account_model/account_model.dart';
import 'package:nft_marketplace/data/models/login_model/login_model.dart';
import 'package:nft_marketplace/domain/entities/login_entity.dart';

class AccountMapper {
  static AccountEntity toAccountEntity(AccountModel model) {
    return AccountEntity(
      id: model.id,
      email: model.email,
      password: model.password,
      user: model.user ,
      deleted: model.deleted,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      v: model.v,
    );
  }

 /* static LoginModel toLoginModel(AccountEntity entity) {
    return LoginModel(
      email: entity.email,
      password: entity.password,
    );
  }*/

  static AccountModel toAccountModel(AccountEntity entity) {
    return AccountModel(
      firstName: entity.firstName,
      lastName: entity.lastName,
      email: entity.email,
      password: entity.password,
    );
  }
}