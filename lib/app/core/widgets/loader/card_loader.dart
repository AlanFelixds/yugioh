import 'package:flutter/material.dart';

class LoaderCard extends StatefulWidget {
  const LoaderCard({Key? key}) : super(key: key);

  @override
  State<LoaderCard> createState() => _LoaderCardState();
}

class _LoaderCardState extends State<LoaderCard> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animationRotation;
  double pi = 3.1415;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: const Duration(seconds: 2))
      ..forward()
      ..repeat();
    animationRotation = Tween(begin: 0.0, end: 3.0).animate(CurvedAnimation(parent: controller, curve: Curves.linear));

    // repeatOnce();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void repeatOnce() async {
    await controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RotationTransition(
        turns: animationRotation,
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateY(animationRotation.value),
          child: const CardLoader(),
        ),
      ),
    );
    // return Center(
    //   child: TweenAnimationBuilder(
    //     tween: Tween<double>(begin: 0.0, end: 3.1415),
    //     duration: const Duration(seconds: 2),
    //     builder: (context, double value, child) {
    //       return Transform(
    //         alignment: Alignment.center,
    //         transform: Matrix4.identity()
    //           ..setEntry(3, 2, 0.001)
    //           ..rotateY(value),
    //         child: const CardLoader(),
    //       );
    //     },
    //   ),
    // );
  }
}

class CardLoader extends StatelessWidget {
  const CardLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/back3.jpg', width: 30, height: 45);
  }
}
