import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScreenManager
{
  static double _refScreenHeight = 1520;
  static double _refScreenWidth = 720;

  static double _logicalScreenHeight;
  static double _logicalScreenWidth;
  static double screenOffsetHeight;
  static double screenStatusBarHeight;
  static double screenSysNavBarHeight;

  //scree dafa 

  static void initScreenData(Size screenData,EdgeInsets paddingData)
  {
    _logicalScreenHeight = screenData.height - paddingData.vertical;
    _logicalScreenWidth = screenData.width;
    screenStatusBarHeight = paddingData.top;
    screenSysNavBarHeight = paddingData.bottom;

    screenOffsetHeight = screenStatusBarHeight + screenSysNavBarHeight + kBottomNavigationBarHeight;
  }

  static double getWidgetHeight(double h)
  {
    return (h/_refScreenHeight) * _logicalScreenHeight;
  }

  static double getWidgetWidth(double w)
  {
    return (w/_refScreenWidth) * _logicalScreenWidth;
  }
}