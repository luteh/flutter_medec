import 'package:flutter/material.dart';
import 'package:flutter_medec/presentation/pages/dashboard/dashboard_controller.dart';
import 'package:flutter_medec/presentation/pages/dashboard/tab_views/account/account_page.dart';
import 'package:flutter_medec/presentation/pages/dashboard/tab_views/chat/chat_page.dart';
import 'package:flutter_medec/presentation/pages/dashboard/tab_views/home/home_page.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  final DashboardController dashboardController;
  const Body({
    Key? key,
    required this.dashboardController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => IndexedStack(
        index: dashboardController.tabIndex.value,
        children: [
          AnimatedOpacity(
            duration: kThemeAnimationDuration,
            opacity: dashboardController.tabIndex.value == 0 ? 1 : 0,
            child: const HomePage(),
          ),
          AnimatedOpacity(
            duration: kThemeAnimationDuration,
            opacity: dashboardController.tabIndex.value == 1 ? 1 : 0,
            child: const ChatPage(),
          ),
          AnimatedOpacity(
            duration: kThemeAnimationDuration,
            opacity: dashboardController.tabIndex.value == 2 ? 1 : 0,
            child: const AccountPage(),
          ),
        ],
      ),
    );
  }
}
