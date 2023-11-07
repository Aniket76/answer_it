import 'package:answer_it/common/injection/injection.dart';
import 'package:answer_it/presentation/manager/json_manager.dart';
import 'package:answer_it/presentation/manager/route_manager.dart';
import 'package:answer_it/presentation/views/splash/cubit/splash_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final cubit = getIt<SplashCubit>();

  @override
  Widget build(BuildContext context) {
    // cubit.isUserLoggedIn(context);
    return BlocProvider(
      create: (context) {
        cubit.isUserLoggedIn();
        return cubit;
      },
      lazy: false,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 24, 66),
        body: BlocListener<SplashCubit, SplashState>(
          listener: (context, state) {
            if (state.isUserLoggedIn) {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  MobileRoutes.homeRoute, (route) => false);
            } else {
              debugPrint('Else Block');
              Navigator.of(context).pushNamedAndRemoveUntil(
                  MobileRoutes.loginRoute, (route) => false);
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.asset(
                JsonManager.welcomeLottieJson,
              ),
              const Text(
                'Hello, there',
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
