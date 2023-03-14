import 'package:adaptative_layouts/platform_enum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget getDesignByPlatform(
    {required PlatformEnum platform, required Widget home, required title}) {
  switch (platform) {
    case PlatformEnum.ios:
      return CupertinoApp(home: home, title: title);
    default:
      return MaterialApp(home: home, title: title);
  }
}
