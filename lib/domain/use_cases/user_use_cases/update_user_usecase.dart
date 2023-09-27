import 'package:answer_it/data/models/user_model.dart';
import 'package:answer_it/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateUserUseCase {
  final UserRepository _userRepository;

  UpdateUserUseCase(this._userRepository);

  Future<bool> updateUser(UserModel input) {
    return _userRepository.updateUser(input);
  }
}
