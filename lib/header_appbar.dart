import 'package:flutter/material.dart';
import 'package:tripss_app/card_image_list.dart';
import 'package:tripss_app/gradient_back.dart';

class HeaderAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [GradientBack("Welcome"), CardImageList()],
    );
  }
}
