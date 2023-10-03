import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nft_marketplace/config/themes.dart';
import 'package:nft_marketplace/domain/entities/login_entity.dart';
import 'package:nft_marketplace/presentation/blocs/login_bloc/login_bloc.dart';
import 'package:nft_marketplace/presentation/screens/create_account/create_account_screen.dart';
import 'package:nft_marketplace/presentation/screens/home/home_screen.dart';
import 'package:nft_marketplace/presentation/widgets/common/common_function.dart';
import 'package:nft_marketplace/utils/shared_preferences_provider.dart';

import '../../widgets/base_widgets/base_stateful_widget.dart';

class LoginScreen extends BaseStatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginBloc _loginBloc;

  // testing
/*  final TextEditingController _tecUserName =
      TextEditingController(text: "estopace.ma@gmail.com");
  final TextEditingController _tecPassword =
      TextEditingController(text: "password");*/

  // upload om playstore
  final TextEditingController _tecUserName =
  TextEditingController(text: "");
  final TextEditingController _tecPassword =
  TextEditingController(text: "");

  bool _isObscurePassword = true;
  bool _isKeepLogInChecked = false;

  @override
  Widget build(BuildContext context) {
    _loginBloc = BlocProvider.of<LoginBloc>(context);

    return Scaffold(
      backgroundColor: ColorConstant.backGroundColor1,
      //const Color(0xFF2B2B2B),
      body: BlocConsumer<LoginBloc, LoginState>(
        bloc: _loginBloc,
        listener: (context, state) {
          // TODO: implement listener
          state.maybeMap(
              loadingState: (value) {
                if (value.isLoading) {
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext context) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  );
                } else {
                  Navigator.of(context, rootNavigator: true).pop();
                }
              },
              goToCreateAccountScreenState: (result) {},
              goToHomeScreen: (result) {
                CommonFunction.showToast(message: "Login Success");

                // save keep log in
                SharedPreferenceProvider pref = SharedPreferenceProvider();
                pref.setIsLoggedIn(_isKeepLogInChecked);

                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const HomeScreen()));
              },
              orElse: () {});
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: SafeArea(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    const SizedBox(height: 150),
                    SizedBox(
                      height: 80.0,
                      child: Image.asset(
                        "assets/images/others/fanhub_logo_pic1.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    _TextFieldUserName(controller: _tecUserName),
                    const SizedBox(height: 20),
                    _TextFieldPassword(
                      controller: _tecPassword,
                      isObscureText: _isObscurePassword,
                      togglePasswordVisibility: () {
                        setState(() {
                          _isObscurePassword = !_isObscurePassword;
                        });
                        if (kDebugMode) {
                          print(_isObscurePassword);
                        }
                      },
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Theme(
                          data: Theme.of(context).copyWith(
                            unselectedWidgetColor: Colors.white, // Change the color of the checkbox border
                          ),
                          child: Checkbox(value: _isKeepLogInChecked, onChanged: (value) {
                            setState(()=>_isKeepLogInChecked = value! );
                          }),
                        ),
                        const Text("keep me logged in", style: TextStyle(
                          color: Colors.white,
                        ),)
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    GestureDetector(
                      onTap: () {
                        AccountEntity entity = AccountEntity(
                            email: _tecUserName.text,
                            password: _tecPassword.text);
                        _loginBloc
                            .add(LoginEvent.loginUser(loginEntity: entity));
                      },
                      child: SizedBox(
                        width: 250,
                        height: 50,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Colors.purpleAccent, Colors.deepPurple],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              )),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextButton(
                        onPressed: () {
                          //_loginBloc.add(const LoginEvent.goToCreateAccountEvent());
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const CreateAccountScreen(); // Replace NextScreen with the actual screen you want to navigate to.
                              },
                            ),
                          );
                        },
                        child: const Text(
                          "Create Account",
                          style: TextStyle(color: Colors.lightBlue),
                        )),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _TextFieldUserName extends StatelessWidget {
  final TextEditingController controller;

  const _TextFieldUserName({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      controller: controller,
      decoration: const InputDecoration(
        prefixIcon: Icon(
          Icons.person,
          color: Colors.white,
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.0)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.0)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1.0)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1.0)),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1.0)),
      ),
      validator: (text) {
        if (text == null || text.isEmpty) {
          return "This field is required.";
        }
        return null;
      },
    );
  }
}

class _TextFieldPassword extends StatelessWidget {
  final TextEditingController controller;
  final bool isObscureText;
  final VoidCallback togglePasswordVisibility;

  const _TextFieldPassword({
    required this.controller,
    this.isObscureText = false,
    required this.togglePasswordVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      obscureText: isObscureText,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.lock,
          color: Colors.white,
        ),
        suffixIcon: IconButton(
          icon: Icon(
            isObscureText ? Icons.visibility_off : Icons.visibility,
            color: Colors.white,
          ),
          onPressed: () => togglePasswordVisibility(),
        ),
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.0)),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.0)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1.0)),
        focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1.0)),
        errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1.0)),
      ),
      validator: (text) {
        if (text == null || text.isEmpty) {
          return "This field is required.";
        }
        return null;
      },
    );
  }
}
