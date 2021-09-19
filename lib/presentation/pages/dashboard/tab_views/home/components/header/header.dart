import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_medec/presentation/pages/dashboard/tab_views/home/components/header/appbar_section.dart';
import 'package:flutter_medec/presentation/pages/dashboard/tab_views/home/components/header/feature_section.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        AppBarSection(),
        FeatureSection(),
      ],
    );
  }
}
