import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//Botón de uso general para avanzar a través de la aplicación, lo hice widget para que se pueda reutilizar a lo largo de todo mir dado que
//durante toda la app se utiliza un boton de next o siguiente, el botón pide parametros de tamáño, texto, su color obteniendolo del tema
// icono si es que aplica, visibilidad más que nada para el tour de slides y el path de la ruta a la que navega cuando se presiona

enum BtnSize { regular, large }
//enum de las rutas

class NextMirButton extends StatelessWidget {
  final BtnSize btnSize;
  final Text btnText;
  final Color btnColor;
  final Icon? btnIcon;
  final String? heroTag;
  final bool btnVisibility;
  final String routePath;

  const NextMirButton(
      {super.key,
      required this.btnSize,
      required this.btnText,
      this.heroTag, // no es más que un identificador, trabajando la pantalla de login que tiene 2 botones como este me saltó un error que al parecer no han arreglado en flutter que si tienes mas de 1 floatingaction button en una pantalla crashea, con esto se arregla
      required this.btnColor,
      required this.routePath,
      this.btnIcon,
      this.btnVisibility = true}
      );

  @override
  Widget build(BuildContext context) {
    return buildMirButton(routePath, btnVisibility, btnColor, btnText, heroTag, btnSize, btnIcon, context);
  }
}

Visibility buildMirButton(String routePath, bool btnVisibility, Color btnColor,Text btnText, String? heroTag, BtnSize btnSize, Icon? btnIcon, BuildContext context) { 

  switch (btnSize) {

    case BtnSize.large:
      return Visibility(
        visible: btnVisibility,
        child: SizedBox(
          width: 350,
          child: FloatingActionButton.extended(
            onPressed: () {
              context.go(routePath);
            },
            heroTag: heroTag,
            backgroundColor: btnColor,
            label: Row(
              children: [
                btnText,
                const SizedBox(width: 5.0),
                Container(
                    child:btnIcon  //El icono esta dentro de un container porque el row no lo acepta directo dentro de la lista de children
                    ), 
              ],
            ),
            elevation: 2.0,
          ),
        ),
      );

    case BtnSize.regular:
      return Visibility(
        visible: btnVisibility,
        child: FloatingActionButton.extended(
          onPressed: () {
            context.go(routePath);
          },
          heroTag: heroTag,
          backgroundColor: btnColor,
          label: Row(
            children: [
              btnText,
              const SizedBox(width: 5.0),
              Container(
                  child:btnIcon
                  ),
            ],
          ),
          elevation: 2.0,
        ),
      );
  }
}
