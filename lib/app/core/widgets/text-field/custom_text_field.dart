import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final double? largura;
  final double? altura;
  final String label;
  final TextEditingController textController;
  const CustomTextField({
    Key? key,
    required this.label,
    required this.textController,
    this.altura,
    this.largura,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: largura ?? 300,
      height: altura ?? 50,
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: label,
        ),
        controller: textController,
      ),
    );
  }
}
