import 'package:flutter/material.dart';
import 'package:flutter_medec/core/style/sizes.dart';
import 'package:flutter_medec/core/utils/navigation_util.dart';
import 'package:flutter_medec/presentation/pages/dashboard/dashboard_page.dart';
import 'package:flutter_medec/presentation/pages/otp/components/form_container/mobile_number_form.dart';
import 'package:flutter_medec/presentation/pages/otp/components/form_container/otp_code_form.dart';
import 'package:flutter_medec/presentation/pages/otp/components/form_container/submit_button.dart';
import 'package:get/state_manager.dart';

class FormContainer extends StatelessWidget {
  final RxBool isOtpSent;
  const FormContainer({
    Key? key,
    required this.isOtpSent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Sizes.radius12),
      ),
      margin: EdgeInsets.only(
        left: Sizes.width20,
        right: Sizes.width20,
        top: Sizes.height50,
      ),
      elevation: Sizes.radius29,
      shadowColor: Colors.black38,
      child: Padding(
        padding: EdgeInsets.all(Sizes.width20),
        child: Column(
          children: [
            Obx(
              () => Visibility(
                visible: isOtpSent.isFalse,
                replacement: const OtpCodeForm(),
                child: const MobileNumberForm(),
              ),
            ),
            SizedBox(
              height: Sizes.height30,
            ),
            SubmitButton(
              onPressed: _onClickSubmit,
            ),
          ],
        ),
      ),
    );
  }

  _onClickSubmit() async {
    if (isOtpSent.isTrue) {
      await NavigationUtil.pushNamedAndRemoveUntil(DashboardPage.routeName);
      return;
    }

    isOtpSent.value = true;
  }
}
