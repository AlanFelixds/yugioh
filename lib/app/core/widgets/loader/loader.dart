import 'dart:math';

import 'package:flutter/material.dart';

class Loader extends StatefulWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  State<Loader> createState() => _LoaderState();
}

class _LoaderState extends State<Loader> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animationRoration;
  late Animation<double> animationRadiusIn;
  late Animation<double> animationRadiusOut;

  final double initialRadius = 30.0;
  double radius = 0.0;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(vsync: this, duration: const Duration(seconds: 5));

    animationRoration = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: controller, curve: const Interval(0.0, 1.0, curve: Curves.linear)));

    animationRadiusIn = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.75, 1.0, curve: Curves.elasticIn),
      ),
    );
    animationRadiusOut = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.0, 0.25, curve: Curves.elasticOut),
      ),
    );

    controller.addListener(() {
      setState(() {
        if (controller.value >= 0.75 && controller.value <= 1.0) {
          radius = animationRadiusIn.value * initialRadius;
        } else if (controller.value >= 0.0 && controller.value <= 0.25) {
          radius = animationRadiusOut.value * initialRadius;
        }
      });
    });

    controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0,
      height: 100.0,
      child: Center(
        child: RotationTransition(
          turns: animationRoration,
          child: Stack(
            children: [
              const Dot(radius: 30, color: Colors.black12),
              Transform.translate(
                offset: Offset(radius * cos(pi / 4), radius * sin(pi / 4)),
                child: const Dot(radius: 5, color: Colors.blue),
              ),
              Transform.translate(
                offset: Offset(radius * cos(2 * pi / 4), radius * sin(2 * pi / 4)),
                child: const Dot(radius: 5, color: Colors.pink),
              ),
              Transform.translate(
                offset: Offset(radius * cos(3 * pi / 4), radius * sin(3 * pi / 4)),
                child: const Dot(radius: 5, color: Colors.purple),
              ),
              Transform.translate(
                offset: Offset(radius * cos(4 * pi / 4), radius * sin(4 * pi / 4)),
                child: const Dot(radius: 5, color: Colors.red),
              ),
              Transform.translate(
                offset: Offset(radius * cos(5 * pi / 4), radius * sin(5 * pi / 4)),
                child: const Dot(radius: 5, color: Colors.green),
              ),
              Transform.translate(
                offset: Offset(radius * cos(6 * pi / 4), radius * sin(6 * pi / 4)),
                child: const Dot(radius: 5, color: Colors.yellow),
              ),
              Transform.translate(
                offset: Offset(radius * cos(7 * pi / 4), radius * sin(7 * pi / 4)),
                child: const Dot(radius: 5, color: Colors.indigo),
              ),
              Transform.translate(
                offset: Offset(radius * cos(8 * pi / 4), radius * sin(8 * pi / 4)),
                child: const Dot(radius: 5, color: Colors.teal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Dot extends StatelessWidget {
  final double radius;
  final Color color;
  const Dot({Key? key, required this.radius, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: radius,
        height: radius,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
