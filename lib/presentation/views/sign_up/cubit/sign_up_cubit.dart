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

  void createAccount() async {
    if (emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        nameController.text.isNotEmpty &&
        dobController.text.isNotEmpty) {
      var isRegister = await _signUpUseCase.signUpWithEmailPassword(
          emailController.text, passwordController.text);

      if (isRegister) {
        await _updateUserUseCase.updateUser(UserModel(
            name: nameController.text,
            email: emailController.text,
            dob: dobController.text));
      }
    } else {
      debugPrint('Enter email or password');
    }
  }
}
