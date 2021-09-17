import 'package:flutter/material.dart';
import 'package:flutter_medec/core/utils/theme_util.dart';

class Headline5Text extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final Color? color;
  const Headline5Text({
    Key? key,
    required this.text,
    this.textAlign,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: ThemeUtil.headline4?.copyWith(
        color: color,
      ),
      textAlign: textAlign,
    );
  }
}
