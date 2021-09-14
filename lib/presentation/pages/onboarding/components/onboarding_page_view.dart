import 'package:flutter/material.dart';
import 'package:flutter_medec/presentation/pages/onboarding/components/item.dart';
import 'package:flutter_medec/presentation/pages/onboarding/model/onboarding.dart';

class OnboardingPageView extends StatelessWidget {
  final PageController pageController;
  const OnboardingPageView({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _items = Onboarding.items;
    return Flexible(
      child: PageView.builder(
        controller: pageController,
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return Item(
            onboarding: _items[index],
          );
        },
      ),
    );
  }
}
