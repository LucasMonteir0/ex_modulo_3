import 'package:flutter/cupertino.dart';

class CupertinoForm extends StatelessWidget {
  const CupertinoForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding:
            EdgeInsets.symmetric(vertical: 35.0, horizontal: 46),
            child: CupertinoTextField.borderless(
              placeholder: 'Como podemos te ajudar?',
              maxLines: null,
              minLines: null,
              expands: true,
            ),
          ),
          Container(
            width: size.width,
            padding: const EdgeInsets.symmetric(
                horizontal: 16.0, vertical: 8),
            child: CupertinoButton.filled(
                child: const Text('Enviar'), onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
