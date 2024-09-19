import 'package:flutter/material.dart';

import 'bottomnav.dart';

class Profilesc extends StatelessWidget {
  const Profilesc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BtmNav(),
      body: Center(
        child: Text("Profile"),
      ),
    );
  }
}
