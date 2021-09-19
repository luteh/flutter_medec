import 'package:flutter/material.dart';
import 'package:flutter_medec/core/constant/image_asset.dart';
import 'package:flutter_medec/core/constant/strings.dart';
import 'package:flutter_medec/core/style/sizes.dart';
import 'package:flutter_medec/presentation/pages/dashboard/dashboard_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Footer extends StatelessWidget {
  final DashboardController dashboardController;
  const Footer({
    Key? key,
    required this.dashboardController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Sizes.radius18),
          topRight: Radius.circular(Sizes.radius18),
        ),
        color: Colors.white,
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          currentIndex: dashboardController.tabIndex.value,
          onTap: _onTapTabItem,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(ImageAsset.icHome),
              label: Strings.home,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(ImageAsset.icChat),
              label: Strings.chat,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(ImageAsset.icAccount),
              label: Strings.account,
            ),
          ],
        ),
      ),
    );
  }

  _onTapTabItem(int value) {
    dashboardController.changeTabIndex(value);
  }
}
