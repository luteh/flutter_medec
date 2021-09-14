import 'package:flutter/material.dart';
import 'package:flutter_medec/core/style/sizes.dart';

class DotItem extends StatelessWidget {
  const DotItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.width4,
      width: Sizes.width4,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }
}
