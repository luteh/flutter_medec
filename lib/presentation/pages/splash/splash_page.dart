import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_medec/core/utils/navigation_util.dart';
import 'package:flutter_medec/presentation/pages/onboarding/onboarding_page.dart';
import 'package:flutter_medec/presentation/pages/splash/components/app_name.dart';
import 'package:flutter_medec/presentation/pages/splash/components/dot_list.dart';

class SplashPage extends StatefulWidget {
  static const routeName = '/';
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Timer? _timer;

  @override
  void initState() {
    _timer = Timer(
      const Duration(
        seconds: 2,
      ),
      _navigateToOnboarding,
    );
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            AppName(),
            DotList(),
          ],
        ),
      ),
    );
  }

  Future<void> _navigateToOnboarding() async {
    await NavigationUtil.pushReplacementNamed(OnboardingPage.routeName);
  }
}
