import 'package:dartz/dartz.dart';
import 'package:threads_project/core/error/exceptions.dart';
import 'package:threads_project/core/error/failures.dart';
import 'package:threads_project/data/data_sources/thread_remote_data_source.dart';
import 'package:threads_project/domain/entities/thread.dart';
import 'package:threads_project/domain/repositories/thread_repository.dart';

class ThreadRepositoryImpl implements ThreadRepository {
  final ThreadRemoteDataSource remoteDataSource;

  ThreadRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<Thread>>> getHome() async {
    try {
      return Right(await remoteDataSource.getHome());
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
