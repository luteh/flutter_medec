import 'package:flutter/material.dart';
import 'package:flutter_medec/core/style/sizes.dart';

import 'body.dart';
import 'header.dart';

class NearbyDoctorsSection extends StatelessWidget {
  const NearbyDoctorsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Sizes.height48,
        ),
        const Header(),
        const Body(),
      ],
    );
  }
}
