import 'package:flutter/material.dart';
import 'package:mov/forgetpass/forgetPassword.dart';
import 'package:mov/theme/theme.dart';

class update_profile extends StatelessWidget {
  static const String routeName = "update_profile";

  const update_profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pick Avatar",
            style: TextTheme.of(context)
                .displaySmall
                ?.copyWith(color: MyTheme.gold)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: MyTheme.gold),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 37),
                child: CircleAvatar(
                  radius: 65,
                  backgroundImage: AssetImage("assets/images/avatar1.png"),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: MyTheme.blackOne,
              ),
              child: TextField(
                  decoration: InputDecoration(
                labelText: "user name",
                labelStyle: TextTheme.of(context).displaySmall,
                prefixIcon: Icon(
                  Icons.perm_contact_calendar_rounded,
                  color: MyTheme.white,
                  size: 24,
                ),
                border: InputBorder.none,
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: MyTheme.blackOne,
              ),
              child: TextField(
                  decoration: InputDecoration(
                labelText: "phone number",
                labelStyle: TextTheme.of(context).displaySmall,
                prefixIcon: Icon(
                  Icons.call,
                  color: MyTheme.white,
                  size: 24,
                ),
                border: InputBorder.none,
              )),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => forgetPassword()),);

              },
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  onEnter: (event) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => forgetPassword()),);
                  },
                  text: " Reset Password",
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(decoration: TextDecoration.underline),
                ),
              ])),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 300),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    backgroundColor: MyTheme.red),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Delete Account",
                      style: TextTheme.of(context).displaySmall,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  backgroundColor: MyTheme.gold),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Update Data",
                      style: TextStyle(color: MyTheme.blackOne, fontSize: 18)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
