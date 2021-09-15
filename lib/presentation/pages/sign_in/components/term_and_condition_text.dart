import 'package:flutter/material.dart';
import 'package:flutter_medec/core/constant/strings.dart';
import 'package:flutter_medec/core/utils/theme_util.dart';

class TermAndConditionText extends StatelessWidget {
  const TermAndConditionText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      Strings.textAgreeTAndC,
      style: ThemeUtil.overline,
    );
  }
}
