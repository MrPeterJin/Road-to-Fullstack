import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:my_outfits/utils/app_layout.dart';

import '../utils/app_style.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      child: Column(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/tshirt.png"),
              ),
            ),
          ),
          const Gap(10),
          Text(
            "riveriswild UO Exclusive Dance Tee",
            style: Styles.headLineStyle2,
          ),
          const Gap(5),
          Text(
            "URBAN OUTFITTERS",
            style: Styles.headLineStyle4,
          ),
          const Gap(5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.star_fill,
                color: Styles.primaryColor,
                size: 20,
              ),
              const Gap(5),
              Text(
                "4.5",
                style: Styles.headLineStyle4,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
