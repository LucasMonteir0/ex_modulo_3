import 'package:flutter/material.dart';

class MaterialAppPage extends StatelessWidget {
  const MaterialAppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Ajuda'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 35.0, horizontal: 46),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Como podemos te ajudar?',
                        border: InputBorder.none,
                      ),
                      maxLines: null,
                      minLines: null,
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color?>(
                            Colors.deepPurple),
                      ),
                      child: const Text('Enviar'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
