import 'package:flutter_medec/presentation/pages/onboarding/onboarding_page.dart';
import 'package:flutter_medec/presentation/pages/splash/splash_page.dart';
import 'package:get/route_manager.dart';

class AppPages {
  const AppPages._();

  static final routes = [
    GetPage(
      name: SplashPage.routeName,
      page: () => const SplashPage(),
    ),
    GetPage(
      name: OnboardingPage.routeName,
      page: () => const OnboardingPage(),
    ),
  ];
}
