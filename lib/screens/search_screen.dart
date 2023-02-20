import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_outfits/utils/app_layout.dart';
import 'package:my_outfits/utils/app_style.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(10)),
        children: [
          Gap(AppLayout.getHeight(20)),
          Text("What are\nyou looking for?",
              style: Styles.headLineStyle
                  .copyWith(fontSize: AppLayout.getWidth(35))),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
            child: Container(
                padding:
                    EdgeInsets.symmetric(vertical: AppLayout.getHeight(3.5)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                  color: const Color(0xFFF4F6FD),
                ),
                // padding: EdgeInsets.symmetric(
                //     horizontal: AppLayout.getWidth(0),
                //     vertical: AppLayout.getHeight(0)),
                child: Row(children: [
                  Container(
                    width: size.width * 0.44,
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getWidth(7),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(AppLayout.getHeight(50))),
                      color: Colors.white,
                    ),
                    child: Center(child: Text("By Time")),
                  ),
                  Container(
                    width: size.width * 0.44,
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getWidth(7),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(AppLayout.getHeight(50))),
                      color: Colors.transparent,
                    ),
                    child: Center(child: Text("By Color")),
                  ),
                ])),
          ),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(12),
                horizontal: AppLayout.getWidth(12)),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(AppLayout.getWidth(10))),
            child: Row(
              children: [
                const Icon(Icons.date_range, color: Color(0xFFBFC20F)),
                Gap(AppLayout.getWidth(10)),
                Text(
                  "Fliter by date",
                  style: Styles.textStyle,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
