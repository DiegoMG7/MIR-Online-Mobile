import 'package:flutter/material.dart';


class DotsForCardSlide extends StatelessWidget {

  final int currentDotIndex;
  final int totalDots;
  const DotsForCardSlide({super.key,required this.totalDots,this.currentDotIndex = 0}); // en cero para que la primera slide antes de deslizar tenga el Dot correcto

  @override
  Widget build(BuildContext context) {
    return buildDotSlider(currentDotIndex, totalDots, context);
  }
}

class Dot extends StatelessWidget {
  final Color dotColor;

  const Dot({super.key, required this.dotColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all( 10.0 ),
      height: 20,
      width: 20,
      decoration:  BoxDecoration(shape: BoxShape.circle, color: dotColor),
    );
  }
}

Expanded buildDotSlider(int currentDotIndex, int totalDots, BuildContext context) {
  List<Dot> dotsList = [];
  Color dotColor;

  for (var i = 0; i < totalDots; i++) {
    if (currentDotIndex == i) {
      dotColor = Colors.blue;
      dotsList.add(Dot(dotColor: dotColor));
    } else {
      dotColor = Colors.grey;
      dotsList.add(Dot(dotColor: dotColor));
    }
  }

  // ignore: sized_box_for_whitespace
  return Expanded(
    child: Align(
      alignment: const Alignment(0.2, 0.6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: dotsList,
      ),
    ),
  );
}
