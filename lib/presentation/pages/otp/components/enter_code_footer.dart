import 'package:flutter/material.dart';
import 'package:flutter_medec/core/components/my_text.dart';
import 'package:flutter_medec/core/constant/strings.dart';
import 'package:flutter_medec/core/style/sizes.dart';
import 'package:flutter_medec/core/utils/theme_util.dart';
import 'package:get/state_manager.dart';

class EnterCodeFooter extends StatelessWidget {
  final RxBool isOtpSent;
  const EnterCodeFooter({
    Key? key,
    required this.isOtpSent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Visibility(
        visible: isOtpSent.isTrue,
        child: Column(
          children: [
            SizedBox(
              height: Sizes.height20,
            ),
            const MyText(
              text: Strings.textOtpNotReceived,
              textType: TextType.caption,
            ),
            SizedBox(
              height: Sizes.height20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText(
                  text: Strings.resend,
                  textType: TextType.bodyText2,
                  color: ThemeUtil.primaryColor,
                  onTap: _onClickResend,
                ),
                SizedBox(
                  width: Sizes.width40,
                ),
                MyText(
                  text: Strings.textCallNow,
                  textType: TextType.bodyText2,
                  color: ThemeUtil.primaryColor,
                  onTap: _onClickCallNow,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _onClickResend() {}

  _onClickCallNow() {}
}
