import 'package:dartz/dartz.dart';
import 'package:threads_project/core/error/failures.dart';
import 'package:threads_project/domain/entities/thread.dart';

abstract class ThreadRepository {
  Future<Either<Failure, List<Thread>>> getHome();
}
