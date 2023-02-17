import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_outfits/utils/app_layout.dart';

import '../utils/app_style.dart';

class PopularScreen extends StatelessWidget {
  final Map<String, dynamic> outfit;
  const PopularScreen({Key? key, required this.outfit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 320,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              spreadRadius: 5,
              blurRadius: 20,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ]),
      child: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/tshirt.png"),
              ),
            ),
          ),
          const Gap(20),
          Text(
            "riveriswild UO Exclusive Dance Tee",
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          ),
          const Gap(5),
          Text(
            "URBAN OUTFITTERS",
            style: Styles.headLineStyle4.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.star_fill,
                color: Styles.kakiColor,
                size: 20,
              ),
              const Gap(5),
              Text(
                "4.5",
                style: Styles.headLineStyle4.copyWith(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
