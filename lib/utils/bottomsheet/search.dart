import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controller/bottomsheetcontrol/BtmControl.dart';
import 'bottomnav.dart';

class Searchsc extends StatelessWidget {
  const Searchsc({super.key});

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
          child: Text("Search"),
        ),
      ),
    );
  }
}
