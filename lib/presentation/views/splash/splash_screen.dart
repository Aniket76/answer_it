import 'package:answer_it/common/injection.dart';
import 'package:answer_it/presentation/manager/route_manager.dart';
import 'package:answer_it/presentation/views/splash/cubit/splash_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  var cubit = getIt<SplashCubit>();

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
        child: Container(
          color: Colors.amber,
          height: double.infinity,
          width: double.infinity,
          child: const Center(
              child: Text(
            'Welcome',
            style: TextStyle(fontSize: 32),
          )),
        ),
      )),
    );
  }
}
