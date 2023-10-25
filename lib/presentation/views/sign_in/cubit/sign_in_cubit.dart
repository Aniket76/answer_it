import 'package:answer_it/common/data_resource/data_resource.dart';
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

  Future<void> signInUser() async {
    emit(state.copyWith(signInResource: const DataResource.loading()));
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      _signInUseCase.invoke(
        callback: (resource) {
          emit(state.copyWith(signInResource: resource));
          // if (resource.isSuccess()) {
          //   // NavigationManager.gotoOtpScreen(phoneNumber, resource.data);
          // }
        },
        input:
            SignInWithEmailInput(emailController.text, passwordController.text),
      );

      // return isSignedIn;
    } else {
      debugPrint('Enter email or password');
      emit(state.copyWith(signInResource: const DataResource.initial()));
      // return 'Something went wrong';
    }
  }
}
