import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final double? largura;
  final double? altura;
  final String label;
  final VoidCallback onPressed;
  const CustomElevatedButton({
    Key? key,
    this.largura,
    this.altura,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: largura ?? 300,
      height: altura ?? 50,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 20),
                alignment: Alignment.center,
                child: Text(label),
              ),
            ),
            // const Icon(Icons.cached_rounded),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset('assets/images/back3.jpg', width: 30, height: 45),
            ),
          ],
        ),
      ),
    );
  }
}
