import 'package:flutter/material.dart';
import 'package:tory/best_selection_controller.dart';
import 'package:get/get.dart';

class BestSelection extends StatelessWidget {
   BestSelection({
    Key? key,
}) : super(key:key);

  BestSelectionController bestSelectionController =  Get.put(BestSelectionController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 30,
      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: Obx(
          () => Radio(
            value: 1,
            groupValue: bestSelectionController.selectedBest.value,
            onChanged: (value) {
              bestSelectionController.onChangeBest(value);
            },
            activeColor: Colors.green,
          ),
      )
    );
  }
}