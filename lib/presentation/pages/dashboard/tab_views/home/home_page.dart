import 'package:flutter/material.dart';
import 'package:flutter_medec/core/style/sizes.dart';

import 'components/body/body.dart';
import 'components/header/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SizedBox(
            height:
                constraints.maxHeight - MediaQuery.of(context).padding.bottom,
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: Sizes.height20,
              ),
              child: Column(
                children: const [
                  Header(),
                  Body(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
