import 'package:flutter/material.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';

import 'colors.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: background2,
        child: ClipPath(
          clipper: ProsteThirdOrderBezierCurve(
            position: ClipPosition.bottom,
            list: [
              ThirdOrderBezierCurveSection(
                p1: Offset(0, 153),
                p2: Offset(0, 226),
                p3: Offset(MediaQuery.of(context).size.width, 226),
                p4: Offset(MediaQuery.of(context).size.width, 270),
              ),
            ],
          ),
          child: Container(
            height: 200,
            color: Colors.red,
          ),
        )
    );
  }
}
