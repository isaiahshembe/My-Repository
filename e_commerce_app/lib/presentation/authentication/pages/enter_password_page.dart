import 'package:e_commerce_app/common/helper/navigator/app_navigator.dart';
import 'package:e_commerce_app/common/widgets/appbar/app_bar.dart';
import 'package:e_commerce_app/common/widgets/button/basic_app_button.dart';
import 'package:e_commerce_app/presentation/authentication/pages/forgot_password_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class EnterPasswordPage extends StatelessWidget {
  const EnterPasswordPage({super.key});

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
              _passwordField(context),
              SizedBox(height: 20),
              _continueButton(context),
              SizedBox(height: 20),
              _forgotPassword(context),
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

  Widget _passwordField(BuildContext context) {
    return TextField(decoration: InputDecoration(hintText: 'Enter Password'));
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(onPressed: () {}, title: 'Continue');
  }

  Widget _forgotPassword(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: 'Forgot password?  '),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = () {
              AppNavigator.push(context, ForgotPasswordPage());
            },
            text: 'Reset',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
