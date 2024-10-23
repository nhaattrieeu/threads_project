import 'package:get_it/get_it.dart';
import 'package:threads_project/di/thread.dart';

final sl = GetIt.instance;

Future<void> init() async {
  registerThreadFeature();
}
