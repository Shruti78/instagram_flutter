import 'package:flutter/material.dart';
import 'package:instagram_flutter/utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webscreenLayout;
  final Widget mobilescreenLayout;
  const ResponsiveLayout(
      {Key? key,
      required this.webscreenLayout,
      required this.mobilescreenLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxHeight > webscreensize) {
          // webscreen
          return webscreenLayout;
        }
        // mobilescreen
        return mobilescreenLayout;
      },
    );
  }
}
