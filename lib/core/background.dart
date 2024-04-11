import 'package:flutter/material.dart';

class Backgrund extends Container {
  @override
  // ignore: overridden_fields
  final Widget child;
  Backgrund(this.child, {super.key})
      : super(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background/background.png'),
                  fit: BoxFit.cover)),
          child: child,
        );
}
