import 'package:flutter/material.dart';
import 'package:flutter_medec/core/constant/strings.dart';

class AppName extends StatelessWidget {
  const AppName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      Strings.appName,
      style:
          Theme.of(context).textTheme.headline2?.copyWith(color: Colors.white),
    );
  }
}
