import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:threads_project/core/app/bloc/app_cubit.dart';
import 'package:threads_project/core/config/config.dart';
import 'package:threads_project/core/router/routes.dart';
import 'package:threads_project/di/injection_container.dart';
import 'package:threads_project/presentation/home/pages/home_page.dart';

import '../../presentation/threads/cubit/threads_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
    ));
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AppCubit()),
        BlocProvider(create: (context) => ThreadsCubit(sl())),
      ],
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return MaterialApp(
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: state.locale,
            theme: ThemeData(
              pageTransitionsTheme: const PageTransitionsTheme(
                builders: {
                  TargetPlatform.android: CupertinoPageTransitionsBuilder()
                },
              ),
              colorScheme: const ColorScheme.light(
                primary: AppColors.black,
                secondary: AppColors.secondary,
                outline: AppColors.unselected,
                surface: AppColors.selected,
              ),
              primaryColor: AppColors.black,
              disabledColor: AppColors.black,
              scaffoldBackgroundColor: AppColors.white,
              dividerColor: AppColors.divider,
              cardColor: AppColors.card,
            ),
            routes: routes,
            home: const HomePage(),
          );
        },
      ),
    );
  }
}
