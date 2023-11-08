import 'package:answer_it/common/default_usecase/default_usecase.dart';
import 'package:answer_it/data/models/user_model.dart';
import 'package:answer_it/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateUserUseCase extends DefaultUseCase<UserModel, void> {
  final UserRepository _userRepository;

  UpdateUserUseCase(this._userRepository);

  @override
  Future<void> run(UserModel input) {
    return _userRepository.updateUser(input);
  }
}
