import 'package:flutter/material.dart';

import 'bottomnav.dart';

class Cartsc extends StatelessWidget {
  const Cartsc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BtmNav(),
      body: Center(
        child: Text("Cart"),
      ),
    );
  }
}
