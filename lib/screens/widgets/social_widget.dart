import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialWidget extends StatelessWidget {
  final String imagePath;

  const SocialWidget({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black, // Choose the color of the border
          width:
              0.20, // Adjust the width of the border (1.0 is considered thin)
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: SvgPicture.asset("$imagePath"),
      ),
    );
  }
}
