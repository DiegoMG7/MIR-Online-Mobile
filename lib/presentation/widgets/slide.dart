import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:mir_mobile/presentation/widgets/dots_for_card_slide.dart';

class Slide extends StatelessWidget {
  Slide({super.key, required this.dotSlider});
  final DotsForCardSlide dotSlider;

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: const Center(
          //este center es para que este en el centro horizontal
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //este center es para que este en el centro de la pantalla
        children: <Widget>[
          Text('Wow'),
          Text('bueno mor'),
        ],
      )),
    );
  }
}
