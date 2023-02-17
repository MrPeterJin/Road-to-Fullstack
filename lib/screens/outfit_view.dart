import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:line_icons/line_icon.dart';
import 'package:my_outfits/utils/app_layout.dart';
import 'package:my_outfits/widgets/thick_container.dart';

import '../utils/app_style.dart';

class OutfitView extends StatelessWidget {
  const OutfitView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color(0XFF526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Polo Shirt",
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      const ThickContainer(),
                      Expanded(
                          child: Stack(children: [
                        SizedBox(
                          height: 24,
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    (constraints.constrainWidth() / 6).floor(),
                                    (index) => const SizedBox(
                                          width: 3,
                                          height: 1,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.white),
                                          ),
                                        )),
                              );
                            },
                          ),
                        ),
                        Center(
                            child: Transform.scale(
                                scale: 1.3,
                                child: LineIcon.tShirt(
                                  color: Colors.white,
                                ))),
                      ])),
                      const ThickContainer(),
                      Expanded(child: Container()),
                      Text(
                        "Giordano",
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 90,
                        child: Text(
                          'HKTVMall',
                          style: Styles.textStyle.copyWith(color: Colors.white),
                        ),
                      ),
                      Text(
                        'HKD 139',
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        width: 80,
                        child: Text(
                          '  5 months',
                          style: Styles.textStyle.copyWith(color: Colors.white),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: Styles.orangeColor,
              child: Row(children: [
                const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                    )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(
                            (constraints.constrainWidth() / 15).floor(),
                            (index) => const SizedBox(
                                  width: 5,
                                  height: 1,
                                  child: DecoratedBox(
                                      decoration:
                                          BoxDecoration(color: Colors.white)),
                                )),
                      );
                    },
                  ),
                )),
                const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                    ))
              ]),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              padding: const EdgeInsets.only(
                  left: 16, top: 16, bottom: 16, right: 16),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Type',
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        const Gap(5),
                        Text(
                          'Short Sleeves',
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Main Color',
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        const Gap(5),
                        Text(
                          'White',
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Tag',
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        const Gap(5),
                        Text(
                          'Square Collar',
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
