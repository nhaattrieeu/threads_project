import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:threads_project/di/injection_container.dart';

import 'core/app/app.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await init();
  runApp(const MyApp());
}
