import 'package:flutter/material.dart';
import 'package:mov/home/home_screen.dart';
import 'package:mov/login/login_screen.dart';
import 'package:mov/onboarding_screen.dart';
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
      initialRoute:OnboardingScreen.routeName,
      theme: MyTheme.theme,
      routes: {
        OnboardingScreen.routeName: (context) => OnboardingScreen(),
        homescreen.routeName: (context) => homescreen(),
        loginscreen.routeName: (context) => loginscreen(),
        RegisterScreen.routeName: (context) => RegisterScreen(),

      },
    );
  }
}
