import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoAssistentForm extends StatelessWidget {
  const CupertinoAssistentForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const CupertinoTextField.borderless(
                  placeholder: 'Código do cliente',
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black26, width: 1),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CupertinoTextField.borderless(
                  placeholder: 'Descrição do pedido',
                ),
                const Spacer(),
                CupertinoButton.filled(
                    child: const Text('Enviar'), onPressed: () {}),
              ],
            ),
          ),
        ),
        Flexible(
          child: Container(),
        ),
      ],
    );
  }
}
