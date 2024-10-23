import 'package:dartz/dartz.dart';
import 'package:threads_project/core/error/failures.dart';
import 'package:threads_project/core/use_cases/use_case.dart';
import 'package:threads_project/domain/entities/thread.dart';
import 'package:threads_project/domain/repositories/thread_repository.dart';

class GetHomeUseCase implements UseCaseWithoutParams<List<Thread>> {
  final ThreadRepository repository;

  GetHomeUseCase({required this.repository});

  @override
  Future<Either<Failure, List<Thread>>> call() async {
    return await repository.getHome();
  }
}
