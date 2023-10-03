import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nft_marketplace/data/constants.dart';
import 'package:nft_marketplace/presentation/blocs/create_account_bloc/create_account_bloc.dart';
import 'package:nft_marketplace/presentation/blocs/login_bloc/login_bloc.dart';
import 'package:nft_marketplace/presentation/screens/home/home_screen.dart';
import 'package:nft_marketplace/utils/shared_preferences_provider.dart';

import 'presentation/screens/login/login_screen.dart';
import 'provider/provider_models/nft_data_model.dart';
import 'utils/injection_container.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferenceProvider pref = SharedPreferenceProvider();
  var isLoggedIn = await pref.getIsLoggedIn();
  setupDependencyInjection();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(),
      ),
      BlocProvider<CreateAccountBloc>(
        create: (context) => CreateAccountBloc(),
      ),
      ChangeNotifierProvider(
        create: (BuildContext context) => NFTDataModel(),
      ),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: UIFontStyles.montserratRegular,
      ),
      home: isLoggedIn ? const HomeScreen() : const LoginScreen(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(
          create: (context) => LoginBloc(),
        ),
        BlocProvider<CreateAccountBloc>(
          create: (context) => CreateAccountBloc(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => NFTDataModel(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: UIFontStyles.montserratRegular,
        ),
        home: const LoginScreen(),
      ),
    );
  }
}
