import 'package:flutter/material.dart';
import 'package:movies_app/movie_list.dart';
import 'package:movies_app/router.gr.dart';
import 'package:provider/provider.dart';
// import 'package:movies_app/movie_widget.dart';

void main() => runApp(Provider(
      create: (_) => MovieList(),
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Movies App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
    );
  }
}
