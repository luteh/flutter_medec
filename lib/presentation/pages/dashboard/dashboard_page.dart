import 'package:flutter/material.dart';
import 'package:flutter_medec/presentation/pages/dashboard/components/body/body.dart';
import 'package:flutter_medec/presentation/pages/dashboard/components/footer/footer.dart';
import 'package:flutter_medec/presentation/pages/dashboard/dashboard_controller.dart';
import 'package:get/get.dart';

class DashboardPage extends StatelessWidget {
  static const routeName = '/dashboard';
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _dashboardController = Get.put(
      DashboardController(),
      permanent: false,
    );
    return Scaffold(
      body: Body(
        dashboardController: _dashboardController,
      ),
      extendBody: true,
      bottomNavigationBar: Footer(
        dashboardController: _dashboardController,
      ),
    );
  }
}
