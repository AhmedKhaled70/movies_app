import 'package:flutter/material.dart';
import 'package:mov/theme/theme.dart';

class home_tab extends StatelessWidget {
  const home_tab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: Image.asset("assets/images/Available Now.png")),
        ],
      ),
    );
  }
}
