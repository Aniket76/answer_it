import 'package:answer_it/common/default_usecase/default_usecase.dart';
import 'package:answer_it/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignOutUseCase extends DefaultUseCase<void, void> {
  final UserRepository _userRepository;

  SignOutUseCase(this._userRepository);

  @override
  Future<void> run(void input) {
    return _userRepository.signOut();
  }
}
