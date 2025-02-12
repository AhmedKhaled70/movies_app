
import 'package:flutter/material.dart';
import 'package:mov/home/home_screen.dart';
import 'package:mov/login/login_screen.dart';
import 'package:mov/theme/theme.dart';

class OnboardingScreen extends StatefulWidget {
  static const String routeName = "OnboardingScreen";
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  final List<Map<String, String>> onboardingData = [
    {
      "image": "assets/images/onboard1.png",
      "title": "Discover Movies",
      "description": "Explore a vast collection of movies in all qualities and genres. Find your next favorite film with ease."
    },
    {
      "image": "assets/images/onboard2.png",
      "title": "Explore All Genres",
      "description": "Discover movies from every genre, in all available qualities. Find something new and exciting to watch every day."},
    {
      "image": "assets/images/onboard3.png",
      "title": "Create Watchlists",
      "description": "Save movies to your watchlist to keep track of what you want to watch next. Enjoy films in various qualities and genres."
    },
    {
      "image": "assets/images/onboard4.png",
      "title": "Rate, Review, and Learn",
      "description": " Share your thoughts on the movies you've watched. Dive deep into film details and help others discover great movies with your reviews."},
    {
      "image": "assets/images/onboard5.png",
      "title": "Start Watching Now",
      "description":""
    }
  ];

  void _nextPage() {
    if (_currentIndex < onboardingData.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {

      Navigator.pushNamed(context, loginscreen.routeName);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
        controller: _pageController,
        onPageChanged: (index) {
      setState(() {
        _currentIndex = index;
      });
    },
    itemCount: onboardingData.length,
    itemBuilder: (context, index) {
    return Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage(onboardingData[index]["image"]!),
    fit: BoxFit.fill,
    ),
    ),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
    Container(
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
    color: Colors.black,
    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    child: Column(
    children: [
    Text(
    onboardingData[index]["title"]!,
    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
    textAlign: TextAlign.center,
    ),
    SizedBox(height: 10),
    Text(
    onboardingData[index]["description"]!,
    style: TextStyle(fontSize: 20, color: Colors.white70),
    textAlign: TextAlign.center,
    ),
    SizedBox(height: 20),
      ElevatedButton(
        onPressed: _nextPage,
        child: Text(_currentIndex == onboardingData.length - 1 ? "Finish" : "Next",style: TextStyle(fontSize: 20),),
        style:ElevatedButton.styleFrom(fixedSize: Size(394, 50),
          backgroundColor: MyTheme.gold,
          foregroundColor:  MyTheme.backGroundColor,
        ),
      ),
      SizedBox(height: 16,),
      if (_currentIndex > 0 && _currentIndex < onboardingData.length - 1)
        TextButton(
      onPressed: () {
        _pageController.previousPage(
            duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
      },
      style:  TextButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 180),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: MyTheme.gold, width: 2),
        ),
      ),

      child: Text("Back", style: TextStyle(color: Colors.white,fontSize: 15)),
    ),


    ],
    ),
    ),
    ],
    ),
    );
    },
    )
    );
  }
}