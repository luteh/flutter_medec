import 'package:flutter/material.dart';
import 'package:flutter_medec/core/constant/strings.dart';
import 'package:flutter_medec/core/style/sizes.dart';
import 'package:flutter_medec/core/utils/navigation_util.dart';
import 'package:flutter_medec/presentation/pages/onboarding/model/onboarding.dart';
import 'package:flutter_medec/presentation/pages/sign_in/sign_in_page.dart';

class NextButton extends StatelessWidget {
  final PageController pageController;
  const NextButton({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: OutlinedButton(
        onPressed: () async {
          await _onClickNext();
        },
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Sizes.radius32),
          ),
          fixedSize: Size(
            Sizes.widthHalf,
            Sizes.height50,
          ),
        ),
        child: const Text(Strings.next),
      ),
    );
  }

  Future<void> _onClickNext() async {
    if (pageController.page! >= Onboarding.items.length - 1) {
      await _navigateToSignIn();
      return;
    }

    await pageController.nextPage(
      duration: const Duration(
        milliseconds: 300,
      ),
      curve: Curves.easeIn,
    );
  }

  Future<void> _navigateToSignIn() async {
    await NavigationUtil.pushReplacementNamed(SignInPage.routeName);
  }
}
