import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class AddOutfitTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AddOutfitTabs({Key? key, required this.firstTab, this.secondTab})
      : super(key: key); 

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
          padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(3.5)),
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
              child: const Center(child: Text(firstTab)),
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
              child: const Center(child: Text(secondTab)),
            ),
          ])),
    );
  }
}
