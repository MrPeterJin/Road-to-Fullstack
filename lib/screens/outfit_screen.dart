import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_outfits/utils/app_layout.dart';
import 'package:my_outfits/utils/app_style.dart';
import 'package:my_outfits/widgets/outfit_tabs.dart';

class OutfitScreen extends StatelessWidget {
  const OutfitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text(
              "Outfits",
              style: Styles.headLineStyle,
            ),
            Gap(AppLayout.getHeight(20)),
            const AddOutfitTabs(firstTab: "By Occasion", secondTab: "By Season")
          ],
        ),
      ]),
    );
  }
}
