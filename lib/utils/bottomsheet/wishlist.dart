import 'package:flutter/material.dart';

import 'bottomnav.dart';

class WishlstScreen extends StatelessWidget {
  const WishlstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BtmNav(),
      body: Center(
        child: Text("Wishlist"),
      ),
    );
  }
}
