import 'package:threads_project/data/data_sources/thread_remote_data_source.dart';
import 'package:threads_project/data/repositories/thread_repository_impl.dart';
import 'package:threads_project/domain/repositories/thread_repository.dart';
import 'package:threads_project/domain/use_cases/get_home_use_case.dart';

import '../presentation/threads/cubit/threads_cubit.dart';
import 'injection_container.dart';

void registerThreadFeature() {
  //cubit
  sl.registerFactory<ThreadsCubit>(() => ThreadsCubit(sl()));

  //use case
  sl.registerLazySingleton<GetHomeUseCase>(
      () => GetHomeUseCase(repository: sl()));

  //repository
  sl.registerLazySingleton<ThreadRepository>(
      () => ThreadRepositoryImpl(remoteDataSource: sl()));

  //data source
  sl.registerLazySingleton<ThreadRemoteDataSource>(
      () => ThreadRemoteDataSourceImpl());
}
