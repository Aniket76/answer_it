import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

@injectable
class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState.initial());

  void isUserLoggedIn() async {
    var user = FirebaseAuth.instance.currentUser;
    await Future.delayed(const Duration(seconds: 3));
    emit(state.copyWith(isUserLoggedIn: user != null));
    // if (user != null) {
    //   Navigator.of(context)
    //       .pushNamedAndRemoveUntil(MobileRoutes.homeRoute, (route) => false);
    // } else {
    //   Navigator.of(context)
    //       .pushNamedAndRemoveUntil(MobileRoutes.initialRoute, (route) => false);
    // }
  }
}
