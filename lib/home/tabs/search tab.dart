import 'package:flutter/material.dart';
import 'package:mov/theme/theme.dart';

class search_tab extends StatelessWidget {
  const search_tab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [ Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: MyTheme.blackOne,),
        child: TextField(
            decoration: InputDecoration(
              labelText: " Search",
              labelStyle: TextTheme.of(context).displaySmall,
              prefixIcon:  Icon(Icons.search,color: MyTheme.white,size: 24,),
              border:InputBorder.none,
            )
        ),
      ),
        Expanded(child: Center(child: Image.asset("assets/images/popcorn.png"))),
      ],
    ),);
  }
}
