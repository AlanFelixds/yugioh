import 'package:flutter/material.dart';
import 'package:yugioh/app/core/widgets/loader/card_loader.dart';
import 'package:yugioh/app/core/widgets/loader/loader.dart';

class TestePage extends StatefulWidget {
  const TestePage({Key? key}) : super(key: key);

  @override
  State<TestePage> createState() => _TestePageState();
}

class _TestePageState extends State<TestePage> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const CardProgressIndicator(),
            const SizedBox(height: 20),
            isLoading == true ? const LoaderCard() : const SizedBox(),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isLoading = !isLoading;
                });
              },
              child: const Text("flip"),
            ),
            const Loader(),
          ],
        ),
      ),
    );
  }
}
