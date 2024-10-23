import 'package:equatable/equatable.dart';

class Thread extends Equatable {
  final String threadId;
  final String userId;
  final String content;

  const Thread({
    required this.threadId,
    required this.userId,
    required this.content,
  });

  @override
  List<Object> get props => [threadId, userId, content];
}
