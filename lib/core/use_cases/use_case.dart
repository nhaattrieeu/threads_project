import 'package:dartz/dartz.dart';
import 'package:threads_project/core/error/failures.dart';

abstract class UseCaseWithParams<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

abstract class UseCaseWithoutParams<Type> {
  Future<Either<Failure, Type>> call();
}
