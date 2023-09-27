import 'package:answer_it/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignUpUseCase {
  final UserRepository _userRepository;

  SignUpUseCase(this._userRepository);

  Future<bool> signUpWithEmailPassword(String emailAddress, String password) {
    return _userRepository.signUpWithEmailPassword(emailAddress, password);
  }
}
