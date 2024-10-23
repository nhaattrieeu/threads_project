part of 'threads_cubit.dart';

enum Status { init, loading, success, error }

class ThreadsState extends Equatable {
  final Status status;
  final List<Thread> threads;

  const ThreadsState({required this.status, required this.threads});

  ThreadsState copyWith({
    Status? status,
    List<Thread>? threads,
  }) {
    return ThreadsState(
      status: status ?? this.status,
      threads: threads ?? this.threads,
    );
  }

  @override
  List<Object> get props => [status, threads];
}
