import 'package:explicit_animations/part_2/page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

List<Map<String, dynamic>> list = [
  {
    'animation': 'assets/woman.zip',
    'description': 'Encontre o \n que você gosta',
  },
  {
    'animation': 'assets/smartphone.zip',
    'description': 'Faça o seu \n pedido',
  },
  {
    'animation': 'assets/plate.zip',
    'description': 'Bon appetite!',
  },
];

class App2 extends StatelessWidget {
  const App2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: LottieOnboard());
  }
}

class LottieOnboard extends StatefulWidget {
  const LottieOnboard({Key? key}) : super(key: key);

  @override
  State<LottieOnboard> createState() => _LottieOnboardState();
}

class _LottieOnboardState extends State<LottieOnboard> {
  int _curIndex = 0;
  final PageController _controller = PageController(initialPage: 0);

  void changePage(int index) {
    setState(() {
      _curIndex = index;
      _controller.animateToPage(index,
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: _curIndex != 0
            ? IconButton(
                onPressed: () => changePage(_curIndex - 1),
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xFFE83E52),
                ))
            : null,
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                'Pular',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFFE83E52),
                ),
              ),
        )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: size.height * 0.2),
        child: SizedBox(
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _controller,
                  onPageChanged: (value) {
                    _curIndex = value;
                  },
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    _curIndex = index;
                    return Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: LottieBuilder.asset(
                            list[index]['animation'].toString(),
                            width: size.width * 0.8,
                            // fit: BoxFit.fill,
                          ),
                        ),
                        Expanded(
                            flex: 2,
                            child: Text(
                              list[index]['description'],
                              style: const TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ))
                      ],
                    );
                  },
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(bottom: size.height * 0.08),
                child: PageIndicator(pages: list.length, index: _curIndex),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: size.height * 0.03,
                ),
                child: SizedBox(
                  width: size.width * 0.5,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        padding:  MaterialStateProperty.all(EdgeInsets.all(10)),
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xFFE83E52)),
                        shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                        )),
                      ),
                      onPressed: () {
                        if (_curIndex != list.length - 1) {
                          changePage(_curIndex + 1);
                        } else {
                          changePage(0);
                        }
                      },
                      child: const Text('Avançar', style: TextStyle(fontSize: 20),)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
