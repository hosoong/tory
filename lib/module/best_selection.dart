import 'package:flutter/material.dart';

import 'package:tory/controllers/best_selection_controller.dart';
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
            value: "first",
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

class BestSelection2 extends StatelessWidget {
  BestSelection2({
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
            value: "second",
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

class BestSelection3 extends StatelessWidget {
  BestSelection3({
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
            value: "thrid",
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

class BestSelection4 extends StatelessWidget {
  BestSelection4({
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
            value: "fourth",
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