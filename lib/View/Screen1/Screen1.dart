import 'package:auxzonapp/main.dart';
import 'package:auxzonapp/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Screen2/Screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    print("MyApp.height : ${MyApp.height}");
    print("MyApp.width : ${MyApp.width}");
    final controller =
        PageController(viewportFraction: 0.8, keepPage: false, initialPage: 2);
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MyApp.width,
            height: MyApp.height,
            child: Stack(
              children: [
                Container(
                  width: MyApp.width,
                  height: MyApp.height * 0.57,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("images/image-3.jpg"),
                    fit: BoxFit.cover,
                  )),
                ),
                Positioned(
                  left: -MyApp.width * .6,
                  right: -MyApp.width * .6,
                  top: 0,
                  child: Container(
                    height: MyApp.height > 620
                        ? MyApp.height * 2
                        : MyApp.height * 2.25,
                    decoration: BoxDecoration(
                        color: appwhitecolor, shape: BoxShape.circle),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: SizedBox(
                    height: MyApp.height * .35,
                    width: MyApp.width,
                    child: Column(
                      children: [
                        Text(
                          "The Fastest In",
                          style: GoogleFonts.acme(
                              color: appblackcolor, fontSize: 20),
                        ),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: "Delivery ",
                              style: GoogleFonts.acme(
                                  color: appblackcolor, fontSize: 20),
                            ),
                            TextSpan(
                              text: "Food",
                              style: GoogleFonts.acme(
                                  color: appredcolor, fontSize: 20),
                            )
                          ]),
                        ),
                        SizedBox(
                          height: MyApp.height * .02,
                        ),
                        Text(
                          "Our joy is to filling your tummy with",
                          style: GoogleFonts.abel(
                              color: appblackcolor.withOpacity(.5),
                              fontSize: 15),
                        ),
                        Text(
                          "delicious food and fast delivery",
                          style: GoogleFonts.abel(
                              color: appblackcolor.withOpacity(.5),
                              fontSize: 15),
                        ),
                        SizedBox(
                          height: MyApp.height * .02,
                        ),
                        SmoothPageIndicator(
                          controller: controller,
                          count: 3,
                          effect: ExpandingDotsEffect(
                              dotHeight: MyApp.height * .015,
                              dotWidth: MyApp.height * .015,
                              activeDotColor: apporangecolor),
                        ),
                        SizedBox(
                          height: MyApp.height * .02,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: MyApp.width * .3,
                                    vertical: MyApp.height * .015),
                                backgroundColor: appredcolor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(35))),
                            onPressed: () {
                              Get.to(() => Screen2());
                            },
                            child: Text(
                              "Get Started",
                              style: GoogleFonts.acme(
                                  color: appwhitecolor, fontSize: 20),
                            )),
                        SizedBox(
                          height: MyApp.height * .02,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
