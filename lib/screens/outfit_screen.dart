import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_outfits/screens/outfit_view.dart';
import 'package:my_outfits/utils/app_info_list.dart';
import 'package:my_outfits/utils/app_layout.dart';
import 'package:my_outfits/utils/app_style.dart';
import 'package:my_outfits/widgets/outfit_tabs.dart';

class OutfitScreen extends StatelessWidget {
  const OutfitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(15),
              vertical: AppLayout.getHeight(15)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text(
              "Outfits",
              style: Styles.headLineStyle.copyWith(
                fontSize: AppLayout.getHeight(40),
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            const AddOutfitTabs(firstTab: "Upcoming", secondTab: "Storaged"),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: OutfitView(
                change: changeList[0],
                isColor: true,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              color: Colors.white,
              child: Column(children: [
                Row(
                  children: [
                    Column(
                      children: [Text("aaa", style: Styles.headLineStyle3)],
                    )
                  ],
                )
              ]),
            )
          ],
        ),
      ]),
    );
  }
}
