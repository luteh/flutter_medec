import 'package:flutter/material.dart';
import 'package:flutter_medec/core/components/caption_text.dart';
import 'package:flutter_medec/core/constant/image_asset.dart';
import 'package:flutter_medec/core/constant/strings.dart';
import 'package:flutter_medec/core/style/sizes.dart';
import 'package:flutter_svg/svg.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Sizes.height50,
        ),
        SvgPicture.asset(ImageAsset.imgVerification),
        SizedBox(
          height: Sizes.height20,
        ),
        const CaptionText(
          text: Strings.descEnterMobileNumber,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
