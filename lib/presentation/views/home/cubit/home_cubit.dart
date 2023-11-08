import 'package:answer_it/common/data_resource/data_resource.dart';
import 'package:answer_it/domain/entities/user_entity.dart';
import 'package:answer_it/domain/use_cases/user_use_cases/get_user_usecase.dart';
import 'package:answer_it/domain/use_cases/user_use_cases/sign_out_usecase.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final SignOutUseCase _signOutUseCase;
  final GetUserUseCase _getUserUseCase;

  HomeCubit(
    this._signOutUseCase,
    this._getUserUseCase,
  ) : super(const HomeState.initial());

  Future<void> signOut() async {
    await _signOutUseCase
        .invoke(
      input: null,
    )
        .then((value) {
      emit(state.copyWith(
        isUserLoggedIn: FirebaseAuth.instance.currentUser != null,
      ));
    });
  }

  void onTabTapped(int index) {
    emit(state.copyWith(currentBottomNavigationIndex: index));
    // if (index == 0) {
    //   emit(state.copyWith(screenName: 'Chat Screen'));
    // } else if (index == 1) {
    //   emit(state.copyWith(screenName: 'Request Screen'));
    // } else {
    //   emit(state.copyWith(screenName: 'Profile Screen'));
    // }

    switch (index) {
      case 0:
        emit(state.copyWith(screenName: 'Chat Screen'));
      case 1:
        emit(state.copyWith(screenName: 'Request Screen'));
      case 2:
        emit(state.copyWith(screenName: 'Profile Screen'));
      default:
        emit(state.copyWith(screenName: 'Answer It'));
    }
  }

  Future<void> signInUser() async {
    emit(state.copyWith(userResponse: const DataResource.loading()));
    await _getUserUseCase.invoke(
        callback: (resource) {
          emit(state.copyWith(userResponse: resource));
        },
        input: null);
  }
}
