import 'package:box_shadow_generator/src/data/models/web_box_model.dart';
import 'package:dartz/dartz.dart';

import '../../core/err/failures.dart';
import '../../domain/entities/web_box_entity.dart';
import '../../domain/repositories/web_box_repository.dart';
import '../datasources/web_box_local_data_source.dart';

class WebBoxRepositoryImpl implements WebBoxRepository {
  final WebBoxLocalDataSource webBoxLocalDataSource;

  WebBoxRepositoryImpl({required this.webBoxLocalDataSource});

  @override
  Future<Either<Failure, WebBoxEntity>> getWebBox() async {
    //? Jak zrobić z try on
    // try {
    final localWebBox = await webBoxLocalDataSource.getShadow();
    return Right(WebBoxEntity.fromModel(model: localWebBox));
    // } on Exception catch (e) {}
  }

  @override
  Future<void> saveWebBox(WebBoxEntity webBox) async {
    await webBoxLocalDataSource.saveShadow(WebBoxModel(
        offsetDx: webBox.offsetDx,
        offsetDy: webBox.offsetDy,
        spreadRadius: webBox.spreadRadius,
        blurRadius: webBox.blurRadius,
        shadowColor: webBox.shadowColor,
        animatedBoxColor: webBox.animatedBoxColor));
  }
}
