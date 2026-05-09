import 'dart:async';
import 'package:flutter/material.dart';
import 'main.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();
    Timer(
      const Duration(seconds: 3),
        () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const MyHomePage(title: "Splash Screen",))),

    );
  }

@override

Widget build(BuildContext context) => const Scaffold(
  backgroundColor: Colors.red,
  body: Center(
    child: Text("Splash Screen" ,style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
  )

);
}