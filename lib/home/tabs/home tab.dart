import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mov/theme/theme.dart';

class home_tab extends StatefulWidget {
  home_tab({super.key});

  @override
  State<home_tab> createState() => _home_tabState();
}

class _home_tabState extends State<home_tab> {
  final List<String> imageList = [
    "assets/images/onboard1.png",
    "assets/images/onboard2.png",
    "assets/images/onboard3.png",
    "assets/images/onboard4.png",
    "assets/images/onboard5.png",
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 600, // ✅ تقليل ارتفاع الخلفية
              width: double.infinity,
              child: Column(
                children: [
                  Expanded( // ✅ هذا يمنع مشكلة الـ overflow
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 500, // ✅ جعل الحجم متناسق
                          width: double.infinity,
                          child: Image.asset(
                            imageList[_currentIndex],
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: 500,
                          color: Color.fromRGBO(18, 19, 18, .8),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 100), // ✅ تعديل الموضع
                          child: CarouselSlider(
                            options: CarouselOptions(
                              height: 300,
                              enableInfiniteScroll: true,
                              enlargeCenterPage: true,
                              scrollPhysics: BouncingScrollPhysics(),
                              viewportFraction: 0.6,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _currentIndex = index;
                                });
                              },
                            ),
                            items: imageList.map((imagePath) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  imagePath,
                                  fit: BoxFit.fill,
                                  width: 234,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/Available Now.png"),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 320),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/Watch Now.png"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Action ",
                    style: TextStyle(color: MyTheme.white),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text.rich(TextSpan(children: [
                      TextSpan(
                        text: "see more",
                        style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            decoration: TextDecoration.underline,
                            color: MyTheme.gold),
                      ),
                    ])),
                  ),
                ],
              ),
            ),
        SizedBox(
          height: 200, // تحديد ارتفاع للـ ListView
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imageList.length,
            physics: BouncingScrollPhysics(), // تفعيل التمرير بسلاسة
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0), // مسافة بين الصور
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20), // جعل الحواف مستديرة
                  child: Image.asset(
                    imageList[index],
                    fit: BoxFit.cover,
                    width: 140,
                    height: 200,
                  ),
                ),
              );
            },
          ),
        )

        ],
        ),
      ),
    );
  }
}
