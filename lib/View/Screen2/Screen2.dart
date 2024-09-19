import 'package:auxzonapp/View/Screen3/Screen3.dart';
import 'package:auxzonapp/main.dart';
import 'package:auxzonapp/utils/bottomsheet/bottomnav.dart';
import 'package:auxzonapp/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    List iconname = ["Rice", "Snacks", "Drinks", "More"];
    List icons = [
      CircleAvatar(
          backgroundColor: appredcolor.withOpacity(.3),
          child: Icon(Icons.rice_bowl)),
      CircleAvatar(
          backgroundColor: appredcolor.withOpacity(.3),
          child: Icon(Icons.local_drink_outlined)),
      CircleAvatar(
          backgroundColor: appredcolor.withOpacity(.3),
          child: Icon(Icons.no_drinks_rounded)),
      CircleAvatar(
          backgroundColor: appredcolor.withOpacity(.3),
          child: Icon(Icons.apps)),
    ];
    List topratedfoodname = ["Burger Beef 'anjaz'", "Cheese Meet Pizza"];
    List topratedfoodrating = ["4.9", "4.9"];
    List topratedfoodstore = ["Burger bos", "Pizza Store"];
    List topratedfoodprice = ["\$45.0", "\$45.0"];
    List topratedfoodimages = ["images/image-2.jpg", "images/image-7.jpg"];
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        bottomNavigationBar: BtmNav(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: MyApp.height * .48,
                  child: Stack(
                    children: [
                      Container(
                        height: MyApp.height * .48 - 27,
                        decoration: BoxDecoration(color: appredcolor),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Location",
                                      style: GoogleFonts.abel(
                                          color: appwhitecolor, fontSize: 15)),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: appwhitecolor,
                                        size: 15,
                                      ),
                                      Text("St,Abigael",
                                          style: GoogleFonts.acme(
                                              color: appwhitecolor,
                                              fontSize: 15)),
                                      Icon(
                                        Icons.arrow_drop_down_sharp,
                                        color: appwhitecolor,
                                        size: 15,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: MyApp.height * .01,
                                  ),
                                  Text("Promo Buy 1,",
                                      style: GoogleFonts.acme(
                                          color: appwhitecolor, fontSize: 25)),
                                  Text("Get 1 more!",
                                      style: GoogleFonts.acme(
                                          color: appwhitecolor, fontSize: 25)),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          minimumSize: Size(double.minPositive,
                                              MyApp.height * .05)),
                                      onPressed: () {},
                                      child: Text(
                                        "Order Now",
                                        style: GoogleFonts.acme(
                                            color: appredcolor, fontSize: 15),
                                      )),
                                  SizedBox(
                                    height: MyApp.height * .01,
                                  ),
                                  SizedBox(
                                    width: MyApp.width * .14,
                                    child: LinearProgressIndicator(
                                      color: appwhitecolor,
                                      backgroundColor:
                                          appwhitecolor.withOpacity(.5),
                                      value: .5,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Spacer(),
                            Image.asset("images/screen2.png")
                          ],
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  isDense: true,
                                  filled: true,
                                  fillColor: appwhitecolor,
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: appwhitecolor),
                                      borderRadius: BorderRadius.circular(35)),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    size: 20,
                                    color: appblackcolor.withOpacity(.5),
                                  ),
                                  hintText: "Search food , restaurant , etc . ",
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: appblackcolor.withOpacity(.5)),
                                      borderRadius: BorderRadius.circular(35))),
                            ),
                          ))
                    ],
                  )),
              Container(
                height: MyApp.height * .6,
                decoration: BoxDecoration(color: appwhitecolor),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        shrinkWrap: true,
                        itemCount: icons.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            childAspectRatio: 1 / 1.15,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                        itemBuilder: (context, index) {
                          return Container(
                            height: MyApp.height * .6,
                            padding: EdgeInsets.only(top: 10, bottom: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                    color: appblackcolor.withOpacity(.3))),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                icons[index],
                                Text(iconname[index],
                                    style: GoogleFonts.acme(
                                        color: appredcolor, fontSize: 10))
                              ],
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Top Rated Food",
                              style: GoogleFonts.acme(
                                  color: appblackcolor, fontSize: 20)),
                        ),
                      ),
                      GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        shrinkWrap: true,
                        itemCount: topratedfoodprice.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Get.to(() => ProductDeailssc(
                                    image: topratedfoodimages[index],
                                    name: topratedfoodname[index],
                                    store: topratedfoodstore[index],
                                    price: topratedfoodprice[index],
                                    rating: topratedfoodrating[index],
                                  ));
                              FocusScope.of(context).unfocus();
                            },
                            child: Container(
                              padding:
                                  EdgeInsets.only(top: 10, right: 5, left: 5),
                              height: MyApp.height * .6,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: appblackcolor.withOpacity(.3))),
                              child: Column(
                                children: [
                                  Container(
                                    height: MyApp.height * 0.17,
                                    width: double.maxFinite,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                topratedfoodimages[index])),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top: 5,
                                          left: 5,
                                          child: Container(
                                            height: MyApp.height * .025,
                                            width: MyApp.width * .08,
                                            decoration: BoxDecoration(
                                                color: appwhitecolor,
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Center(
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    color: appostarcolor,
                                                    size: 10,
                                                  ),
                                                  Text(
                                                    topratedfoodrating[index],
                                                    style:
                                                        TextStyle(fontSize: 10),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(topratedfoodname[index],
                                          style: GoogleFonts.acme(
                                              color: appblackcolor,
                                              fontSize: 15)),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(topratedfoodstore[index],
                                          style: GoogleFonts.acme(
                                              color:
                                                  appblackcolor.withOpacity(.5),
                                              fontSize: 15)),
                                      Text(topratedfoodprice[index],
                                          style: GoogleFonts.acme(
                                              color: appblackcolor,
                                              fontSize: 15))
                                    ],
                                  ),
                                  SizedBox(
                                    height: MyApp.height * .01,
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Restaurant near you",
                                style: GoogleFonts.acme(
                                    color: appblackcolor, fontSize: 20)),
                            Text("View all",
                                style: GoogleFonts.acme(
                                    color: appblackcolor.withOpacity(.5),
                                    fontSize: 15)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
