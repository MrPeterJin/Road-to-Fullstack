import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:my_outfits/screens/outfit_view.dart';
import 'package:my_outfits/screens/popular_screen.dart';
import 'package:my_outfits/utils/app_style.dart';
import 'package:gap/gap.dart';
import 'package:my_outfits/widgets/double_text_widget.dart';

import '../utils/app_info_list.dart';
import '../utils/app_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.getHeight(10)),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good Morning",
                            style: Styles.headLineStyle3,
                          ),
                          Gap(AppLayout.getHeight(5)),
                          Text(
                            "My Outfits",
                            style: Styles.headLineStyle,
                          )
                        ]),
                    Container(
                        height: AppLayout.getHeight(60),
                        width: AppLayout.getWidth(60),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(10)),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/avatar.jpg'))))
                  ],
                ),
                Gap(AppLayout.getHeight(25)),
                Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(12),
                      vertical: AppLayout.getHeight(12)),
                  child: Row(
                    children: [
                      const Icon(FluentIcons.search_16_regular,
                          color: Color(0xFFBFC205)),
                      Text(
                        "Search",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(30)),
                const AppDoubleTextWidget(
                    bigText: "Upcoming Changes", smallText: "View All")
              ],
            ),
          ),
          Gap(AppLayout.getHeight(15)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: AppLayout.getHeight(20)),
            child: Row(
                children: changeList
                    .map((singleChange) => OutfitView(change: singleChange))
                    .toList()),
          ),
          const Gap(15),
          Container(
              padding:
                  EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
              child: const AppDoubleTextWidget(
                  bigText: "Your Popular Outfits", smallText: "View All")),
          Gap(AppLayout.getHeight(15)),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: AppLayout.getHeight(20)),
              child: Row(
                  children: outfitList
                      .map(
                          (singleOutfit) => PopularScreen(outfit: singleOutfit))
                      .toList())),
        ],
      ),
    );
  }
}
