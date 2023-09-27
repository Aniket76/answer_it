import 'package:answer_it/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignOutUseCase {
  final UserRepository _userRepository;

  SignOutUseCase(this._userRepository);

  Future<bool> signOut() {
    return _userRepository.signOut();
  }
}
