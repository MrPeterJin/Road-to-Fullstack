import 'package:flutter/material.dart';
import 'package:my_outfits/utils/app_style.dart';

class OutfitScreen extends StatelessWidget {
  const OutfitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      appBar: AppBar(
        title: Center(child: Text('Outfit')),
        backgroundColor: Styles.bgColor,
        elevation: 0,
      ),
    );
  }
}
