import 'package:flutter/material.dart';

import 'components/body/body.dart';
import 'components/header/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Header(),
          Body(),
        ],
      ),
    );
  }
}
