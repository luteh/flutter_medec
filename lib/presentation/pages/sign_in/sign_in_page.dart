import 'package:flutter/material.dart';
import 'package:flutter_medec/presentation/pages/sign_in/components/bottom_circle.dart';
import 'package:flutter_medec/presentation/pages/sign_in/components/header.dart';
import 'package:flutter_medec/presentation/pages/sign_in/components/sign_in_button_list.dart';
import 'package:flutter_medec/presentation/pages/sign_in/components/term_and_condition_text.dart';

class SignInPage extends StatelessWidget {
  static const routeName = '/sign-in';
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: const [
          Header(),
          SignInButtonList(),
          TermAndConditionText(),
          Spacer(),
          BottomCircle()
        ],
      ),
    );
  }
}
