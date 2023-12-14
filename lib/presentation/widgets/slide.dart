import 'package:flutter/material.dart';

class Slide extends StatelessWidget {
  const Slide({super.key});
  
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: const  Center(//este center es para que este en el centro horizontal
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center, //este center es para que este en el centro de la pantalla
        children: <Widget>[
          Text('Wow'),
          Text('bueno mor'),
        ],
      )),
    );
  }
}
