import 'package:flutter/material.dart';
import 'package:flutter_medec/core/constant/strings.dart';
import 'package:flutter_medec/core/style/sizes.dart';

class MobileNumberForm extends StatelessWidget {
  const MobileNumberForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: Sizes.height46,
          width: Sizes.width52,
          child: TextFormField(
            initialValue: '+62',
            enabled: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Sizes.radius8),
              ),
            ),
          ),
        ),
        SizedBox(
          width: Sizes.width8,
        ),
        Expanded(
          child: SizedBox(
            height: Sizes.height46,
            child: TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: Strings.hintMobileNumber,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Sizes.radius8),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
