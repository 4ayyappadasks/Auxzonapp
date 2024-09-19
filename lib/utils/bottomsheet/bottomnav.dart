import 'package:auxzonapp/Controller/bottomsheetcontrol/BtmControl.dart';
import 'package:auxzonapp/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BtmNav extends StatelessWidget {
  const BtmNav({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(BttmControl());
    return Obx(
      () {
        return Material(
          elevation: 5,
          child: Container(
            decoration: BoxDecoration(
                color: appwhitecolor,
                boxShadow: [BoxShadow(color: appblackcolor.withOpacity(.5))]),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: controller.search.value
                      ? appredcolor.withOpacity(.5)
                      : appwhitecolor,
                  child: IconButton(
                      onPressed: () {
                        controller.navigatetosearch();
                      },
                      icon: Icon(Icons.search)),
                ),
                CircleAvatar(
                  backgroundColor: controller.wishlist.value
                      ? appredcolor.withOpacity(.5)
                      : appwhitecolor,
                  child: IconButton(
                      onPressed: () {
                        controller.navigatetowishlist();
                      },
                      icon: Icon(Icons.favorite)),
                ),
                CircleAvatar(
                  backgroundColor: controller.home.value
                      ? appredcolor.withOpacity(.5)
                      : appwhitecolor,
                  child: IconButton(
                      onPressed: () {
                        controller.navigatetohome();
                      },
                      icon: Icon(Icons.home_filled)),
                ),
                CircleAvatar(
                  backgroundColor: controller.cart.value
                      ? appredcolor.withOpacity(.5)
                      : appwhitecolor,
                  child: IconButton(
                      onPressed: () {
                        controller.navigatetocart();
                      },
                      icon: Icon(Icons.add_shopping_cart)),
                ),
                CircleAvatar(
                  backgroundColor: controller.profile.value
                      ? appredcolor.withOpacity(.5)
                      : appwhitecolor,
                  child: IconButton(
                      onPressed: () {
                        controller.navigatetoprofile();
                      },
                      icon: Icon(Icons.person)),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
