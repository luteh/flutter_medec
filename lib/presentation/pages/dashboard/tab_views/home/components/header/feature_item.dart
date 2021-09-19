import 'package:flutter/material.dart';
import 'package:flutter_medec/core/components/bouncing_button.dart';
import 'package:flutter_medec/core/components/my_text.dart';
import 'package:flutter_medec/core/style/sizes.dart';
import 'package:flutter_medec/presentation/pages/dashboard/tab_views/home/model/feature_item_data.dart';
import 'package:flutter_svg/svg.dart';

class FeatureItem extends StatelessWidget {
  final FeatureItemData data;
  const FeatureItem({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BouncingButton(
          onTap: () {},
          child: Container(
            width: Sizes.width75,
            height: Sizes.width75,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: Sizes.radius35,
                  offset: Offset(0, Sizes.height11),
                ),
              ],
            ),
            child: SvgPicture.asset(
              data.imageAsset,
              fit: BoxFit.none,
            ),
          ),
        ),
        SizedBox(
          height: Sizes.height10,
        ),
        MyText(
          text: data.title,
          textType: TextType.subtitle2,
        ),
        SizedBox(
          height: Sizes.height3,
        ),
        MyText(
          text: data.description,
          textType: TextType.caption,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
