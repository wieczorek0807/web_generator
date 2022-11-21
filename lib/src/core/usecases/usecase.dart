import 'package:dartz/dartz.dart';

import '../err/failures.dart';

abstract class UseCase<Type> {
  Future<Either<Failure, Type>> call();
}
