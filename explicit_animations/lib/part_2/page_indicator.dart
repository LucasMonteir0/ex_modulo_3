import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({Key? key, required this.pages, required this.index}) : super(key: key);

  final int pages;
  final int index;
  @override
  Widget build(BuildContext context) {
    const double size = 13;
    return SizedBox(
      height: size,
      width: (pages.toDouble() * size) + (12 * pages),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: pages,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                  color: index == i ? const Color(0xFFE83E52) : Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1,
                    color: const Color(0xFFE83E52),
                  ),

                ),
              ),
            );
          },
        ));
  }
}
