import 'package:flutter/material.dart';

import '../theme/theme.dart';

class forgetPassword extends StatelessWidget {
  static const String routeName ='forgetPassword';
  const forgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Forget Password",
          style: TextStyle(color: MyTheme.gold),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: MyTheme.gold,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Center(child: Image.asset('assets/images/ForgotPassword.png')),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: MyTheme.blackOne,
              ),
              child: TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(color: MyTheme.white),
                    prefixIcon: Icon(
                      Icons.email,
                      color: MyTheme.white,
                    ),
                    border:InputBorder.none,
                  )),
            ),
            SizedBox(height: 24,),
            ElevatedButton(
              onPressed: () {

              },
              style: ElevatedButton.styleFrom(fixedSize: Size(500,55),
                  padding: EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  backgroundColor: MyTheme.gold),
              child: Text("Verify Email", style: TextStyle(color: MyTheme.blackOne,fontSize: 20)),
            ),
        
          ],
        ),
      ),
    );
  }
}
