import 'package:flutter/material.dart';
import 'package:flutter_medec/core/style/sizes.dart';
import 'package:flutter_medec/presentation/pages/dashboard/tab_views/home/components/body/banner/banner_item.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizes.height152,
      child: PageView.builder(
        controller: PageController(
          viewportFraction: 0.85,
        ),
        itemCount: 3,
        itemBuilder: (context, index) {
          return const BannerItem();
        },
      ),
    );
  }
}
