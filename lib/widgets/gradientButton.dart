import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  GradientButton(
      {@required this.child,
      this.gradient,
      this.height,
      this.onPressed,
      this.width,
      this.borderRadius});

  final double width, height;
  final Function onPressed;
  final Widget child;
  final Gradient gradient;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: borderRadius,
          gradient: gradient,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.5),
              blurRadius: 1.5,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            child: child,
            onTap: onPressed,
          ),
        ),
      ),
    );
  }
}
