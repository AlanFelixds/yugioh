import 'package:flutter/material.dart';

class Config extends StatefulWidget {
  final Color? color;
  const Config({Key? key, this.color}) : super(key: key);

  @override
  State<Config> createState() => _ConfigState();
}

class _ConfigState extends State<Config> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: const Duration(seconds: 30));
    controller.forward();

    animation = CurvedAnimation(parent: controller, curve: const Interval(0.0, 1.0, curve: Curves.decelerate));
    // animation = Tween<double>(
    //   begin: 0.0,
    //   end: 1.0,
    // ).animate(CurvedAnimation(parent: controller, curve: const Interval(0.0, 1.0, curve: Curves.decelerate)));

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          color: Colors.red,
          duration: const Duration(seconds: 30),
          child: Hero(
            tag: "tag",
            child: Container(
              width: 200,
              height: 200,
              // width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height,
              color: widget.color ?? Colors.blue[200],
            ),
          ),
        ),
      ),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Center(
  //       child: Hero(
  //         tag: "tag",
  //         child: Container(
  //           width: 200,
  //           height: 200,
  //           // width: MediaQuery.of(context).size.width,
  //           // height: MediaQuery.of(context).size.height,
  //           color: widget.color ?? Colors.blue[200],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
