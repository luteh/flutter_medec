import 'package:flutter/material.dart';
import 'package:flutter_medec/core/components/my_text.dart';
import 'package:flutter_medec/core/constant/strings.dart';
import 'package:flutter_medec/core/style/sizes.dart';

class EnterOtpCodeHeader extends StatelessWidget {
  const EnterOtpCodeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Sizes.height50,
        ),
        const MyText(
          text: Strings.titleEnterOtpCode,
          textType: TextType.headline6,
        ),
        SizedBox(
          height: Sizes.height10,
        ),
        const MyText(
          text: '* * * * * *',
          textType: TextType.headline4,
          color: Colors.green,
        ),
        SizedBox(
          height: Sizes.height10,
        ),
        const MyText(
          text: Strings.msgEnterOtpCode,
          textType: TextType.caption,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
