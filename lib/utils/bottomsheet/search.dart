import 'package:flutter/material.dart';

import 'bottomnav.dart';

class Searchsc extends StatelessWidget {
  const Searchsc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BtmNav(),
      body: Center(
        child: Text("Search"),
      ),
    );
  }
}
