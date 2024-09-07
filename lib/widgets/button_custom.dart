import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  const ButtonCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all<Color>(Colors.blue),
      ),
      onPressed: () {},
      child: const Text('TextButton'),
    );
  }
}
