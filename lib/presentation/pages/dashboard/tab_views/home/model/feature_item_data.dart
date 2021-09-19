import 'package:flutter_medec/core/constant/image_asset.dart';
import 'package:flutter_medec/core/constant/strings.dart';

class FeatureItemData {
  final String id, imageAsset, title, description;

  FeatureItemData({
    required this.id,
    required this.imageAsset,
    required this.title,
    required this.description,
  });

  static final items = [
    FeatureItemData(
      id: '1',
      imageAsset: ImageAsset.icDoctor,
      title: Strings.doctor,
      description: Strings.descDoctor,
    ),
    FeatureItemData(
      id: '2',
      imageAsset: ImageAsset.icMedicines,
      title: Strings.medicines,
      description: Strings.descMedicines,
    ),
    FeatureItemData(
      id: '3',
      imageAsset: ImageAsset.icDiagnostic,
      title: Strings.diagnostic,
      description: Strings.descDiagnostic,
    ),
  ];
}
