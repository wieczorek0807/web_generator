import 'package:box_shadow_generator/src/domain/entities/web_box_entity.dart';
import 'package:dartz/dartz.dart';

import '../../core/err/failures.dart';

abstract class WebBoxRepository {
  Future<Either<Failure, WebBoxEntity>> getWebBox();
  Future<void> saveWebBox(WebBoxEntity webBox);
}
