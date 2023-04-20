import 'package:box_shadow_generator/src/data/repositories/web_box_repository_impl.dart';
import 'package:dartz/dartz.dart';

import '../../core/err/failures.dart';
import '../../core/usecases/usecase.dart';
import '../entities/web_box_entity.dart';
import '../repositories/web_box_repository.dart';

class GetWebBoxUseCase implements UseCase<WebBoxEntity> {
  final WebBoxRepositoryImpl repository;

  GetWebBoxUseCase({required this.repository});

  @override
  Future<Either<Failure, WebBoxEntity>> call() async {
    return await repository.getWebBox();
  }
}
