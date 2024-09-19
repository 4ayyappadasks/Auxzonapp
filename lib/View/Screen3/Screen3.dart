import 'package:auxzonapp/Controller/Screen3Controller/Screen3con.dart';
import 'package:auxzonapp/main.dart';
import 'package:auxzonapp/utils/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import '../../utils/detailpagewidget.dart';
import '../Screen2/Screen2.dart';

class ProductDeailssc extends StatelessWidget {
  ProductDeailssc({
    super.key,
    required this.image,
    required this.name,
    required this.store,
    required this.price,
    required this.rating,
  });

  final image;
  final name;
  final store;
  final price;
  final rating;

  @override
  Widget build(BuildContext context) {
    var controlller = Get.put(Screen3cont());
    print("image${image}");
    String updatedPrice = price.replaceAll("\$", "").trim();
    return SafeArea(
      child: Scaffold(
        backgroundColor: appliteblackcolor,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => Screen2());
                    Get.delete<Screen3cont>();
                  },
                  child: Container(
                    height: MyApp.height * .05,
                    width: MyApp.height * .05,
                    decoration: BoxDecoration(
                        color: appwhitecolor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: appredcolor.withOpacity(.8),
                    ),
                  ),
                ),
                Container(
                  height: MyApp.height * .05,
                  width: MyApp.height * .05,
                  decoration: BoxDecoration(
                      color: appwhitecolor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.more_horiz,
                    color: appredcolor.withOpacity(.8),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: MyApp.width,
                      height: MyApp.height * .5,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(image), fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: MyApp.height * .02,
                    ),
                    Obx(
                      () => Container(
                        height: MyApp.height * 0.05,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: appredcolor),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                                onPressed: () {
                                  controlller.decreaseecount();
                                },
                                icon: Icon(
                                  CupertinoIcons.minus,
                                  color: appwhitecolor,
                                  size: 15,
                                )),
                            Text("${controlller.count.value}",
                                style: GoogleFonts.acme(
                                    color: appwhitecolor, fontSize: 15)),
                            IconButton(
                                onPressed: () {
                                  controlller.incresecount();
                                },
                                icon: Icon(
                                  CupertinoIcons.add,
                                  color: appwhitecolor,
                                  size: 15,
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MyApp.height * .02,
                    ),
                    ListTile(
                      title: Text(name),
                      subtitle: Text(store),
                      trailing: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "\$  ", style: TextStyle(color: appredcolor)),
                        TextSpan(
                            text: updatedPrice,
                            style: TextStyle(color: appblackcolor))
                      ])),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          iconname(icon: Icons.star, text: rating),
                          Spacer(),
                          iconname(
                              icon: Icons.local_fire_department, text: "150"),
                          Spacer(),
                          iconname(
                              icon: Icons.access_time_rounded,
                              text: "5 - 10 min")
                        ],
                      ),
                    ),
                    ReadMoreText(
                      "This Beef uses 100% quality beef with sliced tomatoes, cucumbers, vegetables, and onions. "
                      "It is cooked to perfection with a blend of spices that enhance the flavor. "
                      "Served with fresh lettuce and a side of sauce, it promises a delightful experience.",
                      trimLines: 3,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: ' Read more',
                      trimExpandedText: ' Show less',
                      lessStyle: TextStyle(color: appredcolor, fontSize: 14),
                      style: TextStyle(
                          color: appblackcolor.withOpacity(.5), fontSize: 16),
                      moreStyle: TextStyle(color: appredcolor, fontSize: 14),
                    ),
                    SizedBox(
                      height: MyApp.height * .02,
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: MyApp.width * .3,
                        vertical: MyApp.height * .015),
                    backgroundColor: appredcolor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35))),
                onPressed: () {},
                child: Text(
                  "Add to Cart",
                  style: GoogleFonts.acme(color: appwhitecolor, fontSize: 20),
                )),
            SizedBox(
              height: MyApp.height * .02,
            ),
          ],
        ),
      ),
    );
  }
}
