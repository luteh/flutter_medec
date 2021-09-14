import 'package:flutter/material.dart';
import 'package:flutter_medec/core/style/sizes.dart';

import 'dot_item.dart';

class DotList extends StatelessWidget {
  const DotList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: Sizes.width6,
      children: const [
        DotItem(),
        DotItem(),
        DotItem(),
      ],
    );
  }
}
