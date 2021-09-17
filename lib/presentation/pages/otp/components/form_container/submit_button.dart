import 'package:flutter/material.dart';
import 'package:flutter_medec/core/constant/strings.dart';
import 'package:flutter_medec/core/style/sizes.dart';

class SubmitButton extends StatelessWidget {
  final Function onPressed;
  const SubmitButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      child: const Text(Strings.submit),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(
          Sizes.widthFull,
          Sizes.height46,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.radius32),
        ),
        elevation: 0,
      ),
    );
  }
}
