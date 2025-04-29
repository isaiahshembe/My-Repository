import 'package:e_commerce_app/presentation/splash_page/bloc/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(DisplaySplashScreen());
  void appStarted() async {
    await Future.delayed(Duration(seconds: 2));
    emit(UnAuthenticated());
  }
}
