import 'package:flutter/material.dart';
import 'package:mir_mobile/presentation/widgets/next_mir_button.dart';


class LoginScreen extends StatelessWidget {

  static const String nameRoute = 'login_screen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Container(

        decoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
          image: const DecorationImage(
            image: AssetImage('assets/images/transparencialogin.png'),
            fit:BoxFit.cover,
          )
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Spacer(),
            const Image(image: AssetImage('assets/images/cubo.png')),
            const Image(image: AssetImage('assets/images/mironline.png')),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: NextMirButton(btnSize: BtnSize.large, heroTag: 'login btn', btnText: Text('Log in', style: Theme.of(context).textTheme.labelLarge), btnColor: Theme.of(context).primaryColor, routePath: '/loginCredentials'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 80),
              child: NextMirButton(btnSize: BtnSize.large, heroTag: 'signin btn' ,btnText: Text('Sign in', style: Theme.of(context).textTheme.labelLarge), btnColor: Theme.of(context).primaryColor, routePath: '/loginCredentials'),
            ),
            

          ],
        ),
      )
    );

  }

}