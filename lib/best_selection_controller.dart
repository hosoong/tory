import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BestSelectionController extends GetxController{
  var selectedBest = "".obs;

  onChangeBest(var Best){
    selectedBest.value = Best;
  }
}