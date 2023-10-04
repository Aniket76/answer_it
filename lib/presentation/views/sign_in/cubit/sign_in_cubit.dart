import 'package:answer_it/domain/use_cases/user_use_cases/sign_in_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_state.dart';
part 'sign_in_cubit.freezed.dart';

@injectable
class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this._signInUseCase) : super(const SignInState.initial());

  final SignInUseCase _signInUseCase;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<bool> signInUser() async {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      var isSignedIn = await _signInUseCase.signInWithEmailPassword(
          emailController.text, passwordController.text);

      return isSignedIn;
    } else {
      debugPrint('Enter email or password');
      return false;
    }
  }
}
