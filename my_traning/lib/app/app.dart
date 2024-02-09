

import 'package:flutter/material.dart';
import 'package:my_traning/presentation/counter_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter App',
      theme: ThemeData(primarySwatch: Colors.orange),
      home:const CounterScreen(),
    );
  }
}
