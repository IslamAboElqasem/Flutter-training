import 'package:flutter/material.dart';

class WellcomeScreen extends StatelessWidget {
  const WellcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF126CF6),
      body:SafeArea(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: double.infinity,height:200 ,),
              const Text('Wellcome to',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 40 ),),
              const SizedBox(width: double.infinity,height:20 ,),
              const Text('My Flutter Junior Training ',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 25 ),),
              const SizedBox(width: double.infinity,height:200 ,),
              Container(width: double.infinity,height: 50,padding:const EdgeInsets.all(5),child: ElevatedButton(onPressed:() => Navigator.pushNamed(context, '/TaskView'), child:const Text('Enter',) ))
            ],
          )
      )
    );
  }
}
