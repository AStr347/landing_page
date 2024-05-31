import 'package:flutter/material.dart';

const textShadowColor = Color.fromARGB(255, 49, 45, 45);
const feedbackWhite = Color.fromARGB(255, 0xee, 0xee, 0xee);

const textShadows = [
  Shadow(
    offset: Offset(1.5, 1.5),
    blurRadius: 3.0,
    color: textShadowColor,
  ),
  Shadow(
    offset: Offset(1.5, -1.5),
    blurRadius: 3.0,
    color: textShadowColor,
  ),
  Shadow(
    offset: Offset(-1.5, -1.5),
    blurRadius: 3.0,
    color: textShadowColor,
  ),
  Shadow(
    offset: Offset(-1.5, 1.5),
    blurRadius: 3.0,
    color: textShadowColor,
  ),
];

const bigWTextStyle = TextStyle(color: feedbackWhite, fontFamily: "Tahoma", fontSize: 32, shadows: textShadows);
const medWTextStyle = TextStyle(color: feedbackWhite, fontFamily: "Tahoma", fontSize: 24, shadows: textShadows);
