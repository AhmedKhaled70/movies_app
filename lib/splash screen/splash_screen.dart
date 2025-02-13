import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'splash screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body:  Stack(
          children: [
            Center(
              child: Image.asset('assets/images/log1.png'),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom:70),
                child: Text(' Movie App ',
                    style: TextStyle(
                        color: Color(0xffF6BD00),
                        fontSize: 30
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Text(' Supervised by Ahmed khaled',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    )),
              ),
            ),
          ],
        ));
  }
}