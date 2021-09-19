import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_medec/app/app_pages.dart';
import 'package:flutter_medec/app/app_themes.dart';
import 'package:flutter_medec/core/constant/strings.dart';
import 'package:flutter_medec/presentation/pages/dashboard/dashboard_page.dart';
import 'package:flutter_medec/presentation/pages/splash/splash_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: Strings.appName,
          theme: AppThemes.lightTheme,
          initialRoute: DashboardPage.routeName,
          getPages: AppPages.routes,
        );
      },
    );
  }
}
