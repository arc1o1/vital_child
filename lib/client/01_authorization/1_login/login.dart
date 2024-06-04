import 'package:vital_child/client/01_authorization/1_login/widgets/login_form.dart';
import 'package:vital_child/client/01_authorization/1_login/widgets/login_header.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
          child: Column(
            children: [
              // logo and title
              VcLoginHeader(),

              // form
              VcLoginForm(),
            ],
          )),
    );
  }
}
