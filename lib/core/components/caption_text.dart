import 'package:flutter/material.dart';
import 'package:flutter_medec/core/utils/theme_util.dart';

class CaptionText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  const CaptionText({
    Key? key,
    required this.text,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: ThemeUtil.caption,
      textAlign: textAlign,
    );
  }
}
