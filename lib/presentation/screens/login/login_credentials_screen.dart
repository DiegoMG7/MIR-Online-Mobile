import 'package:flutter/material.dart';
import 'package:mir_mobile/presentation/widgets/widgets.dart';


class LoginCredentials extends StatelessWidget {
  static const String nameRoute = 'login_credentials_screen';
  const LoginCredentials({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Stack(
      clipBehavior: Clip.hardEdge,
      children: [
        Column(
          children: [

            Container(
              width: width,
              height: height * .5,
              color: Theme.of(context).primaryColor,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Flexible(
                      child: Text('Welcome back Daniela valeria',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge)), //Sin el flexible crea un overflow de texto en la pantalla
                ],
              ),
            ),
            Container(
              height: height * .5,
              width: width,
              color: Theme.of(context).canvasColor,
              child: _LoginForm(),
              //child: _LoginForm(),
            ),
          ],
        ),
      Container(
        height: height * .5,
        width: width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/transparencialogin.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      const BackMirButton(route: '/login')
      ]
    );
  }
}

class _LoginForm extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFormField(),
          CustomTextFormField(),
          NextMirButton(
            btnSize: BtnSize.large,
            btnText: Text('WOW', style: Theme.of(context).textTheme.labelLarge),
            btnColor: Theme.of(context).primaryColor,
            routePath: '/login'
          ),
        ]
      ),
    );
  }
}
