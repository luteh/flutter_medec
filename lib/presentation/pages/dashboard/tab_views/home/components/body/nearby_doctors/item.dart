import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_medec/core/components/bouncing_button.dart';
import 'package:flutter_medec/core/components/my_text.dart';
import 'package:flutter_medec/core/style/sizes.dart';
import 'package:flutter_medec/presentation/pages/dashboard/tab_views/home/model/nearby_doctor_data.dart';

class Item extends StatelessWidget {
  final NearbyDoctorData data;
  const Item({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BouncingButton(
      onTap: () {},
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: Sizes.width160,
            padding: EdgeInsets.only(
              top: Sizes.height46,
              bottom: Sizes.height18,
              left: Sizes.width12,
              right: Sizes.width12,
            ),
            margin: EdgeInsets.only(
              top: Sizes.height24,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(Sizes.radius8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: Sizes.radius28,
                  offset: Offset(0, Sizes.height9),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  text: data.name,
                  textType: TextType.overline,
                ),
                SizedBox(
                  height: Sizes.height7,
                ),
                MyText(
                  text: data.degree,
                  textType: TextType.overline,
                  maxLines: 2,
                  height: Sizes.height25,
                  fontSize: Sizes.sp9,
                ),
                SizedBox(
                  height: Sizes.height10,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star_border_rounded,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: Sizes.width5,
                    ),
                    MyText(
                      text: data.rating,
                      textType: TextType.overline,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Align(
            child: Image.asset(
              data.avatarAsset,
            ),
          ),
        ],
      ),
    );
  }
}
