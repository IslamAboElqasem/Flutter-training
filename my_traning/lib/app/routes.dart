import 'package:flutter/material.dart';
import 'package:my_traning/presentation/tasks_view/pages/counter_screen.dart';
import 'package:my_traning/presentation/tasks_view/tasks_view.dart';
import 'package:my_traning/presentation/wellcome_screen.dart';

Map<String,WidgetBuilder> routes ={
'/TaskView':(context) => TasksView(),
'/WellcomeScreen':(context) =>const WellcomeScreen(),
'/Counter':(context) =>const CounterScreen(),
};