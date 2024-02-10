import 'package:flutter/material.dart';

const double widthDefault = 390;
const double heightDefault = 856;

extension Responsive on num {
  Size get _screenSize => Size(
        WidgetsBinding
                .instance.platformDispatcher.views.first.physicalSize.width /
            WidgetsBinding
                .instance.platformDispatcher.views.first.devicePixelRatio,
        WidgetsBinding
                .instance.platformDispatcher.views.first.physicalSize.height /
            WidgetsBinding
                .instance.platformDispatcher.views.first.devicePixelRatio,
      );

  double get h => _calc(this, ResponsiveDirection.height);

  double get w => _calc(this, ResponsiveDirection.width);

  double get p => _calc(this, ResponsiveDirection.height);

  double _calc(num value, ResponsiveDirection direction) {
    final double media = direction == ResponsiveDirection.width
        ? _screenSize.width
        : _screenSize.height;

    final double valueDefault =
        direction == ResponsiveDirection.width ? widthDefault : heightDefault;

    final double percent = value / valueDefault;

    return (media * percent).toDouble();
  }
}

enum ResponsiveDirection { height, width }
