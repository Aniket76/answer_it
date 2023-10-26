import 'package:answer_it/common/default_usecase/default_usecase.dart';
import 'package:answer_it/domain/repositories/user_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignInUseCase
    extends DefaultUseCase<SignInWithEmailInput, UserCredential> {
  final UserRepository _userRepository;

  SignInUseCase(this._userRepository);

  // Future<String> signInWithEmailPassword(String emailAddress, String password) {
  //   return _userRepository.signInWithEmailPassword(emailAddress, password);
  // }

  @override
  Future<UserCredential> run(SignInWithEmailInput input) {
    return _userRepository.signInWithEmailPassword(
        input.emailAddress, input.password);
  }
}

class SignInWithEmailInput {
  String emailAddress;
  String password;

  SignInWithEmailInput(this.emailAddress, this.password);
}
