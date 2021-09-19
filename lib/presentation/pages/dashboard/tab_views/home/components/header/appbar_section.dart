import 'package:flutter/material.dart';
import 'package:flutter_medec/core/components/my_text.dart';
import 'package:flutter_medec/core/constant/strings.dart';
import 'package:flutter_medec/core/style/sizes.dart';
import 'package:flutter_medec/core/utils/theme_util.dart';

class AppBarSection extends StatelessWidget {
  const AppBarSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.height143,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(Sizes.radius24),
          bottomRight: Radius.circular(Sizes.radius24),
        ),
        color: ThemeUtil.primaryColor,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.width20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          MyText(
            text: Strings.appName,
            textType: TextType.headline6,
            color: Colors.white,
          ),
          MyText(
            text: 'Mumbai',
            textType: TextType.caption,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
