import 'package:adaptative_layouts/platform_enum.dart';
import 'package:adaptative_layouts/platform_factory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class App1 extends StatelessWidget {
  const App1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PlatformEnum platform = PlatformEnum.ios;
    return getDesignByPlatform(
        platform: platform,
        home: PrismaHomePage(
          platform: platform,
        ),
        title: 'Prisma');
  }
}

class PrismaHomePage extends StatelessWidget {
  const PrismaHomePage({Key? key, required this.platform}) : super(key: key);

  final PlatformEnum platform;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return platform == PlatformEnum.android
        ? Scaffold(
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
                      child:  Padding(
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
          )
        : CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              backgroundColor: CupertinoColors.lightBackgroundGray,
              middle: const Text('Ajuda'),
              leading: CupertinoButton(
                  onPressed: () {}, child: const Icon(CupertinoIcons.back)),
            ),
            child: SafeArea(
              child: Center(
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
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                      child: CupertinoButton.filled(
                          child: const Text('Enviar'), onPressed: () {}),
                    ),
                  ],
                ),
              ),
            ));
  }
}
