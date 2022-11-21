import 'package:box_shadow_generator/src/data/datasources/web_box_local_data_source.dart';
import 'package:box_shadow_generator/src/domain/entities/web_box_entity.dart';
import 'package:box_shadow_generator/src/core/err/failures.dart';
import 'package:box_shadow_generator/src/domain/repositories/web_box_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';

import '../datasources/local_storage_data_source.dart';

class WebBoxRepositoryImpl implements WebBoxRepository {
  final WebBoxLocalDataSource webBoxLocalDataSource;

  WebBoxRepositoryImpl({required this.webBoxLocalDataSource});

  @override
  Future<Either<Failure, WebBoxEntity>> getWebBox() async {
    try {
      final localWebBox = await webBoxLocalDataSource.getShadow();

      return Right(WebBoxEntity(
          offsetDx: 1,
          offsetDy: 1,
          spreadRadius: 1,
          blurRadius: 1,
          shadowColor: 1,
          animatedBoxColor: 1));
    } on Exception catch (e) {}
  }
}
