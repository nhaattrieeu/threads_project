import 'package:flutter/material.dart';
import 'package:threads_project/presentation/home/pages/home_page.dart';
import 'package:threads_project/presentation/threads/pages/threads_page.dart';

final Map<String, WidgetBuilder> routes = {
  HomePage.routeName: (context) => const HomePage(),
  ThreadsPage.routeName: (context) => const ThreadsPage(),
};
