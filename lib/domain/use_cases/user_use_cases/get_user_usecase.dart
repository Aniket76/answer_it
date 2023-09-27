import 'package:answer_it/domain/entities/user_entity.dart';
import 'package:answer_it/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetUserUseCase {
  final UserRepository _userRepository;

  GetUserUseCase(this._userRepository);

  Future<UserEntity> getUser() {
    return _userRepository.getUser();
  }
}
