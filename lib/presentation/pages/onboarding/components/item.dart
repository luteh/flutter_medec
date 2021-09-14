import 'package:flutter/material.dart';
import 'package:flutter_medec/core/style/sizes.dart';
import 'package:flutter_medec/core/utils/theme_util.dart';
import 'package:flutter_medec/presentation/pages/onboarding/model/onboarding.dart';
import 'package:flutter_svg/svg.dart';

class Item extends StatelessWidget {
  final Onboarding onboarding;
  const Item({
    Key? key,
    required this.onboarding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: SvgPicture.asset(onboarding.imageAsset),
        ),
        SizedBox(
          height: Sizes.height50,
        ),
        Text(
          onboarding.subtitle,
          style: ThemeUtil.headline6,
        ),
        SizedBox(
          height: Sizes.height8,
        ),
        Text(
          onboarding.description,
          style: ThemeUtil.bodyText2,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
