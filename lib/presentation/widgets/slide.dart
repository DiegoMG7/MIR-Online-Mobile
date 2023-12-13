import 'package:flutter/material.dart';
import 'package:mir_mobile/presentation/widgets/dots_for_card_slide.dart';

class Slide extends StatelessWidget {
  final int index;
  const Slide({super.key, required this.index});

  @override
  Widget build(BuildContext context) {

    bool isCurrentIndex = false;

    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(
          //este center es para que este en el centro horizontal
          child: Column(
        mainAxisAlignment: MainAxisAlignment
            .center, //este center es para que este en el centro de la pantalla
        children: <Widget>[
          Text('Wow'),
          Text('bueno mor'),
          DotsForCardSlide(slideIndex: index, isCurrentDot: isCurrentIndex,),
          //DotsForCardSlide()
        ],
      )),
    );
  }
}
