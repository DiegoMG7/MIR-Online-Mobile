import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mir_mobile/presentation/providers/intro_provider.dart';

class DotsForCardSlide extends StatelessWidget {
  final int currentDotIndex;
  final int totalDots;

  const DotsForCardSlide(
      {super.key,
      required this.totalDots,
      this.currentDotIndex =
          0}); // en cero para que la primera slide antes de deslizar tenga el Dot correcto

  @override
  Widget build(BuildContext context) {
    return buildDotSlider(currentDotIndex, totalDots);
  }
}

class Dot extends StatelessWidget {
  final int index;
  final Color dotColor;

  const Dot({super.key, required this.index, required this.dotColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25.0),
      height: 20,
      width: 20,
      color: dotColor,
      decoration: const BoxDecoration(shape: BoxShape.circle),
    );
  }
}

Row buildDotSlider(int currentDotIndex, int totalDots) {
  List<Dot> dotsList = [];
  Color dotColor;

  for (var i = 0; i < totalDots; i++) {
    if (currentDotIndex == i) {
      dotColor = Colors.blue;
      dotsList.add(Dot(index: i, dotColor: dotColor));
    } else {
      dotColor = Colors.black;
      dotsList.add(Dot(index: i, dotColor: dotColor));
    }
  }

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: dotsList,
  );
}
