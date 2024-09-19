import 'package:auxzonapp/Controller/bottomsheetcontrol/BtmControl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bottomnav.dart';

class Cartsc extends StatelessWidget {
  const Cartsc({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        Get.find<BttmControl>().navigatetohome();
      },
      child: Scaffold(
        bottomNavigationBar: BtmNav(),
        body: Center(
          child: Text("Cart"),
        ),
      ),
    );
  }
}
