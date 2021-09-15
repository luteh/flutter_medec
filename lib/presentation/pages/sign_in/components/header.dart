import 'package:flutter/material.dart';
import 'package:flutter_medec/core/constant/strings.dart';
import 'package:flutter_medec/core/style/sizes.dart';
import 'package:flutter_medec/core/utils/my_custom_clipper.dart';
import 'package:flutter_medec/core/utils/theme_util.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizes.height300,
      child: ClipPath(
        clipper: MyCustomClipper(),
        child: Container(
          color: ThemeUtil.primaryColor,
          child: Center(
            child: Text(
              Strings.appName,
              style: ThemeUtil.headline2?.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
