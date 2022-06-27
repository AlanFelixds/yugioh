import 'package:flutter/material.dart';
import 'package:yugioh/app/core/widgets/card-progress-indicator/card_progress_indicator.dart';

class TestePage extends StatelessWidget {
  const TestePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CardProgressIndicator(),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text("flip"),
            )
          ],
        ),
      ),
    );
  }
}
