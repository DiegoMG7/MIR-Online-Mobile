import 'package:flutter/material.dart';
import 'package:mir_mobile/presentation/widgets/dots_for_card_slide.dart';

class Slide extends StatelessWidget {

  final int slideIndex;
  final int totalSlidesNumber;
  final String headerText;
  final String imagePath;
  final String bodyText;
  const Slide({super.key, required this.slideIndex, required this.totalSlidesNumber, required this.bodyText, required this.headerText, required this.imagePath});



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column( 
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(10,40,0,50),
            child: Text(headerText, style: Theme.of(context).textTheme.displayLarge),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10,0,10,0),
              child: Text(bodyText, style: Theme.of(context).textTheme.bodyMedium),
            ),
          ),
          Expanded(
            flex: 1,
            child: Image(image: AssetImage(imagePath))
            ),
          DotsForCardSlide(currentDotIndex: slideIndex, totalDots: totalSlidesNumber),
          ],
        ),
    );
  }
}
