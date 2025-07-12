import 'package:flutter/material.dart';

import 'splash_screen.dart' show SplashScreen;




void main()=> runApp( MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
    home: SplashScreen(),

        );



  }
}
