import 'package:flutter/material.dart';
import 'package:flutter_medec/core/style/sizes.dart';
import 'package:flutter_medec/presentation/pages/dashboard/tab_views/home/components/body/nearby_doctors/item.dart';
import 'package:flutter_medec/presentation/pages/dashboard/tab_views/home/model/nearby_doctor_data.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _items = NearbyDoctorData.items;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(
        top: Sizes.height16,
        left: Sizes.width18,
        right: Sizes.width18,
        bottom: Sizes.height33,
      ), 
      child: Wrap(
        spacing: Sizes.width21,
        children: _items.map((e) => Item(data: e)).toList(),
      ),
    );
  }
}
