import 'package:auxzonapp/utils/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class iconname extends StatelessWidget {
  iconname({super.key, required this.icon, required this.text});
  IconData icon;

  var text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: appblackcolor.withOpacity(.5),
        ),
        Text(text,
            style: TextStyle(
              color: appblackcolor.withOpacity(.5),
            ))
      ],
    );
  }
}
