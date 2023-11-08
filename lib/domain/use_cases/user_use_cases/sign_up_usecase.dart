import 'package:answer_it/common/default_usecase/default_usecase.dart';
import 'package:answer_it/domain/repositories/user_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignUpUseCase
    extends DefaultUseCase<SignUpWithEmailInput, UserCredential> {
  final UserRepository _userRepository;

  SignUpUseCase(this._userRepository);

  @override
  Future<UserCredential> run(SignUpWithEmailInput input) {
    return _userRepository.signUpWithEmailPassword(
        input.emailAddress, input.password);
  }
}

class SignUpWithEmailInput {
  String emailAddress;
  String password;

  SignUpWithEmailInput(this.emailAddress, this.password);
}
