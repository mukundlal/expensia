import 'dart:async';

import 'package:flutter/material.dart';

import 'home_screen.dart';

class SpashScreen extends StatefulWidget {
  const SpashScreen({Key? key}) : super(key: key);

  @override
  State<SpashScreen> createState() => _SpashScreenState();
}

class _SpashScreenState extends State<SpashScreen> {

  @override
  void initState() {

    super.initState();

    Timer(const Duration(seconds: 1), (){
              ()=>Navigator.pushReplacement(context,
              MaterialPageRoute(builder:
                  (context) =>
                  const HomeScreen())

      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color(0xFF577D8B),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/logo.png',width: 100,height: 100,),
              const Text('Expensia',style: TextStyle(fontSize: 24),)
            ],
          ),
        ),
      ),
    );
  }
}



