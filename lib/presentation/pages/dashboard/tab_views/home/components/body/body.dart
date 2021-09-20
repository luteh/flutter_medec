import 'package:flutter/material.dart';
import 'package:flutter_medec/core/style/sizes.dart';
import 'package:flutter_medec/presentation/pages/dashboard/tab_views/home/components/body/banner/banner_section.dart';
import 'package:flutter_medec/presentation/pages/dashboard/tab_views/home/components/body/nearby_doctors/nearby_doctors_section.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Sizes.height31,
        ),
        const BannerSection(),
        const NearbyDoctorsSection(),
      ],
    );
  }
}
