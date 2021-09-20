import 'package:flutter/material.dart';
import 'package:flutter_medec/core/components/my_text.dart';
import 'package:flutter_medec/core/constant/strings.dart';
import 'package:flutter_medec/core/style/sizes.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.width17,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          MyText(
            text: Strings.titleNearbyDoctors,
            textType: TextType.caption,
          ),
          MyText(
            text: Strings.seeAll,
            textType: TextType.caption,
          ),
        ],
      ),
    );
  }
}
