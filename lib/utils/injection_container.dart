import 'package:get_it/get_it.dart';
import 'package:nft_marketplace/data/network/dio_client.dart';
import 'package:nft_marketplace/domain/use_cases/account/account_use_case.dart';
import 'package:nft_marketplace/presentation/blocs/login_bloc/login_bloc.dart';

import '../data/remote/data_sources/account/account_data_source.dart';
import '../domain/repositories/account/account_domain_repository.dart';

final GetIt getIt = GetIt.instance;

void setupDependencyInjection() {
  getIt.registerLazySingleton(() => DioClient());

  getIt.registerLazySingleton<IAccountDataSource>(
    () => AccountDataSource(),
  );
  getIt.registerLazySingleton<IAccountDomainRepository>(
    () => AccountDomainRepository(),
  );
  getIt.registerLazySingleton(
    () => AccountUseCase(),
  );
  getIt.registerLazySingleton(
    () => LoginBloc(),
  );
}
