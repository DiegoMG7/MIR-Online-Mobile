import 'package:flutter/material.dart';
import 'package:mir_mobile/presentation/widgets/slide.dart';

class IntroProvider extends ChangeNotifier {
  List<Slide> slidesList = [
    Slide(index: 0),
    Slide(index: 1),
    Slide(index: 2),
    Slide(index:3)
  ];

  Future <void> sendUpdate() async {


    notifyListeners();
  }

}
