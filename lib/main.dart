import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:mov/SplashScreen/SplashScreen.dart';
import 'package:mov/home/home_screen.dart';
import 'package:mov/login/login_screen.dart';
import 'package:mov/theme/theme.dart';

import 'rsgister/register_screen.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: loginscreen.routeName,
      theme: MyTheme.theme,
      routes: {
        SplashScreen.routeName:(_)=>SplashScreen(),
        homescreen.routeName: (context) => homescreen(),
        loginscreen.routeName: (context) => loginscreen(),
        RegisterScreen.routeName: (context) => RegisterScreen(),

      },
      home: AnimatedSplashScreen(
        splash: SplashScreen(),
        nextScreen: homescreen(),
        duration: 3000,
        splashIconSize: double.infinity,
      ),
    );
  }
}
