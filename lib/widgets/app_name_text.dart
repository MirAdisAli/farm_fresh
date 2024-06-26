import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:farm_fresh/widgets/title_text.dart';

class AppNameTextWidget extends StatelessWidget {
  const AppNameTextWidget({super.key, this.fontSize = 30});
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(seconds: 22),
      baseColor: const Color.fromARGB(255, 16, 92, 19),
      highlightColor: const Color.fromARGB(255, 182, 169, 169),
      child: TitlesTextWidget(
        label: "Farm Fresh",
        fontSize: fontSize,
      ),
    );
  }
}
