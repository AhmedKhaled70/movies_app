import 'package:flutter/material.dart';
import 'package:mov/login/login_screen.dart';
import 'package:mov/theme/theme.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = "RegisterScreen";

  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Register",
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
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Image.asset("assets/images/grouppeople.png"),
            SizedBox(
              height: 24,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: MyTheme.blackOne,
              ),
              child: TextField(
                  decoration: InputDecoration(
                labelText: "Name",
                labelStyle: TextStyle(color: MyTheme.white),
                prefixIcon: Icon(
                  Icons.email,
                  color: MyTheme.white,
                ),
                    border:InputBorder.none,
              )),
            ),
            SizedBox(
              height: 24,
            ),
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
            SizedBox(
              height: 24,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: MyTheme.blackOne,
              ),
              child: TextField(
                  decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(color: MyTheme.white),
                prefixIcon: Icon(
                  Icons.email,
                  color: MyTheme.white,
                ),
                    border:InputBorder.none,
              )),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: MyTheme.blackOne,
              ),
              child: TextField(
                  decoration: InputDecoration(
                labelText: "Confirm Password",
                labelStyle: TextStyle(color: MyTheme.white),
                prefixIcon: Icon(
                  Icons.email,
                  color: MyTheme.white,
                ),
                    border:InputBorder.none,
              )),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: MyTheme.blackOne,
              ),
              child: TextField(
                  decoration: InputDecoration(
                labelText: "Phone Number",
                labelStyle: TextStyle(color: MyTheme.white),
                prefixIcon: Icon(
                  Icons.email,
                  color: MyTheme.white,
                ),
                    border:InputBorder.none,
              )),
            ),
            SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(fixedSize: Size(500,55),
                  padding: EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  backgroundColor: MyTheme.gold),
              child: Text("Create Account", style: TextStyle(color: MyTheme.blackOne,fontSize: 20)),
            ),
            SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: () {  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  loginscreen()),
              );     },
              child: Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(children: [
                    TextSpan(
                      text: "Already Have Account ? ",
                      style:TextStyle(color:MyTheme.white),),
                    TextSpan(
                      onEnter: (event) {
                      },
                      text: " Login",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(
                          color: Theme.of(context).primaryColor,
                          fontSize: 18,
                          decoration: TextDecoration.underline),
                    ),
                  ])),
            ),
          ],
        ),
      ),
    );
  }
}
