import 'package:flutter/material.dart';
import 'package:flutter_medec/core/style/sizes.dart';
import 'package:flutter_medec/presentation/pages/dashboard/tab_views/home/components/header/feature_item.dart';
import 'package:flutter_medec/presentation/pages/dashboard/tab_views/home/model/feature_item_data.dart';

class FeatureSection extends StatelessWidget {
  const FeatureSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _items = FeatureItemData.items;
    return Padding(
      padding: EdgeInsets.only(
        top: Sizes.height106,
        left: Sizes.width33,
        right: Sizes.width33,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _items.map((e) => FeatureItem(data: e)).toList(),
      ),
    );
  }
}
