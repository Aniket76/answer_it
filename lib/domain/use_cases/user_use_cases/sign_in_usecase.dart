import 'package:answer_it/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignInUseCase {
  final UserRepository _userRepository;

  SignInUseCase(this._userRepository);

  Future<String> signInWithEmailPassword(String emailAddress, String password) {
    return _userRepository.signInWithEmailPassword(emailAddress, password);
  }
}
