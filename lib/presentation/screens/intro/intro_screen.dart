import 'package:flutter/material.dart';
import 'package:mir_mobile/presentation/providers/intro_provider.dart';
import 'package:provider/provider.dart';

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
    final introProvider = context.watch<IntroProvider>();
/*
    return PageView.builder(
      itemCount: introProvider.slidesList.length,
      itemBuilder: (context, index) {
        return introProvider.slidesList[index];
      },
    );*/

    return PageView(
      children: introProvider.slidesList,
      onPageChanged: (index) {
        //introProvider.slidesList[index] to fix
        //que aqui cambie el value bool del iscurrent
        //print(currentPageIndex);
      },
    );
  }
}
