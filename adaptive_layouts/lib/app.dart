import 'dart:io';

import 'package:adaptative_layouts/pages/cupertino_page.dart';
import 'package:adaptative_layouts/pages/material_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return const MaterialApp(home: MaterialAppPage());
    }
    return const CupertinoApp(home: CupertinoAppPage());
  }
}
