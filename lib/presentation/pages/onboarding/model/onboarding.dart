import 'package:flutter_medec/core/constant/image_asset.dart';
import 'package:flutter_medec/core/constant/strings.dart';

class Onboarding {
  final int id;
  final String imageAsset, subtitle, description;

  Onboarding({
    required this.id,
    required this.imageAsset,
    required this.subtitle,
    required this.description,
  });

  static final items = [
    Onboarding(
      id: 1,
      imageAsset: ImageAsset.imgOnboarding1,
      subtitle: Strings.subtitleOnboarding1,
      description: Strings.descOnboarding1,
    ),
    Onboarding(
      id: 2,
      imageAsset: ImageAsset.imgOnboarding2,
      subtitle: Strings.subtitleOnboarding2,
      description: Strings.descOnboarding2,
    ),
    Onboarding(
      id: 3,
      imageAsset: ImageAsset.imgOnboarding3,
      subtitle: Strings.subtitleOnboarding3,
      description: Strings.descOnboarding3,
    ),
  ];
}
