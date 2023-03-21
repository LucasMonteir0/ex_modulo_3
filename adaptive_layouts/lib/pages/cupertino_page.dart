import 'package:adaptative_layouts/components/cupertino_assistent_form.dart';
import 'package:adaptative_layouts/components/cupertino_form.dart';
import 'package:flutter/cupertino.dart';

class CupertinoAppPage extends StatelessWidget {
  const CupertinoAppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: CupertinoColors.white,
        navigationBar: CupertinoNavigationBar(
          middle: const Text('Ajuda'),
          leading: CupertinoButton(
              onPressed: () {}, child: const Icon(CupertinoIcons.back)),
        ),
        child: SafeArea(
          child: LayoutBuilder(builder: (context, constrains) {
            if (constrains.maxWidth >= 500) {
              return const CupertinoAssistentForm();
            }
            return const CupertinoForm();
          }),
        ));
  }
}
