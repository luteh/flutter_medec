import 'package:flutter/material.dart';
import 'package:flutter_medec/core/style/sizes.dart';
import 'package:flutter_medec/core/utils/navigation_util.dart';
import 'package:flutter_medec/presentation/pages/otp/components/enter_code_footer.dart';
import 'package:flutter_medec/presentation/pages/otp/components/enter_otp_code_header.dart';
import 'package:flutter_medec/presentation/pages/otp/components/form_container/form_container.dart';
import 'package:get/state_manager.dart';

import 'components/header.dart';

class OtpPage extends StatelessWidget {
  static const routeName = '/otp';
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _isOtpSent = false.obs;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            PreferredSize(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Sizes.width20,
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: _onClickClose,
                      child: const Icon(Icons.close),
                    ),
                  ],
                ),
              ),
              preferredSize: AppBar().preferredSize,
            ),
            Obx(
              () => Visibility(
                visible: _isOtpSent.isFalse,
                replacement: const EnterOtpCodeHeader(),
                child: const Header(),
              ),
            ),
            FormContainer(
              isOtpSent: _isOtpSent,
            ),
            EnterCodeFooter(
              isOtpSent: _isOtpSent,
            ),
          ],
        ),
      ),
    );
  }

  _onClickClose() {
    NavigationUtil.popUntil();
  }
}
