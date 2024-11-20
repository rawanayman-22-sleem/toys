import 'package:flutter/material.dart';
import 'package:toy_shop/Features/Widgets/LoginViewBody.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
     body: LoginViewBody(),
    );
  }
}

