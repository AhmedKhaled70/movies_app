import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:mov/forgetpass/forgetPassword.dart';
import 'package:mov/home/home_screen.dart';
import 'package:mov/login/login_screen.dart';
import 'package:mov/onboarding_screen.dart';
import 'package:mov/theme/theme.dart';

import 'home/tabs/profile tab/update profile.dart';
import 'rsgister/register_screen.dart';
import 'splash screen/splash_screen.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute:OnboardingScreen.routeName,
      theme: MyTheme.theme,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        OnboardingScreen.routeName: (context) => OnboardingScreen(),
        homescreen.routeName: (context) => homescreen(),
        loginscreen.routeName: (context) => loginscreen(),
        RegisterScreen.routeName: (context) => RegisterScreen(),
        update_profile.routeName: (context) => update_profile(),
        forgetPassword.routeName:(context)=>forgetPassword(),

      },
      home: AnimatedSplashScreen(
        splash: SplashScreen(),
        nextScreen: OnboardingScreen(),
        duration: 3000,
        splashIconSize: double.infinity,
      ),
    );
  }
}
