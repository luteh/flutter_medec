import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  static const routeName = '/onboarding';
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Onboarding'),
      ),
      body: Container(),
    );
  }
}
