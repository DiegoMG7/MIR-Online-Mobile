import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mir_mobile/presentation/providers/intro_provider.dart';

class DotsForCardSlide extends StatelessWidget {
  final int slideIndex;
  final bool isCurrentDot;
  const DotsForCardSlide(
      {super.key, required this.slideIndex, required this.isCurrentDot});

  @override
  Widget build(BuildContext context) {
    final introProvider = context.watch<IntroProvider>();
    final int itemCount = introProvider.slidesList.length;

    List<Dot> dotsList = [];

    for (var i = 0; i < itemCount; i++) {
      dotsList.add(Dot(index: i, isCurrentDot: isCurrentDot));
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: dotsList,
    );
  }
}

class Dot extends StatelessWidget {
  final int index;
  final bool isCurrentDot;
  const Dot({super.key, required this.index, required this.isCurrentDot});

  @override
  Widget build(BuildContext context) {
    if (isCurrentDot == true) {

      return Container(
        margin: const EdgeInsets.all(25.0),
        height: 20,
        width: 20,
        decoration:const BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
        ); 
    } else {
      return Container(
        margin: const EdgeInsets.all(25.0),
        height: 20,
        width: 20,
        decoration:const BoxDecoration(color: Colors.black, shape: BoxShape.circle),
        ); 
    }
  }
}
