import 'package:flutter/material.dart';

const Color white = Colors.white;
const Color black = Colors.black;
const Color themeColor = Color(0xff489574);

const double borderRadius = 12;
const double margin = 22;

class ScreenSize {
  double screenHt;
  double screenWt;

  ScreenSize(this.screenHt, this.screenWt);

  double getHt(double ht) {
    return ht * screenHt / 100;
  }

  double getWt(double wt) {
    return wt * screenWt / 100;
  }
}

//initialize it in the beginning to get responsive ht
ScreenSize screenSize;
