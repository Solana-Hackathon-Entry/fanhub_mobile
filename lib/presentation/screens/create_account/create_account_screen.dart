import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nft_marketplace/config/themes.dart';
import 'package:nft_marketplace/domain/entities/login_entity.dart';
import 'package:nft_marketplace/presentation/blocs/create_account_bloc/create_account_bloc.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final TextEditingController _tecFirstName = TextEditingController();
  final TextEditingController _tecLastName = TextEditingController();
  final TextEditingController _tecEmail = TextEditingController();
  final TextEditingController _tecPassword = TextEditingController();
  late CreateAccountBloc _createAccountBloc;

  @override
  Widget build(BuildContext context) {
    _createAccountBloc = BlocProvider.of<CreateAccountBloc>(context);
    return Scaffold(
      backgroundColor: ColorConstant.backGroundColor1,
      appBar: AppBar(
        backgroundColor: ColorConstant.color3,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Create Account',
          style: TextStyle(),
        ),
      ),
      body: BlocConsumer<CreateAccountBloc, CreateAccountState>(
        bloc: _createAccountBloc,
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  children: [
                    const SizedBox(height: 40.0),
                    const Text(
                      'Connect to your idol',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    _TextFieldInput(
                      labelText: 'First Name',
                      controller: _tecFirstName,
                    ),
                    const SizedBox(height: 10.0),
                    _TextFieldInput(
                      labelText: 'Last Name',
                      controller: _tecLastName,
                    ),
                    const SizedBox(height: 10.0),
                    _TextFieldInput(
                      labelText: 'Email',
                      controller: _tecEmail,
                    ),
                    const SizedBox(height: 10.0),
                    _TextFieldInput(
                      labelText: 'Password',
                      controller: _tecPassword,
                    ),
                    const SizedBox(height: 30.0),
                    GestureDetector(
                      onTap: () {
                        AccountEntity entity = AccountEntity()
                          ..firstName = _tecFirstName.text
                          ..lastName = _tecLastName.text
                          ..email = _tecEmail.text
                          ..password = _tecPassword.text;
                        _createAccountBloc.add(
                          CreateAccountEvent.createAccount(
                            accountEntity: entity,
                          ),
                        );
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
                                "Create Account",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              )),
                        ),
                      ),
                    ),
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

class _TextFieldInput extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;

  const _TextFieldInput({
    required this.controller,
    this.labelText = "",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: TextFormField(
        style: const TextStyle(color: Colors.black),
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(color: Colors.white),
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
      ),
    );
  }
}
