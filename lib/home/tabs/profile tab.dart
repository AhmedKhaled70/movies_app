import 'package:flutter/material.dart';
import 'package:mov/theme/theme.dart';

class profile_tab extends StatelessWidget {
  const profile_tab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: 390,
            color: Color(0xffbac212121),
            child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 52),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      CircleAvatar( radius: 50,
                        child: Image.asset("assets/images/avatar1.png",),),
                      SizedBox(height: 15,),
                      Text("John Safwat",style:TextTheme.of(context).displaySmall,)
                    ],
                  ),
                  Column(
                    children: [Text("12",style:TextTheme.of(context).displayLarge),
                      SizedBox(height: 28,),
                      Text("Wish List",style:TextTheme.of(context).displayMedium,),
                    ],
                  ),
                  Column(
                    children: [Text("10",style:TextTheme.of(context).displayLarge),
                      SizedBox(height: 28,),
                      Text("History",style:TextTheme.of(context).displayMedium,),
                    ],
                  )
                ],),),
              SizedBox(height: 23,),
              Row(
                children: [
                  Expanded(flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          backgroundColor: Theme.of(context).primaryColor),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              " Edit Profile",
                              style:TextStyle(color: MyTheme.blackOne)
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(flex: 1,
                    child: ElevatedButton(
                      onPressed: () {
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          backgroundColor: MyTheme.red),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              "Exit",
                              style:TextStyle(color: MyTheme.white)
                          ),Icon(Icons.exit_to_app,color: MyTheme.white,)
                        ],
                      ),
                    ),
                  ),
                ],
              ),


                 ] ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 165),
            child: Center(child: Image.asset("assets/images/popcorn.png")),
          ),

        ],
      ));
  }
}
