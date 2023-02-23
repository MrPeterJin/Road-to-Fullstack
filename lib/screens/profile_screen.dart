import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_outfits/utils/app_layout.dart';
import 'package:my_outfits/utils/app_style.dart';
import 'package:my_outfits/widgets/column_layout.dart';
import 'package:my_outfits/widgets/layout_builder_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(20)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10)),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/avatar.jpg"))),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "MrPeterJin",
                    style: Styles.headLineStyle,
                  ),
                  Gap(AppLayout.getHeight(2)),
                  Text("Sai Kung, New Territories, Hong Kong",
                      style: TextStyle(
                          fontSize: AppLayout.getHeight(14),
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500)),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(100)),
                      color: const Color(0xFFFEF4F3),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(3),
                        vertical: AppLayout.getHeight(3)),
                    child: Row(children: [
                      Container(
                        padding: EdgeInsets.all(AppLayout.getHeight(3)),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF526799),
                        ),
                        child: const Icon(
                          FluentIcons.shield_16_filled,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      Gap(AppLayout.getHeight(5)),
                      const Text(
                        "Premium Status",
                        style: TextStyle(
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.w600),
                      ),
                      Gap(AppLayout.getHeight(5)),
                    ]),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print("tapped");
                    },
                    child: Text("Edit",
                        style: Styles.textStyle.copyWith(
                            color: Styles.primaryColor,
                            fontWeight: FontWeight.w300)),
                  )
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(AppLayout.getHeight(8)),
          Stack(children: [
            Container(
              height: AppLayout.getHeight(90),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                color: Styles.primaryColor,
              ),
            ),
            Positioned(
              right: -45,
              top: -40,
              child: Container(
                padding: EdgeInsets.all(AppLayout.getHeight(30)),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(width: 18, color: Color(0xFF264CD2)),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(25),
                  vertical: AppLayout.getHeight(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.white,
                    child: Icon(
                      FluentIcons.lightbulb_filament_16_regular,
                      color: Styles.primaryColor,
                      size: 27,
                    ),
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "You\'v got a new reward",
                        style: Styles.headLineStyle2.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "You have 20 outfits in your closet",
                        style: Styles.headLineStyle2.copyWith(
                            color: Colors.white.withOpacity(0.9),
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
            )
          ]),
          Gap(AppLayout.getHeight(25)),
          Text("Accumulated Expense", style: Styles.headLineStyle2),
          Gap(AppLayout.getHeight(20)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                color: Styles.bgColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 1,
                  )
                ]),
            child: Column(children: [
              Gap(AppLayout.getHeight(15)),
              const Text("HK\$ 1,514",
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.w600)),
              Gap(AppLayout.getHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Expense Accured",
                      style: Styles.headLineStyle4.copyWith(fontSize: 16)),
                  Text("23 Feb 2023",
                      style: Styles.headLineStyle4.copyWith(fontSize: 16)),
                ],
              ),
              Gap(AppLayout.getHeight(4)),
              Divider(
                color: Colors.grey.shade300,
              ),
              Gap(AppLayout.getHeight(4)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColumnLayout(
                    alignment: CrossAxisAlignment.start,
                    firsttext: "HK\$ 198",
                    secondtext: "BIANCO Sneakers",
                    isColor: false,
                  ),
                  AppColumnLayout(
                    alignment: CrossAxisAlignment.end,
                    firsttext: "FILA Website",
                    secondtext: "Expense at",
                    isColor: false,
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(12)),
              AppLayoutBuilderWidget(sections: 12, isColor: false),
              Gap(AppLayout.getHeight(12)),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      alignment: CrossAxisAlignment.start,
                      firsttext: "CN\¥ 99",
                      secondtext: "SUPIMA COTTON",
                      isColor: false,
                    ),
                    AppColumnLayout(
                      alignment: CrossAxisAlignment.end,
                      firsttext: "Popcorn",
                      secondtext: "Expense at",
                      isColor: false,
                    ),
                  ]),
              Gap(AppLayout.getHeight(12)),
              AppLayoutBuilderWidget(sections: 12, isColor: false),
              Gap(AppLayout.getHeight(12)),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      alignment: CrossAxisAlignment.start,
                      firsttext: "NT\$ 449",
                      secondtext: "Single Layer Elastic Pants",
                      isColor: false,
                    ),
                    AppColumnLayout(
                      alignment: CrossAxisAlignment.end,
                      firsttext: "7NET shop",
                      secondtext: "Expense at",
                      isColor: false,
                    ),
                  ]),
              Gap(AppLayout.getHeight(25)),
            ]),
          ),
          Gap(AppLayout.getHeight(25)),
          InkWell(
            onTap: () => print("tapped"),
            child: Center(
              child: Text("How to get more rewards",
                  style: Styles.headLineStyle2.copyWith(
                      color: Styles.primaryColor, fontWeight: FontWeight.w500)),
            ),
          )
        ],
      ),
    );
  }
}
