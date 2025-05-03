import 'package:e_commerce_app/common/helper/navigator/app_navigator.dart';
import 'package:e_commerce_app/common/widgets/appbar/app_bar.dart';
import 'package:e_commerce_app/common/widgets/button/basic_app_button.dart';
import 'package:e_commerce_app/presentation/authentication/pages/enter_password_page.dart';
import 'package:e_commerce_app/presentation/authentication/pages/signup_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: BasicAppbar(
          hideBack: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _signInText(context),

              SizedBox(height: 20),
              _emailField(context),
              SizedBox(height: 20),
              _continueButton(context),
              SizedBox(height: 20),
              _createAccount(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _signInText(BuildContext context) {
    return Text(
      'Sign In.',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(decoration: InputDecoration(hintText: 'Enter Email'));
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(onPressed: () {
AppNavigator.push(context, EnterPasswordPage());
    }, title: 'Continue');
  }

  Widget _createAccount(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: 'Do not have an account?  '),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = () {
              AppNavigator.push(context, SignupPage());
            },
            text: 'Create one',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
