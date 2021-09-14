import 'package:flutter/material.dart';
import 'package:flutter_medec/presentation/pages/onboarding/components/next_button.dart';
import 'package:flutter_medec/presentation/pages/onboarding/components/onboarding_page_view.dart';

class OnboardingPage extends StatefulWidget {
  static const routeName = '/onboarding';
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OnboardingPageView(
            pageController: _pageController,
          ),
          NextButton(
            pageController: _pageController,
          ),
        ],
      ),
    );
  }
}
