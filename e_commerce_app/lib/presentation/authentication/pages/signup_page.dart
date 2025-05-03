import 'package:e_commerce_app/common/helper/navigator/app_navigator.dart';
import 'package:e_commerce_app/common/widgets/appbar/app_bar.dart';
import 'package:e_commerce_app/common/widgets/button/basic_app_button.dart';
import 'package:e_commerce_app/presentation/authentication/pages/enter_password_page.dart';
import 'package:e_commerce_app/presentation/authentication/pages/signin_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: BasicAppbar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _signInText(context),

              SizedBox(height: 20),
              _firstNameField(context),
              SizedBox(height: 10),
              _lastNameField(context),
              SizedBox(height: 10),
              _emailField(context),
              SizedBox(height: 10),
              _passwordField(context),
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
      'Create Acccount.',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
    );
  }

  Widget _firstNameField(BuildContext context) {
    return TextField(decoration: InputDecoration(hintText: 'First name'));
  }

  Widget _lastNameField(BuildContext context) {
    return TextField(decoration: InputDecoration(hintText: 'Last name'));
  }

  Widget _emailField(BuildContext context) {
    return TextField(decoration: InputDecoration(hintText: 'Enter Email'));
  }

  Widget _passwordField(BuildContext context) {
    return TextField(decoration: InputDecoration(hintText: 'Password'));
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {
        AppNavigator.push(context, EnterPasswordPage());
      },
      title: 'Continue',
    );
  }

  Widget _createAccount(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: 'Already have an account?  '),
          TextSpan(
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    AppNavigator.pushReplacement(context, SigninPage());
                  },
            text: 'Sign in',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
