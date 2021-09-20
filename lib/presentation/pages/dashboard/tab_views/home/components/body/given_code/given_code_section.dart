import 'package:flutter/material.dart';
import 'package:flutter_medec/core/components/dash_divider.dart';
import 'package:flutter_medec/core/components/my_text.dart';
import 'package:flutter_medec/core/constant/image_asset.dart';
import 'package:flutter_medec/core/constant/strings.dart';
import 'package:flutter_medec/core/style/color_palettes.dart';
import 'package:flutter_medec/core/style/sizes.dart';
import 'package:flutter_medec/core/utils/theme_util.dart';
import 'package:flutter_svg/svg.dart';

class GivenCodeSection extends StatelessWidget {
  const GivenCodeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: Sizes.width28,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Sizes.radius12),
      ),
      child: Column(
        children: [
          SvgPicture.asset(ImageAsset.imgGivenCode),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: Sizes.height10,
            ),
            child: const DashDivider(),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: Sizes.width20,
              right: Sizes.width20,
              bottom: Sizes.height10,
            ),
            child: Row(
              children: [
                const MyText(
                  text: Strings.labelGivenCode,
                  textType: TextType.bodyText2,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Sizes.radius200),
                      border: Border.all(
                        color: ThemeUtil.dividerColor,
                      ),
                      color: ColorPalettes.bgGrey,
                    ),
                    margin: EdgeInsets.only(
                      left: Sizes.width20,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: Sizes.width20,
                      vertical: Sizes.height10,
                    ),
                    child: Row(
                      children: [
                        const Expanded(
                          child: MyText(
                            text: 'NHDFG',
                            textType: TextType.bodyText2,
                          ),
                        ),
                        InkWell(
                          onTap: _onClickShare,
                          child: Icon(
                            Icons.share_rounded,
                            size: Sizes.width14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _onClickShare() {}
}
