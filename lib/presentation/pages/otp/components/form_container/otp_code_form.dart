import 'package:flutter/material.dart';
import 'package:flutter_medec/core/utils/theme_util.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpCodeForm extends StatelessWidget {
  const OtpCodeForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 6,
      onChanged: (text) {},
      pinTheme: PinTheme(
        inactiveColor: ThemeUtil.dividerColor,
      ),
    );
  }
}
