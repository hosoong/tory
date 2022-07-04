import 'package:flutter/material.dart';

//heading
TextStyle headingstyle({double? size, Color? color}) {
  return TextStyle(
    fontSize: size,
    fontFamily: 'Bold',
    color: color,
  );
}


TextStyle subtitlestyle({double? size, Color? color, FontWeight? weight}) {
  return TextStyle(
    fontSize: size,
    fontFamily: 'Regular',
    fontWeight: weight,
    color: color,
  );
}

TextStyle bodystyle = TextStyle(
    fontSize: 18,
    color: Colors.black,
  );

TextStyle titlestyle = TextStyle(
  fontSize: 18,
  color: Colors.black,
  fontWeight: FontWeight.bold,
);