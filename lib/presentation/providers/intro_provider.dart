import 'package:flutter/material.dart';
import 'package:mir_mobile/presentation/widgets/slide.dart';

class IntroProvider extends ChangeNotifier {
  List<Slide> slidesList = [
    const Slide(),
    const Slide(),
    const Slide(),
  ];

  Future<void> sendUpdate(int index, bool activeState) async {
    notifyListeners();
  }
}
