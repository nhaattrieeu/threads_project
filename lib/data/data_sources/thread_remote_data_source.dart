import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:threads_project/data/models/thread_model.dart';

abstract class ThreadRemoteDataSource {
  Future<List<ThreadModel>> getHome();
}

class ThreadRemoteDataSourceImpl implements ThreadRemoteDataSource {
  final db = FirebaseFirestore.instance;

  @override
  Future<List<ThreadModel>> getHome() async {
    final snapshot = await db.collection("threads").get();
    final data =
        snapshot.docs.map((e) => ThreadModel.fromJson(e.data())).toList();
    print(data);
    return data;
  }
}
