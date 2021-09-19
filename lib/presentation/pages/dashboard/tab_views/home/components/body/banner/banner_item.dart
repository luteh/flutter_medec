import 'package:flutter/material.dart';
import 'package:flutter_medec/core/constant/image_asset.dart';

class BannerItem extends StatelessWidget {
  const BannerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(ImageAsset.imgBanner);
  }
}
