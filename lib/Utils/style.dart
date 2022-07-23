import 'package:flutter/material.dart';

class Style {
  static BoxDecoration circleContainerBoxDecoration = BoxDecoration(
    color: Colors.black,
    shape: BoxShape.circle,
    border: Border.all(
      color: Colors.orange,
      width: 6,
    ),
  );
  static BoxDecoration upgradeToProBoxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    color: Colors.orange,
  );
  static BoxDecoration logoutContainerBoxDecoration = BoxDecoration(
    color: Colors.black,
    borderRadius: BorderRadius.circular(25),
  );
}
