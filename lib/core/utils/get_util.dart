import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetUtil {
  const GetUtil._();

  static dynamic get getArgument => Get.arguments;

  static get isBottomSheetOpen => Get.isBottomSheetOpen;
  static get isDialogOpen => Get.isDialogOpen;
  static get currentRoute => Get.currentRoute;
  static get previousRoute => Get.previousRoute;
  static BuildContext get context {
    if (Get.context == null) throw NullThrownError();
    return Get.context!;
  }
}
