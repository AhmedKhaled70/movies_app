 import 'package:flutter/material.dart';
import 'package:mov/home/home_screen.dart';
import 'package:mov/rsgister/register_screen.dart';
import 'package:mov/theme/theme.dart';

class loginscreen extends StatelessWidget {
  static const String routeName = "loginscreen";
   const loginscreen({super.key});

   @override
   Widget build(BuildContext context) {
     return  Scaffold(
       appBar: AppBar(),
       body: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 16),
         child: SingleChildScrollView(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: [
               Image.asset(
                 "assets/images/log1.png",
                 height: 150,
               ),
               SizedBox(
                 height: 24,
               ),
               Container(
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: MyTheme.blackOne,),
                 child: TextField(
                   decoration: InputDecoration(
                     labelText: "Email",
                     labelStyle: TextStyle(color: MyTheme.white),
                     prefixIcon: Icon(Icons.email,color:MyTheme.white ,),
                   )
                 ),
               ),
               SizedBox(
                 height: 24,
               ),
               Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: MyTheme.blackOne,),

                 child: TextField(
                   obscureText: true,
                   obscuringCharacter: "#",
                   style: Theme.of(context)
                       .textTheme
                       .titleSmall!
                       .copyWith(color: Theme.of(context).focusColor),
                   decoration: InputDecoration(
                     labelText: "Password",
                     labelStyle: TextStyle(color: MyTheme.white),
                     prefixIcon: Icon(Icons.lock,color:MyTheme.white),
                     suffixIcon: Icon(Icons.remove_red_eye_outlined,color:MyTheme.white),
                   ),
                 ),
               ),
               SizedBox(
                 height: 24,
               ),
               Text(
                 "Forget Password ?",
                 textAlign: TextAlign.end,
                 style: Theme.of(context)
                     .textTheme
                     .titleSmall!
                     .copyWith(color: Theme.of(context).primaryColor),
               ),
               SizedBox(
                 height: 24,
               ),
               ElevatedButton(
                 onPressed: () {   Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) =>  homescreen()),
                 );
                 },
                 style: ElevatedButton.styleFrom(
                     padding: EdgeInsets.symmetric(vertical: 12),
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(12)),
                     backgroundColor: Theme.of(context).primaryColor),
                 child: Text(
                   "Login",
                   style:TextStyle(color: MyTheme.blackOne)
                 ),
               ),
               SizedBox(
                 height: 24,
               ),
               InkWell(
                 onTap: () {  Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) =>  RegisterScreen()),
                 );     },
                 child: Text.rich(
                     textAlign: TextAlign.center,
                     TextSpan(children: [
                       TextSpan(
                           text: "Don’t Have Account ? ",
                           style:TextStyle(color:MyTheme.white),),
                       TextSpan(
                         onEnter: (event) {
                         },
                         text: "Create Account",
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
               SizedBox(
                 height: 24,
               ),
               Row(
                 children: [
                   Expanded(
                     child: Divider(
                       indent: 40,
                       endIndent: 10,
                       thickness: 1,
                       color: Theme.of(context).primaryColor,
                     ),
                   ),
                   Text(
                     "OR",
                     style:TextStyle(color: MyTheme.gold)
                   ),
                   Expanded(
                     child: Divider(
                       indent: 10,
                       thickness: 1,
                       endIndent: 40,
                       color:MyTheme.gold
                     ),
                   ),
                 ],
               ),SizedBox(height: 28,),
               ElevatedButton(
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
                         "Login With Google",
                         style:TextStyle(color: MyTheme.blackOne)
                     ),
                   ],
                 ),
               ),
             ],
           ),
         ),
       ),

     );;
   }
 }
