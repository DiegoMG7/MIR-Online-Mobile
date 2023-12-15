import 'package:flutter/material.dart';
import 'package:mir_mobile/presentation/widgets/slide.dart';

class IntroProvider extends ChangeNotifier {
  List<Slide> slidesList = [
    const Slide(),
    const Slide(),
  ];

  //dot slider que reciba el index y lo cambie en cada slide pero solo sea un dot slider

  Future<void> updateDotSlider(int index, bool activeState) async {
    notifyListeners();
  }
}
