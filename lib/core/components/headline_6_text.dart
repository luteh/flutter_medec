import 'package:flutter/material.dart';
import 'package:flutter_medec/core/utils/theme_util.dart';

class Headline6Text extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  const Headline6Text({
    Key? key,
    required this.text,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: ThemeUtil.headline6,
      textAlign: textAlign,
    );
  }
}
