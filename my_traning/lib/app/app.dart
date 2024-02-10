import 'package:flutter/material.dart';
import 'package:my_traning/app/routes.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter App',
      theme: ThemeData(primarySwatch: Colors.orange),
      initialRoute: '/WellcomeScreen',
      routes: routes,
    );
  }
}
