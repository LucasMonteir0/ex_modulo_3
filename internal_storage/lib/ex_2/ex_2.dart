import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:internal_storage/ex_2/apod_model.dart';
import 'package:internal_storage/ex_2/apod_repository.dart';

class EX2 extends StatelessWidget {
  const EX2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final apod = ApodRepository();
    return Scaffold(
      backgroundColor: const Color(0XFF0B0D0E),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Text("Today's Image"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: FutureBuilder<ApodModel>(
              future: apod.getApod(),
              builder: (context, snapshot) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: size.height * 0.1),
                    Container(
                      width: size.width * 0.9,
                      height: size.width * 0.70,
                      decoration: const BoxDecoration(
                        color: Color(0XFF17181A),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Image.network(snapshot.data!.imageUrl,
                            fit: BoxFit.contain),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40.0),
                      child: Text(
                        snapshot.data!.text,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Spacer(),
                    ListTile(
                      leading: const Icon(
                        Icons.download,
                        color: Colors.white,
                      ),
                      title: const Text(
                        'Dowloadn Image',
                        style: TextStyle(color: Colors.white),
                      ),
                      tileColor: const Color(0XFF583BE8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onTap: () {},
                    ),
                    const SizedBox(height: 10),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
