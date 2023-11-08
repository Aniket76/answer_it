import 'package:answer_it/common/default_usecase/default_usecase.dart';
import 'package:answer_it/domain/entities/user_entity.dart';
import 'package:answer_it/domain/repositories/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetUserUseCase extends DefaultUseCase<void, UserEntity> {
  final UserRepository _userRepository;

  GetUserUseCase(this._userRepository);

  @override
  Future<UserEntity> run(void input) {
    return _userRepository.getUser();
  }
}
