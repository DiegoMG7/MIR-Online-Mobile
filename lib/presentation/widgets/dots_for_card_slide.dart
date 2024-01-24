import 'package:flutter/material.dart';
import 'package:mir_mobile/presentation/widgets/next_mir_button.dart';

class DotsForCardSlide extends StatelessWidget {
  final int currentDotIndex;
  final int totalDots;
  const DotsForCardSlide({super.key,required this.totalDots,this.currentDotIndex =0}); // en cero para que la primera slide antes de deslizar tenga el Dot correcto

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
      margin: const EdgeInsets.all(10.0),
      height: 20,
      width: 20,
      decoration: BoxDecoration(shape: BoxShape.circle, color: dotColor),
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

  NextMirButton isLastSlide(int currentDotIndex, int totalDots) {
    //para ver si la slide es la ultima en la lista y asi mostrar el boton de Next para avanzar al login screen

    bool isVisible;

    if (currentDotIndex == (totalDots - 1)) {
      isVisible = true;
    } else {
      isVisible = false;
    }

    return NextMirButton(

        btnSize: BtnSize.regular,
        btnVisibility: isVisible,
        btnText: Text('Next', style: Theme.of(context).textTheme.labelLarge),
        btnColor: Theme.of(context).primaryColor,
        btnIcon: const Icon(Icons.arrow_forward_ios, color: Colors.white,),
        routePath: '/login'

    );

  }

  // ignore: sized_box_for_whitespace
  return Expanded(
    child: Column(
      children: [

        Expanded(//este expanded es para mostrar el row de dots
          child: Align(
            alignment: const Alignment(0.2, 0.6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: dotsList,
            ),
          ),
        ),

        Expanded(//este expanded es para mostrar el boton de siguiente
          child: Align(
            alignment: const Alignment(0.8, 0.0),
            child: isLastSlide(currentDotIndex, totalDots),
          ),
        ),
        
      ],
    ),
  );
}
