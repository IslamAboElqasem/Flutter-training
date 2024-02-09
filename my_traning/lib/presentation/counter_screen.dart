import 'package:flutter/material.dart';
import 'package:my_traning/presentation/counter_logic.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Counter App',style: TextStyle(fontWeight: FontWeight.bold)),
        shadowColor: Colors.black,
        elevation:3 ,
        centerTitle: true ,
      ),
      body: Center(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildElevatedButton(sign: '+'),
            Text(CounterLogic.counter.toString(),style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
            _buildElevatedButton(sign: '-'),
          ],
        ),
      ),
    );
  }
  ElevatedButton _buildElevatedButton({required String sign}){
    return ElevatedButton(onPressed: () => setState(()=>CounterLogic.counterStatus(sign: sign)), child:Text(sign,style:const TextStyle(fontWeight: FontWeight.bold,color: Colors.black),));
}
}
