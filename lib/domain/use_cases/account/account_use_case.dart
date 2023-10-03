import 'package:fpdart/fpdart.dart';
import 'package:get_it/get_it.dart';
import 'package:nft_marketplace/domain/entities/login_entity.dart';

import '../../repositories/account/account_domain_repository.dart';

typedef EitherAccount<T> = Future<Either<String, T>>;

class AccountUseCase {
  final IAccountDomainRepository _iLoginDomainRepository;

  AccountUseCase()
      : _iLoginDomainRepository = GetIt.instance<IAccountDomainRepository>();

  EitherAccount<AccountEntity> loginUser(AccountEntity loginEntity) async {
    // Fetch user list from API or database
    try {
      AccountEntity entity =
          await _iLoginDomainRepository.loginUser(loginEntity);
      return Right(entity);
    } catch (e) {
      return Left(e.toString());
    }
  }

  EitherAccount<AccountEntity> createAccount(AccountEntity entity) async {
    // Fetch user list from API or database
    try {
      AccountEntity resultEntity =
          await _iLoginDomainRepository.createAccount(entity);
      return Right(resultEntity);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
