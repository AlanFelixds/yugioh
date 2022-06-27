import 'package:flutter/material.dart';

class CardProgressIndicator extends StatefulWidget {
  const CardProgressIndicator({Key? key}) : super(key: key);

  @override
  State<CardProgressIndicator> createState() => _CardProgressIndicatorState();
}

class _CardProgressIndicatorState extends State<CardProgressIndicator> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  bool isFront = true;
  double pi = 3.1415;
  double verticalDrag = 180;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 300));
  }

  @override
  Widget build(BuildContext context) {
    Image imgBack = Image.asset('assets/images/back3.jpg', width: 30, height: 45);
    Image imgBack2 = Image.asset('assets/images/back1.png', width: 30, height: 45);
    Matrix4 transform = Matrix4.identity()
      ..setEntry(3, 2, 0.001)
      ..rotateY(animation.value);

    return AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return Transform(
            alignment: Alignment.center,
            transform: transform,
            child: isFront
                ? imgBack
                : Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..rotateY(verticalDrag / 180 * pi),
                    child: imgBack2,
                  ),
          );
        });
  }
}
