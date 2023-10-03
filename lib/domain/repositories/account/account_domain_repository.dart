import 'package:get_it/get_it.dart';
import 'package:nft_marketplace/domain/entities/login_entity.dart';
import 'package:nft_marketplace/domain/entity_mappers/account_mapper.dart';

import '../../../data/remote/data_sources/account/account_data_source.dart';

abstract interface class IAccountDomainRepository {
  Future<AccountEntity> loginUser(AccountEntity loginEntity);
  Future<AccountEntity> createAccount(AccountEntity loginEntity);
}

class AccountDomainRepository implements IAccountDomainRepository {
  final IAccountDataSource _iAccountDataSource;

  AccountDomainRepository()
      : _iAccountDataSource = GetIt.instance<IAccountDataSource>();

  @override
  Future<AccountEntity> loginUser(AccountEntity loginEntity) async {
    // TODO: implement loginUser
    final accountModel = await _iAccountDataSource
        .loginUser(AccountMapper.toAccountModel(loginEntity));
    return AccountMapper.toAccountEntity(accountModel);
  }

  @override
  Future<AccountEntity> createAccount(AccountEntity loginEntity) async {
    // TODO: implement createAccount
    final accountModel = await _iAccountDataSource
        .createAccount(AccountMapper.toAccountModel(loginEntity));
    return AccountMapper.toAccountEntity(accountModel);
  }
}
