import 'package:flutter/material.dart';
import 'package:mir_mobile/presentation/widgets/slide.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _IntroSliderCard(),
    );
  }
}

//Este será el widget para las tarjetas de introduccion que aparecen la primera vez que el usuario abre la aplicacion, antes de iniciar sesion
class _IntroSliderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return PageView(
      children: const <Widget>[
        Slide(slideIndex: 0, 
        totalSlidesNumber: 3, 
        headerText: 'The perfect complement for daily practice', 
        bodyText: 'mironline is a platform that has been developed based on contexts, situations and interactions that will allow you to make the most of the system and technologies to practice the English language in a new way and beyond your textbook.', 
        imagePath: 'assets/images/s1.png',
        ),

        Slide(slideIndex: 1,
         totalSlidesNumber: 3, 
         headerText: 'English in your field of study', 
         bodyText: "mironline offers modules to develop English for the fields of Agriculture, Environment, Construction, Engineering, Computing, Electronics, Economics, Administration, Health Sciences, Humanities and Arts. Enjoy!", 
         imagePath: 'assets/images/s2.png'
         ),

        Slide(slideIndex: 2, 
        totalSlidesNumber: 3, 
        headerText: 'Integrated Skills Activities', 
        bodyText: 'Improve your listening, writing and speaking skills through integrated activities that will be unlocked at the end of each General English unit.', 
        imagePath: 'assets/images/s3.png'
        )
      ],
    );
    
  }
}
