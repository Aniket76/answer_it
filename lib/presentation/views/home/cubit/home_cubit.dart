import 'package:answer_it/domain/use_cases/user_use_cases/sign_out_usecase.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final SignOutUseCase _signOutUseCase;

  HomeCubit(this._signOutUseCase) : super(const HomeState.initial());

  void signOut() async {
    var signedOut = await _signOutUseCase.signOut();
    emit(state.copyWith(isUserLoggedIn: !signedOut));
  }
}
