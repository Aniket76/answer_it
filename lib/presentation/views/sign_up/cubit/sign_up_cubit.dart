import 'dart:math';

import 'package:answer_it/data/models/user_model.dart';
import 'package:answer_it/domain/use_cases/user_use_cases/sign_up_usecase.dart';
import 'package:answer_it/domain/use_cases/user_use_cases/update_user_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_state.dart';
part 'sign_up_cubit.freezed.dart';

@injectable
class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this._signUpUseCase, this._updateUserUseCase)
      : super(const SignUpState.initial());

  final SignUpUseCase _signUpUseCase;
  final UpdateUserUseCase _updateUserUseCase;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController dobController = TextEditingController();

  Future<bool> createAccount() async {
    if (nameController.text.isEmpty) {
      emit(state.copyWith(nameError: 'Name can\'t be empty'));
    }

    if (emailController.text.isEmpty) {
      emit(state.copyWith(emailError: 'Email can\'t be empty'));
    }

    if (passwordController.text.isEmpty) {
      emit(state.copyWith(passwordError: 'Password can\'t be empty'));
    }

    if (dobController.text.isEmpty) {
      emit(state.copyWith(dobError: 'DOB can\'t be empty'));
    }

    if (emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        nameController.text.isNotEmpty &&
        dobController.text.isNotEmpty) {
      var isRegister = await _signUpUseCase.signUpWithEmailPassword(
          emailController.text, passwordController.text);

      if (isRegister) {
        return await _updateUserUseCase.updateUser(UserModel(
            name: nameController.text,
            email: emailController.text,
            dob: dobController.text));
      } else {
        debugPrint('Account not created');
        return false;
      }
    } else {
      debugPrint('Enter email or password');
      return false;
    }
  }
}
