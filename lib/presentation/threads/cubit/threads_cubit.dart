import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:threads_project/domain/entities/thread.dart';
import 'package:threads_project/domain/use_cases/get_home_use_case.dart';

part 'threads_state.dart';

class ThreadsCubit extends Cubit<ThreadsState> {
  ThreadsCubit(this._getHomeUseCase)
      : super(const ThreadsState(status: Status.init, threads: []));

  final GetHomeUseCase _getHomeUseCase;

  Future<void> getHome() async {
    emit(state.copyWith(status: Status.loading));
    final failureOrData = await _getHomeUseCase();
    failureOrData.fold(
      (failure) => emit(state.copyWith(status: Status.error)),
      (data) => emit(state.copyWith(status: Status.success, threads: data)),
    );
  }
}
