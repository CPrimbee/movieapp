import 'package:flutter/material.dart';
import 'package:micro_core/micro_core.dart';
import 'package:movie/micro_app_movie_resolver.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget with BaseApp {
  MyApp({Key? key}) : super(key: key) {
    super.registerInjections();
    super.registerRouters();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MovieApp',
      theme: ThemeData.dark(),
      navigatorKey: navigatorKey,
      onGenerateRoute: super.generateRoute,
      initialRoute: '/home',
    );
  }

  @override
  Map<String, WidgetBuilderArgs> get baseRoutes => {};

  @override
  List<MicroApp> get microApps => [
        MicroAppMovieResolver(),
      ];
}
