import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:my_outfits/utils/app_style.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                const Gap(20),
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
                          const Gap(5),
                          Text(
                            "My Outfits",
                            style: Styles.headLineStyle,
                          )
                        ]),
                    Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/avatar.jpg'))))
                  ],
                ),
                const Gap(25),
                Row(
                  children: [
                    const Icon(FluentIcons.search_16_regular,
                        color: Color(0xFFBFC205)),
                    Text(
                      "Search",
                      style: Styles.headLineStyle4,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
