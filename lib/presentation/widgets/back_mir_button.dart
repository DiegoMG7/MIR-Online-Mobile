import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BackMirButton extends StatelessWidget {
  
  final String route;
  const BackMirButton({super.key, required this.route});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 40,
        child: IconButton(
          color: Colors.white,
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 42,
          ),
          onPressed: () => context.go(route),
        ));
  }
}
