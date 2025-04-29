import 'package:e_commerce_app/core/configs/assets/app_vectors.dart';
import 'package:e_commerce_app/core/configs/themes/app_colors.dart';
import 'package:e_commerce_app/presentation/authentication/pages/signin_page.dart';
import 'package:e_commerce_app/presentation/splash_page/bloc/splash_cubit.dart';
import 'package:e_commerce_app/presentation/splash_page/bloc/splash_state.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_svg/flutter_svg.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is UnAuthenticated) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (c) => SigninPage()),
          );
        }
        ;
      },
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(child: SvgPicture.asset(AppVectors.appLogo)),
      ),
    );
  }
}
