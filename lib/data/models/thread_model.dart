import 'package:threads_project/domain/entities/thread.dart';

class ThreadModel extends Thread {
  const ThreadModel({
    required super.threadId,
    required super.userId,
    required super.content,
  });

  factory ThreadModel.fromJson(Map<String, dynamic> json) {
    return ThreadModel(
      threadId: json["thread_id"],
      userId: json["user_id"],
      content: json["content"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "thread_id": threadId,
      "user_id": userId,
      "content": content,
    };
  }
}
