import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:time_management/database/time_database.dart';
import 'package:time_management/router/router.dart';

void main() {
  final database = LocalDataBase();
  GetIt.I.registerSingleton<LocalDataBase>(database);
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return ScreenUtilInit(
      designSize: const Size(395, 852),
      builder: (BuildContext context, child) {
        return MaterialApp.router(
          theme: ThemeData(
            fontFamily: 'TAEBAEK',
          ),
          routerDelegate: router.routerDelegate,
          routeInformationParser: router.routeInformationParser,
          routeInformationProvider: router.routeInformationProvider,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
