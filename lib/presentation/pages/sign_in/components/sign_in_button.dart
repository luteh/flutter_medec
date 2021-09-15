import 'package:flutter/material.dart';
import 'package:flutter_medec/core/style/sizes.dart';

class SignInButton extends StatelessWidget {
  final String text;
  final Widget icon;
  final Function onPressed;
  const SignInButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {
        onPressed();
      },
      icon: icon,
      label: Text(text),
      style: OutlinedButton.styleFrom(
        fixedSize: Size(Sizes.width288, Sizes.height50),
        elevation: Sizes.radius4,
        shadowColor: Colors.black.withOpacity(0.25),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.radius25),
        ),
      ),
    );
  }
}
