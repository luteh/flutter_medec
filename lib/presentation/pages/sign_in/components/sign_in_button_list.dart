import 'package:flutter/material.dart';
import 'package:flutter_medec/core/constant/image_asset.dart';
import 'package:flutter_medec/core/constant/strings.dart';
import 'package:flutter_medec/core/style/sizes.dart';
import 'package:flutter_medec/presentation/pages/sign_in/components/sign_in_button.dart';
import 'package:flutter_svg/svg.dart';

class SignInButtonList extends StatelessWidget {
  const SignInButtonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: Sizes.height35,
      ),
      child: Wrap(
        direction: Axis.vertical,
        spacing: Sizes.height35,
        children: [
          SignInButton(
            text: Strings.mobileNumber,
            icon: SvgPicture.asset(ImageAsset.icMobileNumber),
            onPressed: () => _onClickMobileNumber(),
          ),
          SignInButton(
            text: Strings.facebook,
            icon: SvgPicture.asset(ImageAsset.icFacebook),
            onPressed: () => _onClickFacebook(),
          ),
          SignInButton(
            text: Strings.google,
            icon: SvgPicture.asset(ImageAsset.icGoogle),
            onPressed: () => _onClickGoogle(),
          ),
        ],
      ),
    );
  }

  void _onClickMobileNumber() {}

  void _onClickFacebook() {}

  void _onClickGoogle() {}
}
