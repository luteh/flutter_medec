import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_medec/core/style/sizes.dart';
import 'package:flutter_medec/core/utils/theme_util.dart';

class BottomCircle extends StatelessWidget {
  const BottomCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: Sizes.height100,
          width: Sizes.height100,
          decoration: BoxDecoration(
            color: ThemeUtil.primaryColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Sizes.radius200),
            ),
          ),
        ),
      ],
    );
  }
}
