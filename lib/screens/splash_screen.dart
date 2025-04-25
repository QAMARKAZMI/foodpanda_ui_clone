import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodpanda_ui_clone/screens/location_access_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> LocationAccessScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF2BB5),
      body: Center(
        child: Image.asset("assets/logo.png", scale: 3,),
      ),
    );
  }
}